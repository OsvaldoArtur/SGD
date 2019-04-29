using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormMailSgd : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public string Assunto { get; set; }
        public string Menssagem { get; set; }
        public DateTime dataEnvio { get; set; }
        public DateTime horaEnvio { get; set; }
        public string Estado { get; set; }

        public int idu { get; set; }

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
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            novoEmail();
        }

        protected void btnDescartar_Click(object sender, EventArgs e)
        {

        }
        protected void novoEmail()
        {
            try
            {
                string a = Guid.NewGuid().ToString();
                int contar = si.DocumentoUsuario_tb.Count();
                var pedidonumero = "UCM710" + "0" + contar.ToString() + "EM";

                DocumentoUsuario_tb dc = new Models.DocumentoUsuario_tb();
                dc.Assunto = txtAssunto.Text;
                dc.GuidMap = a;
                dc.CodigoDocumneto = pedidonumero;
              
                dc.DataEnvio = DateTime.Now;
                dc.Estado = "Enviado";
                dc.HoraEnvio = DateTime.Now.TimeOfDay;
                dc.idPedido = int.Parse(DropDownListTipoPedido.SelectedValue);
                dc.idUserReceiver = int.Parse(DropDownListPara.SelectedValue);
                dc.idUserSender = idu;
                dc.Nota = txtNota.Text;
                si.DocumentoUsuario_tb.Add(dc);
                si.SaveChanges();
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void linkInbox_Click(object sender, EventArgs e)
        {

            PanelEnviados.Visible = false;
            PanelRecebidos.Visible = true;
            PanelComporEmail.Visible = false;
        }

        protected void btnCompor_Click(object sender, EventArgs e)
        {
            PanelRecebidos.Visible = false;
            PanelComporEmail.Visible = true;
        }

        protected void btnEmailEnviado_Click(object sender, EventArgs e)
        {
            PanelEnviados.Visible = true;
            PanelRecebidos.Visible = false;
            PanelComporEmail.Visible = false;
        }
    }
}