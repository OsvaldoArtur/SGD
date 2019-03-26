using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;


namespace SGD
{
    public partial class WebFormPedidosCartas : System.Web.UI.Page
    {
        sgdbEntities si = new sgdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adicionarnovo()
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                Pedidos_tb dp = new Models.Pedidos_tb();
                dp.DescricaoPedido  = txtDescricaoPedido.Text;
                dp.Pedido = txtNomePedido.Text;
                si.Pedidos_tb.Add(dp);
                si.SaveChanges();
                GridView1.DataBind();
                txtNomePedido.Text = "";
                txtDescricaoPedido.Text = "";

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