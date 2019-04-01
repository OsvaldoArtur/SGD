using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;


namespace SGD
{
    public partial class WebFormNovoExpediente : System.Web.UI.Page
    {
        SendSmsToCliente enivo = new SendSmsToCliente();

        public sgdbEntities si = new sgdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            si = new Models.sgdbEntities();

            //   ClientScript.RegisterStartupScript(this.GetType(), "confirm", "confirm('mensagem')", true);


            if (Session["idu"] != null)
            {
                idu = int.Parse(Session["idu"].ToString());
            }

            else
            {
                Session["idu"] = null;
                HttpContext.Current.Response.Redirect("~/Default.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();

            }
        }
       public int idu;
        string prefixo = "+258";
        void enviamensagem(string mensagem) {
            try
            {
               
             //   enivo.EnviaSms(prefixo + txtContacto.Text, "Entrada do documento nº: " + mensagem);
                enivo.EnviaSms(prefixo + txtContacto.Text, "Bem vindos ao SGE -Sistema de Gestao de Expediente. Entrada do documento nº: " + mensagem + ". Em breve sera enviado uma mensagem da resposta. Obrigado");

            }
            catch (Exception)
            {
                //   enivo.salvarMensagem(prefixo + txtContacto.Text, "Bem vindos ao SGE -Sistema de Gestao de Expediente.  Entrada do documento nº: " + mensagem + ". Em breve sera enviado uma mensagem da resposta. Obrigado", "false");
                return;
            }
        }

        
        public void adicionar() {



            try
            {
                string a = Guid.NewGuid().ToString();

                EnviarDocumentos ev = new EnviarDocumentos
                {
                    Contacto = txtContacto.Text,
                    DataEnvio = DateTime.Now,
                    idPastaDepartamento = int.Parse(txtPasta.SelectedValue),
                    idUsuario = idu,
                    Mensagem = txtDescricao.Text,
                    idCategoria = int.Parse(txtcategoria.SelectedValue),
                    NivelUrgencia = txtUrgencia.Text,
                    Estado = "Enviado",
                    Titulo = txtTitulo.Text,
                    GuidMap = a

                };
                si.EnviarDocumentos.Add(ev);
                si.SaveChanges();
                idEnvio = ev.idEnvio;
                Recebimento();
              //  enviamensagem();

                foreach (HttpPostedFile upFile in FileUpload2.PostedFiles)
                {
                    if (FileUpload2.PostedFiles.Count == 0)
                    {

                    }
                    else
                    {
                        SaveFiles(upFile);
                    }


                }
                lblSucesso.Visible = true;
                lblSucesso.Text = string.Format("{0} Ficheiros Salvos com Sucesso.", FileUpload2.PostedFiles.Count);
                //Response.Write("<Script>alert('Enviado com sucesso....');</Script>");
                Response.Write("Sucessos" + DateTime.Now.Year + "" + idEnvio + "" + txtTitulo.Text);
                //HttpContext.Current.Response.Redirect("~/WebFormInicio.aspx", false);
                //HttpContext.Current.ApplicationInstance.CompleteRequest();

            }
            catch (Exception)
            {

                return;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                int contar = si.EnviarDocumentos.Count();
                var pedidonumero = "UCM710" + "0" + contar.ToString();

                EnviarDocumentos ev = new EnviarDocumentos
                {
                    Contacto = txtContacto.Text,
                    DataEnvio = DateTime.Now,
                    idPastaDepartamento = int.Parse(txtPasta.SelectedValue),
                    idUsuario = idu,
                    Mensagem = txtDescricao.Text,
                    idCategoria = int.Parse(txtcategoria.SelectedValue),
                    NivelUrgencia = txtUrgencia.Text,
                    Estado = "Enviado",
                    Titulo = txtTitulo.Text,
                    GuidMap = a,
                    CodExpediente = pedidonumero
                };
                si.EnviarDocumentos.Add(ev);
                si.SaveChanges();
                idEnvio = ev.idEnvio;
                Recebimento();
               

                foreach (HttpPostedFile upFile in FileUpload2.PostedFiles)
                {
                    if (upFile.ContentLength == 0)
                    {

                    }
                    else {
                        SaveFiles(upFile);
                    }
                   

                }
                lblSucesso.Visible = true;
                lblSucesso.Text = string.Format("{0} Ficheiros Salvos com Sucesso.", FileUpload2.PostedFiles.Count);
                //Response.Write("<Script>alert('Enviado com sucesso....');</Script>");
            //    Response.Write("Sucessos" + DateTime.Now.Year +""+ idEnvio+"" +txtTitulo.Text );
                //HttpContext.Current.Response.Redirect("~/WebFormInicio.aspx", false);
                //HttpContext.Current.ApplicationInstance.CompleteRequest();

              // enviamensagem( ev.CodExpediente);
                
                HttpContext.Current.Response.Redirect("~/WebFormDetalhesExpedienteEnviado.aspx?index=" + ev.GuidMap + "&CodExp=" + ev.CodExpediente +"&Cell=" + txtContacto.Text, false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
            }
            catch (Exception)
            {

                return;
            }
        }

        public int idEnvio { get; set; }
        public int idPasta{ get; set; }
        private void documento()
        {
            try
            {
                documento dc = new Models.documento();
                dc.DateUpload = DateTime.Now.Date;

            }
            catch (Exception)
            {

                throw;
            }
        }
        public int idDocumento { get; set; }
        private void Recebimento() {
            try
            {
                RecebimentoDocumentos re = new RecebimentoDocumentos
                {
                    DataRecebimento = DateTime.Now,
                    idEnvio = idEnvio,
                    idPastaDepartamento = int.Parse(txtPasta.SelectedValue),
                    Informacao = txtDescricao.Text                    
                };
                si.RecebimentoDocumentos.Add(re);
                si.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        private void SaveFiles(HttpPostedFile obj)
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                documentosenviados dc = new documentosenviados();
                dc.Ficheiro = ReadFileBite(obj);
                dc.NomeDocumento = obj.FileName;
                string exts = Path.GetExtension(obj.FileName);
                dc.idEnvio = idEnvio;
                dc.Extensao = exts;
                dc.GuidMap = a;
                dc.Contentype = obj.ContentType;
                si.documentosenviados.Add(dc);
                si.SaveChanges();

            }
            catch (Exception)
            {

                throw;
            }
        }

        private byte[] ReadFileBite(HttpPostedFile fObj2)
        {
            byte[] data = new byte[fObj2.ContentLength];
            fObj2.InputStream.Read(data, 0, fObj2.ContentLength);
            return data;
        }

   
    }
}