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
        int idcart;
        protected void adicionarnovo()
        {
            try
            {

                //string message = "Do you want to submit?";
                //ClientScript.RegisterOnSubmitStatement(this.GetType(), "confirm", "return confirm('" + message + "');");


                string a = Guid.NewGuid().ToString();

                int contar = si.Cartas_tb.Count();

                var pedidonumero = "UCM710" + "0" + contar.ToString();

                Cartas_tb dp = new Models.Cartas_tb();
                dp.NomeRequerente = txtNomeCliente.Text;
                dp.idCurso = int.Parse(txtCurso.SelectedValue);
                dp.Periodo = DropDownListPeriodo.Text;
                dp.CodigoCarta = pedidonumero;
                dp.ContactoCelular = txtContacto.Text;
                dp.AnoLectivo = DropDownList2.Text;
                dp.DataCarta = DateTime.Now;
                dp.Descricao = txtDescr.Text;
                dp.idPedido = int.Parse(txtPedido.SelectedValue);
                dp.idUsuario = idu;
                dp.idPastaDepartamento = int.Parse(txtPasta.SelectedValue);
                dp.Estado = "Enviado";
                dp.GuidMap = a;
                si.Cartas_tb.Add(dp);
                si.SaveChanges();
                idcart = dp.idCarta;
                foreach (HttpPostedFile upFile in FileUpload2.PostedFiles)
                    if (upFile.ContentLength == 0)
                    {

                    }
                    else
                    {
                        SaveFiles(upFile);
                    }

                HttpContext.Current.Response.Redirect("~/WebFormSucessoCartas.aspx?index=" + dp.GuidMap + "&CodExp=" + dp.CodigoCarta + "&Cell=" + txtContacto.Text, false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void SaveFiles(HttpPostedFile obj)
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                Anexos_Cartas_tb dc = new Anexos_Cartas_tb();
                dc.Anexo_Ficheiro = ReadFileBite(obj);
                dc.Anexo_Nome = obj.FileName;
                string exts = Path.GetExtension(obj.FileName);
                dc.idCarta = idcart;
                dc.Anexo_Type  = exts;
                dc.Anexo_GuidMap = a;
                dc.DataAnexo = DateTime.Now;
                dc.idUsuario = idu;
                
                dc.Anexo_Contentype = obj.ContentType;
                si.Anexos_Cartas_tb.Add(dc);
                si.SaveChanges();

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