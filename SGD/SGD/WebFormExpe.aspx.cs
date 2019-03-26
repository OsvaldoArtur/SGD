using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
using System.Text;
using System.IO;

namespace SGD
{
    public partial class WebFormExpe : System.Web.UI.Page
    {
      public  sgdbEntities si = new sgdbEntities();
        public string Assunto{ get; set; }
        public string Menssagem { get; set; }
        public DateTime dataEnvio { get; set; }
        public DateTime horaEnvio { get; set; }
        public string Estado { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                var leva = si.documentosenviados.Where(d => d.idDocumentosEnviados == 14).FirstOrDefault();
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = leva.Contentype.ToString();
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + leva.NomeDocumento);
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite((byte[])leva.Ficheiro);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
                //Response.End();
    
            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void linkInbox_Click(object sender, EventArgs e)
        {
            PanelRecebidos.Visible = true;
            PanelComporEmail.Visible = false;
        }

        protected void btnDescartar_Click(object sender, EventArgs e)
        {

        }
        protected void novoEmail() {
            try
            {
                DocumentoUsuario_tb dc = new Models.DocumentoUsuario_tb();
                dc.Assunto = txtAssunto.Text;
                dc.CodigoDocumneto = "";
                dc.DataEnvio = DateTime.Now.Date;
                dc.Estado = "Unread";
                dc.HoraEnvio = DateTime.Now.TimeOfDay;
                dc.idPedido = int.Parse(DropDownListTipoPedido.SelectedValue);
                dc.idUserReceiver = int.Parse(DropDownListPara.SelectedValue);
                dc.idUserSender = 1;
                dc.Nota = txtNota.Text;
                si.DocumentoUsuario_tb.Add(dc);
                si.SaveChanges();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            novoEmail();
        }

        protected void btnCompor_Click(object sender, EventArgs e)
        {
            PanelRecebidos.Visible = false;
            PanelComporEmail.Visible = true;
        }
    }
}