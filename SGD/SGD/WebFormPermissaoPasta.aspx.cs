using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormPermissaoPasta : System.Web.UI.Page
    {
     public   sgdbEntities si = new sgdbEntities();

        public int idu { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idu"] != null)
            {
                idu = int.Parse(Session["idu"].ToString());
            }

            else
            {
                Session["idu"] = null;
                HttpContext.Current.Response.Redirect("~/Default.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();

            }

        

        }

        //void prencher() {
        //    TreeView1.Nodes.Clear();

        //    var listardepartamento = si.departamento.ToList();

        //    foreach (var b in listardepartamento) {
        //        TreeNode ab = new TreeNode();
        //        ab.Text = b.NomeDepartamento;
        //        ab.Value = b.iddepartamento.ToString();

        //        var listapastas = si.pastadepartamento.Where(d => d.idDepartamento == b.iddepartamento);
             
        //        foreach (var a in listapastas)
        //        {
        //            TreeNode ch = new TreeNode();
        //            ch.Text = a.NomePasta;
        //            ch.Value = a.idpastadepartamento.ToString();
        //            ab.ChildNodes.Add(ch);
        //        }
              
        //        TreeView1.Nodes.Add(ab);

        //    }
            
            

        //}
   
        protected void btnAtribuir_Click(object sender, EventArgs e)
        {
            //foreach (GridView s in GridView1.Rows[2].ToString()) {

            //}
            //IList<TreeNode> nodesWithChildren = new List<TreeNode>();
        
                //if (node.ChildNodes.Count > 0) nodesWithChildren.Add(node);
        }
        
        protected void TreeView1_TreeNodeCheckChanged(object sender, TreeNodeEventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //foreach (TreeNode child in TreeView1.Nodes) {
            //    if (child.ChildNodes) {
            //        string estado = "true";
            //    } 
            //}
            //foreach (TreeNode node in TreeView1.Nodes)
            //    if (node.Checked == true)
            //    {

            //        string estado = "true";
            //    }
            ///work funciona
            //foreach (GridViewRow row in GridView1.Rows)
            //{
            //    if (((CheckBox)row.FindControl("CheckBox1")).Checked)
            //    {


            //        //      string id =  row.Cells[0].;

            //        //read the label   

            //    }
            //}

            //CheckBox ch;
            //foreach (DataGridItem di in GridView1.Rows) {
            //    ch = (CheckBox)di.FindControl("CheckBox1");
            //    if (ch.Checked == true) {

            //    }


        }

        int idDepartamento;
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
  
        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (((CheckBox)row.FindControl("CheckBox1")).Checked == true)
                {

                    idDepartamento = int.Parse(row.Cells[0].Text);

                    var proc = si.PermissaoDeparramento_tb.Where(d => d.idDepartamento == idDepartamento && d.idUsuario == idu).Count();
                    if (proc != 0)
                    {
                        PermissaoDeparramento_tb pt = si.PermissaoDeparramento_tb.Where(d => d.idDepartamento == idDepartamento && d.idUsuario == idu).FirstOrDefault();
                        pt.Estado = "true";
                        pt.DataRegisto = DateTime.Now;
                        si.SaveChanges();
                    }
                    else
                    {
                        PermissaoDeparramento_tb pt = new PermissaoDeparramento_tb();
                        pt.idDepartamento = idDepartamento;
                        pt.idUsuario = idu;
                        pt.Estado = "true";
                        pt.DataRegisto = DateTime.Now;
                        si.PermissaoDeparramento_tb.Add(pt);
                        si.SaveChanges();
                    }


                }
                else if (((CheckBox)row.FindControl("CheckBox1")).Checked == false)  {
                    idDepartamento = int.Parse(row.Cells[0].Text);

                    var proc = si.PermissaoDeparramento_tb.Where(d => d.idDepartamento == idDepartamento && d.idUsuario == idu).Count();
                    if (proc != 0)
                    {
                        PermissaoDeparramento_tb pt = si.PermissaoDeparramento_tb.Where(d => d.idDepartamento == idDepartamento && d.idUsuario == idu).FirstOrDefault();
                        pt.Estado = "false";
                        pt.DataRegisto = DateTime.Now;
                        si.SaveChanges();
                    }
                    else
                    {
                        PermissaoDeparramento_tb pt = new PermissaoDeparramento_tb();
                        pt.idDepartamento = idDepartamento;
                        pt.idUsuario = idu;
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