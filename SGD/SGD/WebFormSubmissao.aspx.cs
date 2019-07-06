using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using SGD.Models;

namespace SGD
{
    public partial class WebFormSubmissao : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request.QueryString["idsub"]))
            {

                id = Request.QueryString["idsub"];
            }
            else {
                btnSalvar.Enabled = false;
            }
        }
        public sgdbEntities si = new sgdbEntities();
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionStr = ConfigurationManager.ConnectionStrings["sgdbConnectionString"].ConnectionString;



            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                StringBuilder sbCommand;


                    sbCommand = new StringBuilder("Select Nome_completo,Tema,Tipo,Data_Registo,Contacto_Estudante from Submissao_tb where 1 = 1");
                    if (Text1.Text.Trim() != "")
                    {
                        sbCommand.Append(" AND Codigo_Projecto=@idUser");
                        SqlParameter param = new SqlParameter("@idUser", Text1.Text);
                        cmd.Parameters.Add(param);
                        cmd.CommandText = sbCommand.ToString();
                    }
                

               

                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        private byte[] ReadFileBite(HttpPostedFile fObj2)
        {
            byte[] data = new byte[fObj2.ContentLength];
            fObj2.InputStream.Read(data, 0, fObj2.ContentLength);
            return data;
        }
        public string cdsub { get; set; }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            var con = si.Submissao_tb.Count();
            var condt = DateTime.Now.Date.Year;
            string a = Guid.NewGuid().ToString();
            HttpPostedFile upFile = Ficheiro.PostedFile;
            string gh = "UCM" + con + "" + condt;
            try
            {
                Submissao_tb sbm = new Models.Submissao_tb() {
                    Contacto_Estudante = txtContacto.Text,
                    Data_Registo = DateTime.Now,
                    Estado = "NAO", 
                    idCurso = int.Parse(dpCurso.SelectedValue.ToString()),
                    id_Supervisor = int.Parse(DropDownList1.SelectedValue.ToString()),
                    Nome_completo = txtNome_Completo.Text,
                    Tema = txtTema.Text,
                    Tipo = dpTipo.Text,
                    Guidmap = a,
                    Documento = ReadFileBite(upFile),
                    Codigo_Projecto  = gh

                };
                si.Submissao_tb.Add(sbm);
                si.SaveChanges();
                
                cdsub = sbm.Codigo_Projecto;
                msg.Visible = true;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}