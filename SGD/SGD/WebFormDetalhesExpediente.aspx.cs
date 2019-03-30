using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
using System.IO;

namespace SGD
{
    public partial class WebFormDetalhesExpediente : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();
        public string nome;
        public string extensao;
        public int id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void baixar() {
            MemoryStream ms = new MemoryStream();
            TextWriter tw = new StreamWriter(ms);
            tw.WriteLine("YourString");
            tw.Flush();
            byte[] bytes = ms.ToArray();
            ms.Close();
            Response.Clear();
            Response.ContentType = "application/force-download";
            Response.AddHeader("content-disposition", "attachment;  filename=file.txt");
            Response.Write(bytes);
            Response.End();
        }

        protected void btnResponder_Click(object sender, EventArgs e)
        {
            PanelResponder.Visible = true;
        }
    }
}