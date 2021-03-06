﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
namespace SGD
{
    public partial class Default : System.Web.UI.Page
    {
        sgdbEntities si = new sgdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idu"] = null;
            var contarusuario = si.user.Count();
            if (contarusuario != 0)
            {

            }
            else if (contarusuario == 0) {
                HttpContext.Current.Response.Redirect("~/WebFormRegistration.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
            }
        }
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
                    inputPassword.Text = "";
                    inputUsuario.Text = "";
                }

            }
            catch (Exception e)
            {

                Response.Write("Error no Sistema, contacte o administrador: " + e.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            entrar(inputUsuario.Text, inputPassword.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("~/WebFormRegistration.aspx", false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("~/Login.aspx", false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }
}