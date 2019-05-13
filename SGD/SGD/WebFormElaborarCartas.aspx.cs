using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormElaborarCartas : System.Web.UI.Page
    {
        public int idu { get; set; }
        sgdbEntities si = new sgdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["idu"] != null)
            {
                idu = int.Parse(Session["idu"].ToString());
            }

            else
            {
                Session["idu"] = 0;
                HttpContext.Current.Response.Redirect("~/Default.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();

            }

       
        }

        private byte[] ReadFileBite(HttpPostedFile fObj2)
        {
            byte[] data = new byte[fObj2.ContentLength];
            fObj2.InputStream.Read(data, 0, fObj2.ContentLength);
            return data;
        }

        protected void adicionarnovo()
        {
            try
            {

                string message = "Do you want to submit?";
                ClientScript.RegisterOnSubmitStatement(this.GetType(), "confirm", "return confirm('" + message + "');");


                string a = Guid.NewGuid().ToString();

                int contar = si.Cartas_tb.Count();

                var pedidonumero = "UCM710" + "0" + contar.ToString(); 

                Cartas_tb dp = new Models.Cartas_tb();
                dp.NomeRequerente = txtNomeCliente.Text;
                dp.idCurso = int.Parse(txtCurso.SelectedValue);
                dp.Periodo = DropDownListPeriodo.Text;
                dp.CodigoCarta = pedidonumero;
                dp.DataCarta = DateTime.Now;
                dp.Descricao = txtDescr.Text;
                dp.idPedido = int.Parse(txtPedido.SelectedValue);
                dp.idUsuario = idu;
                dp.idPastaDepartamento = int.Parse(txtPasta.SelectedValue);
                dp.Estado = "Enviado";
                dp.GuidMap = a;
                dp.Documento1 = ReadFileBite(FileUpload1.PostedFile);
                dp.Documento2 = ReadFileBite(FileUpload2.PostedFile);


                si.Cartas_tb.Add(dp);
                si.SaveChanges();
                //string message = "Dados Salvo com Sucesso!";
                //string script = "window.onload = function(){ alert('";
                //script += message;
                //script += "')};";
                //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                //Response.Redirect("WebFormInicio.aspx");
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Form submitted.');", true);
              //  ScriptManager.RegisterStartupScript(this, this.GetType(), "err_msg", "alert('" + "abe" + "');window.location='WebFormInicio.aspx';", true);
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adicionarnovo();
        }
    }
}