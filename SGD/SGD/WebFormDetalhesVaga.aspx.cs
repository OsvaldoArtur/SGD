using SGD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGD
{
    public partial class WebFormDetalhesVaga : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();

        public int idu { get; set; }
        public int idtv { get; set; }
        public string thePID { get; set; }
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


            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
            {
                
                 thePID =Request.QueryString["id"];
            }
            abi(thePID);
        }

        void abi(string qy) {
            try
            {
                var bs = si.Vagas_Submissao_tb.Where(d => d.Guidmap == qy).FirstOrDefault();
                idtv = bs.id_vaga_submissao;
            }
            catch (Exception)
            {

                throw;
            }
        }

        void update(int idsub, int idu, string estdado) {
            try
            {
                Submissao_tb ab = si.Submissao_tb.Where(d => d.idSubmissao == idsub).FirstOrDefault();
                ab.id_Secretaria_Confirmacao = idu;
                ab.Data_Submissao = DateTime.Now;
                ab.Estado = estdado;
                si.SaveChanges();
                GridViewCurso.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void GridViewCurso_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "sim")
                {
                    int crow;
                    crow = Convert.ToInt32(e.CommandArgument.ToString());
                    int v = int.Parse( GridViewCurso.Rows[crow].Cells[0].Text);

                    update(v, idu, "Aprovado");
                }
                else if (e.CommandName == "nao")
                {
                    int crow;
                    crow = Convert.ToInt32(e.CommandArgument.ToString());
                    int v = int.Parse(GridViewCurso.Rows[crow].Cells[0].Text);

                    update(v, idu, "Rejeitado");
                }
            }
            catch (Exception)
            {

                throw;
            }
        

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("~/WebFormListaSubmissao.aspx?id=" + thePID + "&status=" + "Aprovado", false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("~/WebFormListaSubmissao.aspx?id=" + thePID + "&status=" + "Rejeitado", false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }
}