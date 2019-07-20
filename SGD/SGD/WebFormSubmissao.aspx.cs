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
      public  string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request.QueryString["idsub"]))
            {

                id = Request.QueryString["idsub"];
            }
            else {
                btnSalvar.Enabled = false;
            }
            verdata();
        }
        public sgdbEntities si = new sgdbEntities();
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }
        void verdata() {
            try
            {
                var dg = si.Vagas_Submissao_tb.Where(d => d.Guidmap.Equals(id)).FirstOrDefault();
                if (DateTime.Today >= dg.Data_fim)
                {
                    Div3.Visible = true;
                    btnSalvar.Enabled = false;
                }
                else
                {
                    
                }
            }
            catch (Exception)
            {

                return;
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
            try
            {
                var dg = si.Vagas_Submissao_tb.Where(d => d.Guidmap.Equals(id)).FirstOrDefault();
            var con = si.Submissao_tb.Count();
            var condt = DateTime.Now.Date.Year;
            string a = Guid.NewGuid().ToString();
            if (Ficheiro.HasFile) {
  HttpPostedFile upFile = Ficheiro.PostedFile;
                    string gh = "UCM" + con + "" + condt;

                    var contas = si.Submissao_tb.Where(d => d.Tema.Equals(txtTema.Text)).Count();
                    if (contas != 0)
                    {
                        Div2.Visible = true;
                        msg.Visible = false;
                        Div1.Visible = false;
                    }
                    else {
                        Submissao_tb sbm = new Models.Submissao_tb()
                        {
                            Contacto_Estudante = txtContacto.Text,
                            Data_Registo = DateTime.Now,
                            Estado = "NAO",
                            idCurso = int.Parse(dpCurso.SelectedValue.ToString()),
                            id_Supervisor = int.Parse(DropDownList1.SelectedValue.ToString()),
                            Nome_completo = txtNome_Completo.Text,

                            id_vaga_submissao = dg.id_vaga_submissao,
                            Tema = txtTema.Text,
                            Tipo = dpTipo.Text,
                            Guidmap = a,
                            Documento = ReadFileBite(upFile),
                            Codigo_Projecto = gh

                        };
                        si.Submissao_tb.Add(sbm);
                        si.SaveChanges();

                        cdsub = sbm.Codigo_Projecto;
                        msg.Visible = true;
                        Div1.Visible = false;
                        Div2.Visible = false;
             

                       
                    }

          
                }
            else
            {
                    Div1.Visible = true;
                    Div2.Visible = false;
                    msg.Visible = false;
                }
          

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}