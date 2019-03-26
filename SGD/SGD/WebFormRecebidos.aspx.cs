using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGD
{
    public partial class WebFormRecebidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = Convert.ToInt16(GridView1.SelectedDataKey.Value);
            HttpContext.Current.Response.Redirect("~/WebFormDetalhesExpediente.aspx?index=" + index, false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }
}