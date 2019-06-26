using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
namespace SGD
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        public sgdbEntities si = new sgdbEntities();
        public int idu { get; set; }
        //   public int idp { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idu"] != null)
            {
                idu = int.Parse(Session["idu"].ToString());
            }

            else
            {
                Session["idu"] = 0;
                HttpContext.Current.Response.Redirect("~/Index.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();

            }


            dados(idu);
            //condicoes(idu);
            // enableButoes();
            cond(idu);
           // sendPendente();
        }
        
        void sair() {
            Session["idu"] = 0;
            HttpContext.Current.Response.Redirect("~/Index.aspx", false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }


        SendSmsToCliente enivo = new SendSmsToCliente();
        void sendPendente() {

            try
            {
                var procpend = si.Sms_tb.Where(d => d.Estado.Equals("false")).ToList();
            foreach (var item in procpend) {
                    enivo.EnviaSms(item.NumeroTelefone, "Bem vindos ao SGE -Sistema de Gestao de Expediente. Entrada do documento nº: " + item.Mensagem + ". Em breve sera enviado uma mensagem da resposta. Obrigado");
                    Sms_tb ab = si.Sms_tb.Where(s => s.idSms == item.idSms).FirstOrDefault();
                    ab.Estado = "true";
                    si.SaveChanges();
                }
  
                }
                catch (Exception)
                {
                    //   enivo.salvarMensagem(prefixo + txtContacto.Text, "Bem vindos ao SGE -Sistema de Gestao de Expediente.  Entrada do documento nº: " + mensagem + ". Em breve sera enviado uma mensagem da resposta. Obrigado", "false");
                    return;
                }
            
        }
        public string nomess, estado;
        private void cond(int id) {
            try
            {
                var us = si.user.Where(d => d.idUser == id).FirstOrDefault();
                var proc = si.Tipo_usuario_tb.Where(a => a.id_tipo_usuario == us.id_tipo_usuario).FirstOrDefault();

                if (proc.Nome_tipo.Equals("Administrador"))
                {
                    /*Volta*/
                    //      config.Visible = true;
                }
                else if(proc.Nome_tipo.Equals("Simples")) {
                    /*Volta*/
                    //     config.Visible = false;
                }
            }
            catch (Exception)
            {

                return;
            }
        }
        void enableButoes()
        {
            //var leva = si.Condicao_tb.Where(d => d.idUsuario == idu).ToList();

            //foreach (var ab in leva)
            //{
            //    var bu = si.Funcoes_tb.Where(d => d.idFuncao == ab.idFuncao).FirstOrDefault();// si.Menus.Where(d => d.idMenu == ab.idMenu).FirstOrDefault();
            //    nomess = bu.Funcao;
            //    estado = ab.Estado;
            //    foreach (var con in this.Controls)
            //    {

            //        Label label = con as Label;
            //        if (label != null) label.Text = "Found it!";

            //        //if (l.ID == nomess) {
            //        //    l.Enabled = bool.Parse(estado);
            //        //}

            //    }
            //}
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
          //  TimeOfPrice.Text = DateTime.Now.ToLongTimeString();
        }

        //void condicoes(int idUsuario)
        //{
        //    try
        //    {

        //        var leva = si.Condicao_tb.Where(d => d.idUsuario == idUsuario).ToList();

        //        foreach (var ab in leva)
        //        {
        //            var bu = si.Funcoes_tb.Where(d => d.idFuncao == ab.idFuncao).FirstOrDefault();// si.Menus.Where(d => d.idMenu == ab.idMenu).FirstOrDefault();


        //            foreach (Control x in this.Controls)
        //            {
        //                if (x is Label)
        //                {
        //                    ((Label)x).Visible = bool.Parse(ab.Estado);
        //                }
        //            }

        //            string texto = bu.Funcao + ".Visible =" + bool.Parse(ab.Estado);
        //            //if (this.FindControl = bu.Funcao) {
        //            //}
        //            //if (btnPermissoes.ID == bu.NomeMenu)
        //            //{
        //            //    btnPermissoes.Visible = bool.Parse(ab.Estado);
        //            //}
        //            //if (btnAgenda.ID == bu.NomeMenu)
        //            //{
        //            //    btnAgenda.Visible = bool.Parse(ab.Estado);
        //            //}
        //            //if (btnCadastroColaborador.ID == bu.NomeMenu)
        //            //{
        //            //    btnCadastroColaborador.Visible = bool.Parse(ab.Estado);
        //            //}
        //            //if (btnRealizarConsulta.ID == bu.NomeMenu)
        //            //{
        //            //    btnRealizarConsulta.Visible = bool.Parse(ab.Estado);
        //            //}
        //            //if (btnAdicionarUsuario.ID == bu.NomeMenu)
        //            //{
        //            //    btnAdicionarUsuario.Visible = bool.Parse(ab.Estado);
        //            //}

        //        }
        //    }
        //    catch (Exception)
        //    {

        //        return;
        //    }
        //}
        void dados(int ids)
        {
            try
            {
                var nomm = si.user.Where(d => d.idUser == ids).FirstOrDefault();

                nome2.InnerText = nomm.NomeUsuario.ToString();
               nomeUsuario.InnerText = nomm.NomeUsuario.ToString() /*+ " (" + permissao.NomePermisao.ToString() + ")"*/;
            }
            catch (Exception)
            {

                return;
            }
        }
    }
}