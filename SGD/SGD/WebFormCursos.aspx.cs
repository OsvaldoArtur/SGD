using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormCursos : System.Web.UI.Page
    {
        sgdbEntities si = new sgdbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adicionarnovo() {
            try
            {
                string a = Guid.NewGuid().ToString();

                Curso_tb dp = new Models.Curso_tb();
                dp.Curso = txtNomeCurso.Text;
                dp.DescricaoCurso = txtDescricaoCurso.Text;              
                si.Curso_tb.Add(dp);
                si.SaveChanges();
                GridView1.DataBind();
                txtNomeCurso.Text = "";
                txtDescricaoCurso.Text = "";
                
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            adicionarnovo();
        }
    }
}