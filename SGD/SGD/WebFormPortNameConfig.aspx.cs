using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormPortNameConfig : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            si = new Models.sgdbEntities();
        }
    }
}