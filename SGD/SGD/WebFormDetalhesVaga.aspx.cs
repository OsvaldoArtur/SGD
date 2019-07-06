using SGD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGD
{
    public partial class WebFormDetalhesVaga : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();

        public int idu { get; set; }
        public int idtv { get; set; }
        public string thePID { get; set; }
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


            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
            {
                
                 thePID =Request.QueryString["id"];
            }
            abi(thePID);
        }

        void abi(string qy) {
            try
            {
                var bs = si.Vagas_Submissao_tb.Where(d => d.Guidmap == qy).FirstOrDefault();
                idtv = bs.id_vaga_submissao;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}