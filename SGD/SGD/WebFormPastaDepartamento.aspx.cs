using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
namespace SGD
{
    public partial class WebFormPastaDepartamento : System.Web.UI.Page
    {
      public sgdbEntities si = new sgdbEntities();
        public string nome;
        public string ids;
        public int idDept;
        protected void Page_Load(object sender, EventArgs e)
        {
            //var lista = si.pastadepartamento.ToList();
            //foreach (var item in lista)
            //{
            //    nome = item.NomePasta.ToString();
            //    ids = int.Parse(item.idpastadepartamento.ToString());
            //    string idss = ids.ToString();
            //    Sites.Add(new string(nome.ToCharArray()));
            //    id.Add(new string ( idss.ToCharArray()));

            //}
            
        ids= Request.QueryString["id"];
            var buscaid = si.departamento.Where(d => d.GuidMap.Equals(ids)).FirstOrDefault();
           idDept = buscaid.iddepartamento;
        }
        
    

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                string a = Guid.NewGuid().ToString();


                pastadepartamento pd = new Models.pastadepartamento();
                pd.NomePasta = txtNpasta.Text;
                pd.idDepartamento = idDept;
                pd.GuidMap = a;
                pd.idOwner = int.Parse(Session["idu"].ToString());
                pd.DescricaoPasta = txtDescricaoPAstas.Text;
                pd.DataCriada = DateTime.Now;               
                si.pastadepartamento.Add(pd);
                si.SaveChanges();
              
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}