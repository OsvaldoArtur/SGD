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


namespace SGD
{
    public partial class WebFormPesquisarExpedientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionStr = ConfigurationManager.ConnectionStrings["sgdbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionStr)) {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                StringBuilder sbCommand = new StringBuilder("Select * from Cartas_tb where 1 = 1");
                if (Text1.Value.Trim() != "") {
                    sbCommand.Append(" AND idCarta=@idUser");
                    SqlParameter param = new SqlParameter("@idUser", Text1.Value);
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
    }
}