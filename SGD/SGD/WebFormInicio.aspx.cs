using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormInicio : System.Web.UI.Page
    {
       public sgdbEntities si = new sgdbEntities();
        public string nome;
        public string id;
        public int idu;

        protected void Page_Load(object sender, EventArgs e)
        {
            // linke.DataBind();
            //var lista = si.departamento.ToList();
            //foreach (var item in lista)
            //{

            //    nome = item.NomeDepartamento.ToString() + item.iddepartamento;
            //    Sites.Add(new string(nome.ToCharArray()));
            //}
            if (Session["idu"] != null)
            {
                idu = int.Parse(Session["idu"].ToString());
            }

            else
            {
                Session["idu"] = null;
                HttpContext.Current.Response.Redirect("~/Default.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();

            }
        }
        public List<string> Sites = new List<string>();

        protected void link_ServerClick(object sender, EventArgs e)
        {
            var href = ((System.Web.UI.HtmlControls.HtmlAnchor)sender).InnerText;
            //string message = idde.ToString();
            //System.Text.StringBuilder sb = new System.Text.StringBuilder();
            //sb.Append("alert('");
            //sb.Append(message);
            //sb.Append("');");
            //ClientScript.RegisterOnSubmitStatement(this.GetType(), "alert", sb.ToString());
            //    var texto = idde.na;
            //var valor = idde;
         

            //HttpContext.Current.Response.Redirect("~/WebFormPastaDepartamento.aspx?id=" + id, false);
            //HttpContext.Current.ApplicationInstance.CompleteRequest();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("~/WebFormExpe.aspx", false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }
}