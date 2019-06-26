using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;


namespace SGD
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idu"] = 0;
        }
        sgdbEntities si = new sgdbEntities();
        void entrar(string emai, string senha)
        {
            try
            {
                var proucra = si.user.Where(d => d.Email.Equals(emai) && d.Senha.Equals(senha)).Count();
                if (proucra == 1)
                {
                    var leva = si.user.Where(d => d.Email.Equals(emai) && d.Senha.Equals(senha)).FirstOrDefault();
                    Session["idu"] = leva.idUser;
                    Session["NomeU"] = leva.NomeUsuario;
                    HttpContext.Current.Response.Redirect("~/WebFormInicio.aspx", false);
                    HttpContext.Current.ApplicationInstance.CompleteRequest();
                }
                else
                {
                    mensages.Visible = true;
                    inputPassword.Value = "";
                    inputUsuario.Value = "";
                }

            }
            catch (Exception e)
            {

                Response.Write("Error no Sistema, contacte o administrador: " + e.Message);
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            entrar(inputUsuario.Value, inputPassword.Value);
        }

        protected void btn_ServerClick(object sender, EventArgs e)
        {
            entrar(inputUsuario.Value, inputPassword.Value);

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            entrar(inputUsuario.Value, inputPassword.Value);
        }
    }
}