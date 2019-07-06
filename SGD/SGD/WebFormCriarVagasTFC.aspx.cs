using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
namespace SGD
{
    public partial class WebFormCriarVagasTFC : System.Web.UI.Page
    {
        sgdbEntities si = new sgdbEntities();
         public int idu { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idu"] != null)
            {
                idu = int.Parse(Session["idu"].ToString());
            }

            else
            {
                Session["idu"] = 0;
                HttpContext.Current.Response.Redirect("~/Index.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();

            }
        }

        protected void btnSv_Click(object sender, EventArgs e)
        {
            try
            {
                string a = Guid.NewGuid().ToString();
                Vagas_Submissao_tb vst = new Models.Vagas_Submissao_tb() {
                    Ano = int.Parse(DateTime.Now.Year.ToString()),
                    Data_fim = DateTime.Parse(txtDataFim.Text),
                    Data_inicio = DateTime.Parse(txtDataInicio.Text),
                    Descricao = txtDescricao.Text,
                    Estado = "Aberto",
                    Guidmap = a,
                    idOwner = idu,
                    Titulo = txtTitulo .Text


                };
                si.Vagas_Submissao_tb.Add(vst);
                si.SaveChanges();
                gvw1.DataBind();

            }
            catch (Exception)
            {

                throw;
            }
        }
        private int guiid { get; set; }
        protected void gvw1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                guiid = int.Parse(gvw1.SelectedRow.Cells[1].Text);
                var getid = si.Vagas_Submissao_tb.Where(d => d.id_vaga_submissao == guiid).FirstOrDefault();
                HttpContext.Current.Response.Redirect("~/WebFormDetalhesVaga.aspx?id=" + getid.Guidmap, false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}