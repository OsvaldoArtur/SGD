using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;

namespace SGD
{
    public partial class WebFormConfiguracoes : System.Web.UI.Page
    {
public         sgdbEntities si = new sgdbEntities();
        public string PortCOM{ get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        

        protected void btnCursos_Click(object sender, EventArgs e)
        {
           PanelCursos.Visible = true;
            PanelCOM.Visible = false;
            PanelDepartamento.Visible = false;
            PanelCategoria.Visible = false;
            PanelPedidos.Visible = false;

        }

        protected void adicionarnovoCurso()
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                Curso_tb dp = new Models.Curso_tb();
                dp.Curso = txtNomeCurso.Text;
                dp.DescricaoCurso = txtDescricaoCurso.Text;
                si.Curso_tb.Add(dp);
                si.SaveChanges();
                GridViewCurso.DataBind();
                txtNomeCurso.Text = "";
                txtDescricaoCurso.Text = "";

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            adicionarnovoCurso();
        }

        protected void btnDepartamento_Click(object sender, EventArgs e)
        {
            PanelCursos.Visible = false;
            PanelDepartamento.Visible = true;
            PanelCategoria.Visible = false;
            PanelPedidos.Visible = false;
            PanelCOM.Visible = false;
        }

        protected void adicionarnovoDepartamento()
        {
            try
            {
                string a = Guid.NewGuid().ToString();
                departamento dp = new Models.departamento();
                dp.DescricaoDepartamanto = txtDescricaoDepartamento.Text;
                dp.NomeDepartamento = txtNomeDepartamento.Text;
                dp.GuidMap = a;
                si.departamento.Add(dp);
                si.SaveChanges();
                GridViewDepartamento.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnSalvarDepartamento_Click(object sender, EventArgs e)
        {
            adicionarnovoDepartamento();
        }

        protected void btnCategoria_Click(object sender, EventArgs e)
        {

            PanelCursos.Visible = false;
            PanelDepartamento.Visible = false;
            PanelCategoria.Visible = true;
            PanelPedidos.Visible = false;
            PanelCOM.Visible = false;
        }

        protected void btnSalvarCategoria_Click(object sender, EventArgs e)
        {
            try
            {
                categoria ct = new Models.categoria()
                {
                    DescricaoCategoria = txtDescricaoCategoria.Text,
                    NomeCategoria = txtNomeCategoria.Text
                };
                si.categoria.Add(ct);
                si.SaveChanges();
                GridViewCategoria.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void ButtonPedidos_Click(object sender, EventArgs e)
        {

            
            PanelCursos.Visible = false;
            PanelDepartamento.Visible = false;
            PanelCategoria.Visible = false;
            PanelPedidos.Visible = true;
            PanelCOM.Visible = false;
        }
        protected void adicionarnovoPedido()
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                Pedidos_tb dp = new Models.Pedidos_tb();
                dp.DescricaoPedido = txtDescricaoPedido.Text;
                dp.Pedido = txtNomePedido.Text;
                
                si.Pedidos_tb.Add(dp);
                si.SaveChanges();
                GridViewPedidos.DataBind();
                txtNomePedido.Text = "";
                txtDescricaoPedido.Text = "";

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnSalvarpedidos_Click(object sender, EventArgs e)
        {
            adicionarnovoPedido();
        }

        protected void btnCOM_Click(object sender, EventArgs e)
        {

            PanelCursos.Visible = false;
            PanelDepartamento.Visible = false;
            PanelCategoria.Visible = false;
            PanelPedidos.Visible = false;
            PanelCOM.Visible = true;

        }

        protected void btnAddUpdateCOM_Click(object sender, EventArgs e)
        {
            try
            {
                var contar = si.COMConfig_tb.Count();
                if (contar != 0)
                {
                   // var vleva = 
                    COMConfig_tb ab = si.COMConfig_tb.FirstOrDefault();
                    ab.COMConfig = TextBoxCOMSMS.Text;
                    ab.DataAlteracao = DateTime.Now;
                    si.SaveChanges();
                }
                else {
                    COMConfig_tb css = new COMConfig_tb();
                    css.COMConfig = TextBoxCOMSMS.Text;
                    css.DataAlteracao = DateTime.Now;
                    si.COMConfig_tb.Add(css);
                    si.SaveChanges();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnSalvarUsuario_Click(object sender, EventArgs e)
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                user us = new Models.user();
                us.Email = txtEmails.Text;
                us.NomeUsuario = txtNomeusuario.Text;
                us.GuidMap = a;
                us.Senha = txtSenhas.Text;
                si.user.Add(us);
                si.SaveChanges();

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}