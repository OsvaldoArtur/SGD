using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;


namespace SGD
{
    public partial class WebFormDownloadDocument : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public int id;
        public int ids;
        protected void Page_Load(object sender, EventArgs e)
        {
            ids = int.Parse(Request.QueryString["id"]);
            try
            {
                var leva = si.documentosenviados.Where(d => d.idDocumentosEnviados == ids).FirstOrDefault();
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
    }
}