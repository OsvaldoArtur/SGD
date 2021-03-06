﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGD.Models;
using System.Security.Cryptography;
using System.Text;

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

        string has = "Fr@ncoLu(KY%@m!a01254[]<>*&NSsbzxX";







        String Cri(string passs)
        {
            String decrip = "";
            Byte[] dados = UTF8Encoding.UTF8.GetBytes(passs);
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                Byte[] chave = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(has));
                using (TripleDESCryptoServiceProvider dat = new TripleDESCryptoServiceProvider() { Key = chave, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                {
                    ICryptoTransform tras = dat.CreateEncryptor();
                    byte[] resulta = tras.TransformFinalBlock(dados, 0, dados.Length);
                    decrip = Convert.ToBase64String(resulta, 0, resulta.Length);
                }

            }
            return decrip;
        }
        private void fpermissio( int idDep, int idus) {

            try
            {
                PermissaoDeparramento_tb pt = new PermissaoDeparramento_tb();
                pt.idDepartamento = idDep;
                pt.idUsuario = idus;
                pt.Estado = "true";
                pt.DataRegisto = DateTime.Now;
                si.PermissaoDeparramento_tb.Add(pt);
                si.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex ;
            }
        }
        protected void btnSalvarUsuario_Click(object sender, EventArgs e)
        {
            try
            {
                string a = Guid.NewGuid().ToString();

                user us = new Models.user() {
                    Email = txtEmails.Text,
                    NomeUsuario = txtNomeusuario.Text,
                    GuidMap = a,
                    Senha = txtSenhas.Text,
                    Altura = decimal.Parse(txtAltura.Text),
                    Data_emissao = DateTime.Parse(txtDataEmissao.Text),
                    Data_nascimento = DateTime.Parse(txtDataNascimento.Text),
                    Estado_civil = txtEstadoCivil.Text,
                    idDepartamento = int.Parse(txtDeparta.SelectedValue),
                    id_tipo_usuario = int.Parse(txtTipo.SelectedValue),
                    Local_emissao = txtLocalEmissao.Text,
                    Local_residencia = txtResidencia.Text,
                    Sexo = txtSexo.Text,
                    Naturalidade = txtNaturalidade.Text,
                    N_documento = txtNumeroDocuemtno.Text,
                    Documento = txtDocumento.Text
                
            };
                si.user.Add(us);
                si.SaveChanges();
                fpermissio(int.Parse(txtDeparta.SelectedValue), us.idUser);
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnUsuario_Click(object sender, EventArgs e)
        {
       

        }
        int guiid;
        protected void gdvw1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                
                guiid = int.Parse( gdvw1.SelectedRow.Cells[1] .Text);
                var getid = si.user.Where(d => d.idUser == guiid).FirstOrDefault();
                HttpContext.Current.Response.Redirect("~/WebFormDetalhesUsuario.aspx?id="+ getid.GuidMap, false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}