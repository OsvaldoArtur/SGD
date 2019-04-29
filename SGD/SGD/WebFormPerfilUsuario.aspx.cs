using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;


namespace SGD
{
    public partial class WebFormPerfilUsuario : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();

        public int idu { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            idu = int.Parse(Session["idu"].ToString());

        }
    }
}