using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
using System.IO;

namespace SGD
{
    public partial class WebFormCadastroEmpresa : System.Web.UI.Page
    {
        sgdbEntities si = new sgdbEntities();

        void cadastrarEmpresa() {
            string filename = txtFile.PostedFile.FileName;
            string extension = txtFile.PostedFile.ContentType;
            byte[] image = new byte[txtFile.PostedFile.ContentLength - 1];

            Instituicao_tb its = new Instituicao_tb()
            {
                Email = txtEmail.Text,
                Extensao = txtExtensao.Text ,
                Localizacao = txtLocalizacao.Text,
                Logo = image,
                Nome = txtNomeEmpresa.Text,
                NUIT = txtNuit.Text,
                Slogan = txtSlogan.Text,
                Telefone = txtContacto.Text

            
            };
            si.Instituicao_tb.Add(its);
            si.SaveChanges();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        string path;
        protected void BtnSalvar_Click(object sender, EventArgs e)
        {
           // cadastrarEmpresa();
            if (FileUpload1.HasFile) {
                 path = "~/App_Data/" + Guid.NewGuid().ToString() + "" + Path.GetExtension(FileUpload1.FileName);
                FileUpload1.SaveAs(MapPath(path));
                System.Web.HttpContext.Current.Server.MapPath(path);

             
            }
        }
    }
}