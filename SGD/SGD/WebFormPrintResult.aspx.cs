using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormPrintResult : System.Web.UI.Page
    {
        public string codexp;
        public sgdbEntities si = new sgdbEntities();
        public string Nome, Pedido, Resposta;
        protected void Page_Load(object sender, EventArgs e)
        {

            codexp = Request.QueryString["CodigoExpe"];
            var proc = si.EnviarDocumentos.Where(d => d.CodExpediente.Equals(codexp)).FirstOrDefault();
            Nome = proc.Titulo;
            var ctg = si.categoria.Where(s => s.idCategoria == proc.idCategoria).FirstOrDefault();
            Pedido = ctg.NomeCategoria;
         

        }
    }
}