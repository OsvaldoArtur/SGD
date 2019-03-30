using System;
using SGD.Models;

namespace SGD
{
   
    public partial class WebFormDetalhesExpedienteEnviado : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public string nome;
        public string extensao;
        public int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            si = new Models.sgdbEntities();
        }
    }
}