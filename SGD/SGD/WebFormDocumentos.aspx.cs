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
    public partial class WebFormDocumentos : System.Web.UI.Page
    {
     public sgdbEntities si = new sgdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            si = new Models.sgdbEntities();
        }

        protected void pane2_ServerClick(object sender, EventArgs e)
        {
          
        }

        protected void pane1_ServerClick(object sender, EventArgs e)
        {
        }

        protected void dpvalidate_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dpvalidate.SelectedValue == "Recebidos")
            {

                panel1.Visible = true;
                panel2.Visible = false;
            }
            else if (dpvalidate.SelectedValue == "Respondidos") {
                panel1.Visible = false;
                panel2.Visible = true;
            }
        }

        protected void btnExpediente_ServerClick(object sender, EventArgs e)
        {
            try
            {
                panelExp.Visible = true;
                panelCarta.Visible = false;
            }
            catch (Exception)
            {

                return;
            }
        }

        protected void btnCart_ServerClick(object sender, EventArgs e)
        {
            try
            {
                panelExp.Visible = false ;
                panelCarta.Visible = true;
            }
            catch (Exception)
            {

                return;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Recebidos")
            {

                panel3.Visible = true;
                panel4.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "Respondidos")
            {
                panel3.Visible = false;
                panel4.Visible = true;
            }
        }
    }
}