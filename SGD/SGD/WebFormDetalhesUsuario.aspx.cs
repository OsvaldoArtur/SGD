using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormDetalhesUsuario : System.Web.UI.Page
    {
        public sgdbEntities si = new sgdbEntities();

        public string idu { get; set; }
        public int idusario { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            idu = Request.QueryString["id"];
            var levaid = si.user.Where(d => d.GuidMap.Equals(idu)).FirstOrDefault();
            idusario = levaid.idUser;
            nomeusuario.InnerText = levaid.NomeUsuario;
        }

        int idDepartamento;
        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (((CheckBox)row.FindControl("CheckBox1")).Checked == true)
                {

                    idDepartamento = int.Parse(row.Cells[0].Text);

                    var proc = si.PermissaoDeparramento_tb.Where(d => d.idDepartamento == idDepartamento && d.idUsuario == idusario).Count();
                    if (proc != 0)
                    {
                        PermissaoDeparramento_tb pt = si.PermissaoDeparramento_tb.Where(d => d.idDepartamento == idDepartamento && d.idUsuario == idusario).FirstOrDefault();
                        pt.Estado = "true";
                        pt.DataRegisto = DateTime.Now;
                        si.SaveChanges();
                    }
                    else
                    {
                        PermissaoDeparramento_tb pt = new PermissaoDeparramento_tb();
                        pt.idDepartamento = idDepartamento;
                        pt.idUsuario = idusario;
                        pt.Estado = "true";
                        pt.DataRegisto = DateTime.Now;
                        si.PermissaoDeparramento_tb.Add(pt);
                        si.SaveChanges();
                    }


                }
                else if (((CheckBox)row.FindControl("CheckBox1")).Checked == false)
                {
                    idDepartamento = int.Parse(row.Cells[0].Text);

                    var proc = si.PermissaoDeparramento_tb.Where(d => d.idDepartamento == idDepartamento && d.idUsuario == idusario).Count();
                    if (proc != 0)
                    {
                        PermissaoDeparramento_tb pt = si.PermissaoDeparramento_tb.Where(d => d.idDepartamento == idDepartamento && d.idUsuario == idusario).FirstOrDefault();
                        pt.Estado = "false";
                        pt.DataRegisto = DateTime.Now;
                        si.SaveChanges();
                    }
                    else
                    {
                        PermissaoDeparramento_tb pt = new PermissaoDeparramento_tb();
                        pt.idDepartamento = idDepartamento;
                        pt.idUsuario = idusario;
                        pt.Estado = "false";
                        pt.DataRegisto = DateTime.Now;
                        si.PermissaoDeparramento_tb.Add(pt);
                        si.SaveChanges();
                    }
                }
            }
        }
    }
}