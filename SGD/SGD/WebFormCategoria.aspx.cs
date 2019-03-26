using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;


namespace SGD
{
    public partial class WebFormCategoria : System.Web.UI.Page
    {
        sgdbEntities si = new sgdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                categoria ct = new Models.categoria() {
                    DescricaoCategoria = txtDescricaoCategoria.Text,
                    NomeCategoria = txtNomeCategoria.Text
                };
                si.categoria.Add(ct);
                si.SaveChanges();
                GridView1.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}