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
    public partial class WebFormSubmissao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public sgdbEntities si = new sgdbEntities();
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionStr = ConfigurationManager.ConnectionStrings["sgdbConnectionString"].ConnectionString;



            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                StringBuilder sbCommand;


                    sbCommand = new StringBuilder("Select Nome_completo,Tema,Tipo,Data_Registo,Contacto_Estudante from Submissao_tb where 1 = 1");
                    if (Text1.Text.Trim() != "")
                    {
                        sbCommand.Append(" AND Codigo_Projecto=@idUser");
                        SqlParameter param = new SqlParameter("@idUser", Text1.Text);
                        cmd.Parameters.Add(param);
                        cmd.CommandText = sbCommand.ToString();
                    }
                

               

                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}