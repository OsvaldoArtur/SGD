using SGD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGD
{
    public partial class WebFormPrintResultC : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public string nome;
        public string extensao;
        public string codexp;
        public string Nome, Pedido, Ano, Curso, Periodo;
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                codexp = Request.QueryString["CodigoExpe"];
                var proc = si.Cartas_tb.Where(d => d.CodigoCarta.Equals(codexp)).FirstOrDefault();
                Nome = proc.NomeRequerente;
                var ctg = si.Pedidos_tb.Where(s => s.idPedidos == proc.idPedido).FirstOrDefault();
                Pedido = ctg.Pedido;
                var curs = si.Curso_tb.Where(s => s.idCurso == proc.idCurso).FirstOrDefault();
                Curso = curs.Curso;
                Ano = proc.AnoLectivo;
                Periodo = proc.Periodo;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}