using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormSucessoCartas : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public string nome;
        public string extensao;
        public int id;

        SendSmsToCliente enivo = new SendSmsToCliente();
        public string qry2, qry1;
        protected void Page_Load(object sender, EventArgs e)
        {
            si = new Models.sgdbEntities();
            qry1 = Request.QueryString["CodExp"];
            qry2 = Request.QueryString["Cell"];

            enviamensagem(qry1);
        }
        string prefixo = "+258";
        void enviamensagem(string mensagem)
        {
            try
            {
               enivo.EnviaSms(prefixo + qry2, "Bem vindos ao SGE -Sistema de Gestao de Expediente. Entrada do documento nº: " + mensagem + ". Em breve sera enviado uma mensagem da resposta. Obrigado");

            }
            catch (Exception)
            {
              return;
            }
        }
    }
}