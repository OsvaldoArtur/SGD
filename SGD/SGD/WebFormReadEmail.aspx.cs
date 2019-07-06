using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;


namespace SGD
{
    public partial class WebFormReadEmail : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public int idu { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            idu = int.Parse(Session["idu"].ToString());
        }

        void sb() {
            try
            {
                RespostaDocumentoUsuario_tb ab = new RespostaDocumentoUsuario_tb();
                ab.DataResposta = DateTime.Now;
                var qstrt = Request.QueryString["id"];
                var dis = si.DocumentoUsuario_tb.Where(d => d.GuidMap.Equals(qstrt)).FirstOrDefault();
                ab.idUserResposta = idu;
                ab.Estado = "Nao";
                ab.idDocumentoUser = dis.idDocumentouser;
                dis.Estado = "Respondido";
                ab.Resposta = txtNota.Text;
                si.RespostaDocumentoUsuario_tb.Add(ab);
                si.SaveChanges();
                txtNota.Text = "";
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            sb();
        }
    }
}