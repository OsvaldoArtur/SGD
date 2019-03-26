using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormDepartamentos : System.Web.UI.Page
    {
        sgdbEntities si = new sgdbEntities();
    public string nome;
  
        protected void Page_Load(object sender, EventArgs e)
        {
            //var lista = si.departamento.ToList();
            //foreach  (var item in lista) {
            //    nome = item.NomeDepartamento.ToString();
            //    Sites.Add(new string(nome.ToCharArray()));
            //}
        
        }
        public List<string> Sites = new List<string> ();

        protected void adicionarnovo() {
            try
            {
                string a = Guid.NewGuid().ToString();
                departamento dp = new Models.departamento();
                dp.DescricaoDepartamanto = txtDescricaoDepartamento.Text;
                dp.NomeDepartamento = txtNomeDepartamento.Text;
                dp.GuidMap = a;
                si.departamento.Add(dp);
                si.SaveChanges();
                GridView1.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
}
        protected void adicionar_Click(object sender, EventArgs e)
        {
            adicionarnovo();

        }
    }
}