using SGD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGD
{
    public partial class WebFormDownloadCartas : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public int id;
        public int ids;
        protected void Page_Load(object sender, EventArgs e)
        {

            ids = int.Parse(Request.QueryString["id"]);
            try
            {
                var leva = si.Anexos_Cartas_tb.Where(d => d.idAnexosCartas == ids).FirstOrDefault();
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = leva.Anexo_Contentype.ToString();
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + leva.Anexo_Nome);
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite((byte[])leva.Anexo_Ficheiro);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
                //Response.End();

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}