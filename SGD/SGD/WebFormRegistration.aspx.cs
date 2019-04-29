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
            //    us.Email = txtEmail.Text;
            //    us.NomeUsuario = txtNome.Text;
            //    us.Senha = txtSenha.Text;
            //    us.GuidMap = a;
            //    si.user.Add(us);
            //    si.SaveChanges();
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

        private void fpermissio(int idDep, int idus)
        {

            try
            {
                PermissaoDeparramento_tb pt = new PermissaoDeparramento_tb();
                pt.idDepartamento = idDep;
                pt.idUsuario = idus;
                pt.Estado = "true";
                pt.DataRegisto = DateTime.Now;
                si.PermissaoDeparramento_tb.Add(pt);
                si.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        protected void btnSalvarUsuario_Click(object sender, EventArgs e)
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                user us = new Models.user()
                {
                    Email = txtEmails.Text,
                    NomeUsuario = txtNomeusuario.Text,
                    GuidMap = a,
                    Senha = txtSenhas.Text,
                    Altura = decimal.Parse(txtAltura.Text),
                    Data_emissao = DateTime.Parse(txtDataEmissao.Text),
                    Data_nascimento = DateTime.Parse(txtDataNascimento.Text),
                    Estado_civil = txtEstadoCivil.Text,
                    idDepartamento = int.Parse(txtDeparta.SelectedValue),
                    id_tipo_usuario = int.Parse(txtTipo.SelectedValue),
                    Local_emissao = txtLocalEmissao.Text,
                    Local_residencia = txtResidencia.Text,
                    Sexo = txtSexo.Text,
                    Naturalidade = txtNaturalidade.Text,
                    N_documento = txtNumeroDocuemtno.Text,
                    Documento = txtDocumento.Text

                };
                si.user.Add(us);
                si.SaveChanges();
                fpermissio(int.Parse(txtDeparta.SelectedValue), us.idUser);

                HttpContext.Current.Response.Redirect("~/Default.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}