using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
using System.Security.Cryptography;
using System.Text;

namespace SGD
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idu"] = 0;
        }
        sgdbEntities si = new sgdbEntities();
        byte[] decryptedData;
        byte[] Decrypt(byte[] data, RSAParameters RSAKey, bool fOAEP)
        {
        
            using (RSACryptoServiceProvider rSACryptoServiceProvider = new RSACryptoServiceProvider())
            {
                rSACryptoServiceProvider.ImportParameters(RSAKey);
                decryptedData = rSACryptoServiceProvider.Decrypt(data, fOAEP);
            }
            return decryptedData;
        }
        byte[] encryptData;
        void entrar(string emai, string  senha)
        {
            try
            {
         

                var proucra = si.user.Where(d => d.Email.Equals(emai) && d.Senha.Equals(senha)).Count();
                if (proucra == 1)
                {
                    var leva = si.user.Where(d => d.Email.Equals(emai) && d.Senha.Equals(senha)).FirstOrDefault();

                    //encryptData = unicodeEncoding.GetBytes(leva.Senha);
                    //byte[] data = Decrypt(encryptData, rSACryptoServiceProvider.ExportParameters(false), false);
                    //string senh = unicodeEncoding.GetString(data);

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

 


        UnicodeEncoding unicodeEncoding = new UnicodeEncoding();
        RSACryptoServiceProvider rSACryptoServiceProvider = new RSACryptoServiceProvider();



        protected void btnEntrar_Click(object sender, EventArgs e)
        {
         
            entrar(inputUsuario.Value, inputPassword.Value);
        }
    }
}