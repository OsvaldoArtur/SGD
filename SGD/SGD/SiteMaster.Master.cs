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
                HttpContext.Current.Response.Redirect("~/Default.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();

            }


            dados(idu);
            //condicoes(idu);
            // enableButoes();
       
        }
        
        void sair() {
            Session["idu"] = 0;
            HttpContext.Current.Response.Redirect("~/Default.aspx", false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
        public string nomess, estado;

        void enableButoes()
        {
            var leva = si.Condicao_tb.Where(d => d.idUsuario == idu).ToList();

            foreach (var ab in leva)
            {
                var bu = si.Funcoes_tb.Where(d => d.idFuncao == ab.idFuncao).FirstOrDefault();// si.Menus.Where(d => d.idMenu == ab.idMenu).FirstOrDefault();
                nomess = bu.Funcao;
                estado = ab.Estado;
                foreach (var con in this.Controls)
                {

                    Label label = con as Label;
                    if (label != null) label.Text = "Found it!";

                    //if (l.ID == nomess) {
                    //    l.Enabled = bool.Parse(estado);
                    //}

                }
            }
        }

        void condicoes(int idUsuario)
        {
            try
            {

                var leva = si.Condicao_tb.Where(d => d.idUsuario == idUsuario).ToList();

                foreach (var ab in leva)
                {
                    var bu = si.Funcoes_tb.Where(d => d.idFuncao == ab.idFuncao).FirstOrDefault();// si.Menus.Where(d => d.idMenu == ab.idMenu).FirstOrDefault();


                    foreach (Control x in this.Controls)
                    {
                        if (x is Label)
                        {
                            ((Label)x).Visible = bool.Parse(ab.Estado);
                        }
                    }

                    string texto = bu.Funcao + ".Visible =" + bool.Parse(ab.Estado);
                    //if (this.FindControl = bu.Funcao) {
                    //}
                    //if (btnPermissoes.ID == bu.NomeMenu)
                    //{
                    //    btnPermissoes.Visible = bool.Parse(ab.Estado);
                    //}
                    //if (btnAgenda.ID == bu.NomeMenu)
                    //{
                    //    btnAgenda.Visible = bool.Parse(ab.Estado);
                    //}
                    //if (btnCadastroColaborador.ID == bu.NomeMenu)
                    //{
                    //    btnCadastroColaborador.Visible = bool.Parse(ab.Estado);
                    //}
                    //if (btnRealizarConsulta.ID == bu.NomeMenu)
                    //{
                    //    btnRealizarConsulta.Visible = bool.Parse(ab.Estado);
                    //}
                    //if (btnAdicionarUsuario.ID == bu.NomeMenu)
                    //{
                    //    btnAdicionarUsuario.Visible = bool.Parse(ab.Estado);
                    //}

                }
            }
            catch (Exception)
            {

                return;
            }
        }
        void dados(int ids)
        {
            try
            {
                var nomm = si.user.Where(d => d.idUser == ids).FirstOrDefault();

                //   var permissao = si.Permissoes.Where(d => d.idPermissao == idp).FirstOrDefault();
                nomeUsuario.InnerText = nomm.NomeUsuario.ToString() /*+ " (" + permissao.NomePermisao.ToString() + ")"*/;
            }
            catch (Exception)
            {

                return;
            }
        }
    }
}