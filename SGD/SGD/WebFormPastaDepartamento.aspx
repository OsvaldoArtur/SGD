<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormPastaDepartamento.aspx.cs" Inherits="SGD.WebFormPastaDepartamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content Header (Page header) -->
   
    <%
                        var gui = Request.QueryString["id"];
                        si = new SGD.Models.sgdbEntities();
                        var LevaNome = si.departamento.Where(d => d.GuidMap.Equals(gui)).FirstOrDefault();

                    %>
    
     <section class="content-header">
        <h1><%=LevaNome.NomeDepartamento %>
        
        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li  class="active">Pasta Departamento </li>

        </ol>
    </section>
    <br />


    <div class="row">
        <div class="col-lg-12">
         
                  <div class="text-right">
                            <a href="#sign-in" data-toggle="modal" data-target="#sign-in"><i class="ion-plus">Nova Pasta</i></a>
                        </div>
           
                                  
                            <% 
                                int idusuario = int.Parse(Session["idu"].ToString());
                                si = new SGD.Models.sgdbEntities();
                                var lista = si.pastadepartamento.Where(d => d.idDepartamento == idDept).ToList();


                                var conta = si.EnviarDocumentos.Where(d => d.idPastaDepartamento == idDept).Count();

                                foreach (var site in lista)
                                {
                                    idDept = site.idDepartamento;

                                    var contou = si.EnviarDocumentos.Where(s => s.idPastaDepartamento == site.idpastadepartamento && s.Estado.Equals("Enviado")).Count();
                                    var contou1 = si.EnviarDocumentos.Where(s => s.idPastaDepartamento == site.idpastadepartamento && s.Estado.Equals("Respondido")).Count();

                            %>
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <a href="WebFormDocumentos.aspx?id=<%=site.GuidMap%>">
                                    <div class="info-box">
                                        <span class="info-box-icon bg-aqua">
                                            <i class="ion-ios-folder-outline"></i></span>

                                        <div class="info-box-content ">
                                         <br />
                                          <% =site.NomePasta %>

                                        </div>
                                     
                                        <!-- /.info-box-content -->
                                    </div>
                                </a>
                            </div>



                            <% }%>
                        


           
        </div>
      
    </div>
    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="sign-in" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="login-card card-block login-card-modal">
                <div class="md-float-material">
                    <div class="text-center">
                        <%--         <img src="assets/images/auth/logo.png" alt="logo.png">--%>
                    </div>
                    <div class="auth-box">
                        <div class="row m-b-20">
                            <div class="col-md-12">
                                <h3 class="text-center txt-primary">Nova Pasta </h3>
                            </div>
                        </div>
                        <hr />
                        <div class="input-group">

                            <asp:TextBox ID="txtNpasta" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Nome da Pasta" runat="server"></asp:TextBox>
                            <span class="md-line"></span>
                        </div>
                        <div class="input-group">

                            <asp:TextBox ID="txtDescricaoPAstas" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Descricao" TextMode="MultiLine" Rows="3" runat="server"></asp:TextBox>
                            <span class="md-line"></span>
                        </div>
                        <%--              <div class="input-group">

                                <asp:TextBox ID="txtDescricaoDepartamento" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao" runat="server"></asp:TextBox>
                                <span class="md-line"></span>
                            </div>--%>

                        <div class="row m-t-15">
                            <div class="col-md-12">

                                <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-primary btn-md btn-block waves-effect text-center" OnClick="btnSalvar_Click" Text="Salvar" />
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-10">
                                <p class="text-inverse text-left m-b-0">@ Osvaldo A. Dionisio</p>
                                <%--          <p class="text-inverse text-left"><b>Your Autentification Team</b></p>--%>
                            </div>
                            <div class="col-md-2">
                                <%-- <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end of form -->
            </div>
        </div>
    </div>


</asp:Content>


