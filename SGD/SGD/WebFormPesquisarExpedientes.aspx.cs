using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using SGD.Models;


namespace SGD
{
    public partial class WebFormPesquisarExpedientes : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string tipo;
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (rd1.Checked == true)
            {
                tipo = "cartas";
            }

            if (RadioButton1.Checked == true)
            {
                tipo = "expedientes";
            }

            string connectionStr = ConfigurationManager.ConnectionStrings["sgdbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                StringBuilder sbCommand = new StringBuilder("Select CodigoCarta,NomeRequerente,Estado,ContactoCelular from Cartas_tb where 1 = 1");
                if (Text1.Text.Trim() != "")
                {
                    sbCommand.Append(" AND CodigoCarta=@idUser");
                    SqlParameter param = new SqlParameter("@idUser", Text1.Text);
                    cmd.Parameters.Add(param);
                }
                cmd.CommandText = sbCommand.ToString();
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }

        }
  

        protected void Button2_Click(object sender, EventArgs e)
       {

       }

        protected void rd1_CheckedChanged(object sender, EventArgs e)
        {
          
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cod = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        }
    }
}