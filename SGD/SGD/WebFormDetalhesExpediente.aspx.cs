using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
using System.IO;
using System.Net;

namespace SGD
{
    public partial class WebFormDetalhesExpediente : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public string nome;
        public string extensao;
        public int id;
        public int idEnvio, idu;
        public string guidR;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                guidR = Request.QueryString["index"];
                var procu = si.EnviarDocumentos.Where(d => d.GuidMap.Equals(guidR)).FirstOrDefault();
                idEnvio = procu.idEnvio;
                idu = int.Parse(Session["idu"].ToString());
            }
            catch (Exception)
            {

                return;
            }
           
          
        }
        void baixar() {
            MemoryStream ms = new MemoryStream();
            TextWriter tw = new StreamWriter(ms);
            tw.WriteLine("YourString");
            tw.Flush();
            byte[] bytes = ms.ToArray();
            ms.Close();
            Response.Clear();
            Response.ContentType = "application/force-download";
            Response.AddHeader("content-disposition", "attachment;  filename=file.txt");
            Response.Write(bytes);
            Response.End();
        }

        protected void btnResponder_Click(object sender, EventArgs e)
        {
            PanelResponder.Visible = true;
        }
        string prefixo = "+258";
        SendSmsToCliente enivo = new SendSmsToCliente();
        void enviamensagem(string mensagem, string contacto)
        {
            try
            {

                //   enivo.EnviaSms(prefixo + txtContacto.Text, "Entrada do documento nº: " + mensagem);
                enivo.EnviaSms(prefixo + contacto, "Bem vindos ao SGE -Sistema de Gestao de Expediente. Possui uma resposta do documento nº: " + mensagem + ". Queira por favor aproximar a secretaria. Obrigado");
            //    messagesucesso.Visible = true;
            }
            catch (Exception)
            {
                //   enivo.salvarMensagem(prefixo + txtContacto.Text, "Bem vindos ao SGE -Sistema de Gestao de Expediente.  Entrada do documento nº: " + mensagem + ". Em breve sera enviado uma mensagem da resposta. Obrigado", "false");
                return;
            }
        }
        void responder() {
            try
            {
                string a = Guid.NewGuid().ToString();

                RespostaDocumento rd = new Models.RespostaDocumento();
                rd.Comentario = txtComentario.Text;
                rd.DatResposta = DateTime.Now;
                rd.idEnvio = idEnvio;
                rd.Resposta = DropResposta.Text;
                rd.idUsuario = idu;
                rd.GuidMap = a;
                si.RespostaDocumento.Add(rd);

                var ha = si.EnviarDocumentos.Where(d => d.idEnvio == idEnvio).FirstOrDefault();
                ha.Estado = "Respondido";
                si.SaveChanges();
                enviamensagem(ha.CodExpediente, ha.Contacto);
                PanelResponder.Visible = false;
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnResponde_Click(object sender, EventArgs e)
        {
            responder();
        }
    }
}