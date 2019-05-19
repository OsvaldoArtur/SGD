using SGD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGD
{
    public partial class WebFormDetalhesCartas : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public string nome;
        public string extensao;
        public int idCar;
        public int idEnvio, idu;
        public string guidR;
        protected void Page_Load(object sender, EventArgs e)
        {
            guidR = Request.QueryString["index"];
            var procu = si.Cartas_tb.Where(d => d.GuidMap.Equals(guidR)).FirstOrDefault();
            idCar = procu.idCarta ;
            idu = int.Parse(Session["idu"].ToString());

        }

        protected void btnResponde_Click(object sender, EventArgs e)
        {
            PanelResponder.Visible = true;
        }
        string prefixo = "+258";
        SendSmsToCliente enivo = new SendSmsToCliente();
        void enviamensagem(string mensagem, string contacto)
        {
            try
            {

                //   enivo.EnviaSms(prefixo + txtContacto.Text, "Entrada do documento nº: " + mensagem);
                enivo.EnviaSms(prefixo + contacto, "Bem vindos ao SGE -Sistema de Gestao de Expediente. Possui uma resposta do documento nº: " + mensagem + ". Queira por favor aproximar a secretaria. Obrigado");
               // messagesucesso.Visible = true;
            }
            catch (Exception)
            {
                //   enivo.salvarMensagem(prefixo + txtContacto.Text, "Bem vindos ao SGE -Sistema de Gestao de Expediente.  Entrada do documento nº: " + mensagem + ". Em breve sera enviado uma mensagem da resposta. Obrigado", "false");
                return;
            }
        }

        protected void btnResponde_Click1(object sender, EventArgs e)
        {
            responder();
        }

        protected void btnRespondesr_Click(object sender, EventArgs e)
        {
            PanelResponder.Visible = true;
        }

        void responder()
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                RespostaCartas_tb rd = new Models.RespostaCartas_tb();
                rd.idCarta  = idCar;
                rd.DataResposta   = DateTime.Now;
                rd.Nota  = txtComentario.Text;
                rd.Resposta = DropResposta.Text;
                rd.idUsuario = idu;
               // rd.GuidMap = a;
                si.RespostaCartas_tb.Add(rd);

                var ha = si.Cartas_tb.Where(d => d.idCarta == idCar).FirstOrDefault();
                ha.Estado = "Recebido";
                si.SaveChanges();
                enviamensagem(ha.CodigoCarta, ha.ContactoCelular);
                PanelResponder.Visible = false;
            }
            catch (Exception)
            {

                throw;
            }
        }

    }
}