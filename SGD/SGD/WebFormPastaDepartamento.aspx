<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormPastaDepartamento.aspx.cs" Inherits="SGD.WebFormPastaDepartamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Pasta Departamento</h4>
                            <span class="text-muted">Adicionar Pasta e Lista </span>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Departamento
                                </li>
                                <li class="breadcrumb-item">Pasta Departamento
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">

                            <%-- <% foreach (var site in Sites)
                                { %>
                            <div class="col-sm-4">
                                <a href="WebFormInicio.aspx">
                                    <div class="card bg-primary large-widget-card">
                                        <div class="card-block-big">
                                            <div>
                                                <h4 class=""><%= site %> </h4>

                                            </div>
                                            <br />
                                            <i class="icofont icofont-ui-clip"></i>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <% } %>--%>


                            <div class="col-lg-12">
                                <div class="card card-border-info">
                                    <div class="card-header">
                                        <%
                                            var gui = Request.QueryString["id"];
                                            si = new SGD.Models.sgdbEntities();
                                            var LevaNome = si.departamento.Where(d => d.GuidMap.Equals(gui)).FirstOrDefault();

                                        %>
                                        <h5><%=LevaNome.NomeDepartamento %> <i class="icofont icofont-2x icofont-folder"></i></h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <%--    <i class="icofont icofont-refresh"></i>--%>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                    </div>

                                    <div class=" row card-block">
                                        <div class="col-sm-12">
                                            <div class="text-right">
                                                <a href="#sign-in" data-toggle="modal" data-target="#sign-in"><i class="ion-plus"> Nova Pasta</i></a>
                                            </div>
                                            <br />
                                            <%--  <ul class="list-view">
                                                <li>--%>
                                            <div class="card user-card">
                                                <div class="card-block">

                                                    <div class="data-table-main icon-list-demo">
                                                        <div class="row">
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
                                                            <div class="col-sm-12 col-md-6 col-lg-4 ">
                                                                <a href="WebFormDocumentos.aspx?id=<%=site.GuidMap%>">


                                                                    <i class="icofont icofont-folder"></i>
                                                                    <label class="txt-muted"><% =site.NomePasta %></label>
                                                                    <label class="badge badge-primary"><%=contou %></label>
                                                                    <label class="badge badge-inverse"><%=contou1 %></label>
                                                                </a>
                                                            </div>

                                                            <% }%>
                                                        </div>

                                                    </div>



                                                </div>
                                            </div>
                                        </div>
                                        <%--    </li>
                                            </ul>--%>
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


