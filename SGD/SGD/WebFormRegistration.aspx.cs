using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormRegistration : System.Web.UI.Page
    {
        sgdbEntities si = new sgdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void registro() {
            try
            {
                string a = Guid.NewGuid().ToString();
                user us = new user();
                us.Email = txtEmail.Text;
                us.NomeUsuario = txtNome.Text;
                us.Senha = txtSenha.Text;
                us.GuidMap = a;
                si.user.Add(us);
                si.SaveChanges();
            }
            catch (Exception)
            {

                return;
            }
        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            registro();
            HttpContext.Current.Response.Redirect("~/Default.aspx", false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }
}