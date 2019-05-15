<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDocumentos.aspx.cs" Inherits="SGD.WebFormDocumentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Documentos</h4>
                            <span class="text-muted">Adicionar Documentos e Lista </span>
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
                                <li class="breadcrumb-item">Documentos
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="">
                        <div class="">
                            <div class="row">
                                <div class="col-md-10">
                                </div>
                                <div class="col-md-2">
                                   
                                </div>
                            </div>
                            <div class=" ">
                                <div class="text-center">
                                    <h2 class="text-muted">Expedintes</h2>
                                </div>
                                  <asp:DropDownList ID="dpvalidate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dpvalidate_SelectedIndexChanged" CssClass="form-control form-control-info col-md-2">
                                        <asp:ListItem Selected="True" Text="Recebidos" Value="Recebidos"></asp:ListItem>
                                        <asp:ListItem Selected="False" Text="Respondidos" Value="Respondidos"></asp:ListItem>

                                    </asp:DropDownList>
                                <br />
                                <ul>


                                    <li>
                                        <asp:Button ID="btnpn1" Visible="false" CssClass="btn-info btn-lg btn" OnClick="pane1_ServerClick" runat="server" Text="Recebidos" />
                                    </li>

                                    <li>
                                        <asp:Button ID="btnpn2" Visible ="false" CssClass="btn-info btn-lg btn" OnClick="pane2_ServerClick" runat="server" Text="Respondidos" />
                                    </li>

                                   
                                </ul>
                            </div>
                        </div>

                    </div>


                    <div class="page-body">
                        <div class="">

                            <asp:Panel ID="panel1" runat="server" Visible="true">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info  business-info services m-b-20">
                                            <div class="card-header">
                                                <div class="service-header">
                                                    <h5 class="card-header-text">Expedientes Recebidos</h5>
                                                    <span>Exepedientes ainda nao lidos</span>

                                                </div>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>
                                                    
                                                </div>
                                            </div>
                                            <div class="card-block">
                                                <div class="row">


                                                    <div class="col-md-12">
                                                        <div class="input-group">
                                                        </div>

                                                    </div>
                                                    <div class="col-sm-12">

                                                        <div class="table-responsive">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>#</th>
                                                                        <th>Titulo</th>
                                                                        <th>Data</th>
                                                                        <th>Nivel</th>
                                                                        <th>Tipo</th>
                                                                        <th>Estado</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                    <%
                                                                        si = new SGD.Models.sgdbEntities();
                                                                        string idsss = Request.QueryString["id"];
                                                                        var idpast = si.pastadepartamento.Where(d => d.GuidMap.Equals(idsss)).FirstOrDefault();
                                                                        var procuradocumentosnaolidos = si.EnviarDocumentos.Where(d => d.Estado.Equals("Enviado") && d.idPastaDepartamento == idpast.idpastadepartamento).OrderByDescending(a => a.DataEnvio).ToList();
                                                                        foreach (var item in procuradocumentosnaolidos)
                                                                        {
                                                                            var cate = si.categoria.Where(s => s.idCategoria == item.idCategoria).FirstOrDefault();

                                                                    %>


                                                                    <tr>
                                                                        <th scope="row"><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.CodExpediente%></a></th>
                                                                        <td><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.Titulo%></a></td>
                                                                        <td><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.DataEnvio%></a></td>
                                                                        <td><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.NivelUrgencia %></a></td>
                                                                        <td><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=cate.NomeCategoria %></a></td>
                                                                        <td><span class=" label label-success"><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-white">Novo</a></span></td>
                                                                    </tr>
                                                                    <%} %>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <!-- end of col-sm-8 -->
                                                </div>
                                                <!-- end of row -->
                                            </div>
                                            <!-- end of card-block -->
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="panel2" runat="server" Visible="false">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info  business-info services m-b-20">
                                            <div class="card-header">
                                                <div class="service-header">
                                                    <h5 class="card-header-text">Expedientes Respondidos</h5>
                                                    <span>Exepedientes lidos</span>
                                                </div>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                            </div>
                                            <div class="card-block">
                                                <div class="row">
                                                    <div class="col-sm-12">

                                                        <div class="table-responsive">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>#</th>
                                                                        <th>Titulo</th>
                                                                        <th>Data</th>
                                                                        <th>Nivel</th>
                                                                        <th>Tipo</th>
                                                                        <th>Estado</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                    <%
                                                                        si = new SGD.Models.sgdbEntities();
                                                                        string idsss = Request.QueryString["id"];
                                                                        var idpast = si.pastadepartamento.Where(d => d.GuidMap.Equals(idsss)).FirstOrDefault();
                                                                        var procuradocumentosnaolidos = si.EnviarDocumentos.Where(d => d.Estado.Equals("Respondido") && d.idPastaDepartamento == idpast.idpastadepartamento).OrderByDescending(a => a.DataEnvio).ToList();
                                                                        foreach (var item in procuradocumentosnaolidos)
                                                                        {
                                                                            var cate = si.categoria.Where(s => s.idCategoria == item.idCategoria).FirstOrDefault();

                                                                    %>


                                                                    <tr>
                                                                        <th scope="row"><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.CodExpediente%></a></th>
                                                                        <td><%=item.Titulo%></td>
                                                                        <td><%=item.DataEnvio%></td>
                                                                        <td><%=item.NivelUrgencia %></td>
                                                                        <td><%=cate.NomeCategoria %></td>
                                                                        <td><span class=" label label-info">Respondido</span></td>
                                                                    </tr>
                                                                    <%} %>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <!-- end of col-sm-8 -->
                                                </div>
                                                <!-- end of row -->
                                            </div>
                                            <!-- end of card-block -->
                                        </div>
                                    </div>
                                </div>

                            </asp:Panel>












                        </div>
                    </div>

                                        <div class="">
                        <div class="">
                            <div class="row">
                                <div class="col-md-10">
                                </div>
                                <div class="col-md-2">
                                   
                                </div>
                            </div>
                            <div class=" ">
                                   <div class="text-center">
                                    <h2 class="text-muted">Cartas</h2>
                                </div>
                                  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dpvalidate_SelectedIndexChanged" CssClass="form-control form-control-info col-md-2">
                                        <asp:ListItem Selected="True" Text="Recebidos" Value="Recebidos"></asp:ListItem>
                                        <asp:ListItem Selected="False" Text="Respondidos" Value="Respondidos"></asp:ListItem>

                                    </asp:DropDownList>
                                <br />
                                <ul>


                                    <li>
                                        <asp:Button ID="Button1" Visible="false" CssClass="btn-info btn-lg btn" OnClick="pane1_ServerClick" runat="server" Text="Recebidos" />
                                    </li>

                                    <li>
                                        <asp:Button ID="Button2" Visible ="false" CssClass="btn-info btn-lg btn" OnClick="pane2_ServerClick" runat="server" Text="Respondidos" />
                                    </li>

                                   
                                </ul>
                            </div>
                        </div>

                    </div>


                    <div class="page-body">
                        <div class="">

                            <asp:Panel ID="panel3" runat="server" Visible="true">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info  business-info services m-b-20">
                                            <div class="card-header">
                                                <div class="service-header">
                                                    <h5 class="card-header-text">Cartas Recebidas</h5>
                                                    <span>Cartas ainda nao lidos</span>

                                                </div>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>
                                                    
                                                </div>
                                            </div>
                                            <div class="card-block">
                                                <div class="row">


                                                    <div class="col-md-12">
                                                        <div class="input-group">
                                                        </div>

                                                    </div>
                                         
                                                    <div class="col-sm-12">

                                                        <div class="table-responsive">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>#</th>
                                                                        <th>Pedido</th>
                                                                        <th>Estudante</th>
                                                                        <th>Data</th>
                                                                   
                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                    <%
                                                                        si = new SGD.Models.sgdbEntities();
                                                                        string idsss = Request.QueryString["id"];
                                                                        var idpast = si.pastadepartamento.Where(d => d.GuidMap.Equals(idsss)).FirstOrDefault();
                                                                        var procuradocumentosnaolidos = si.Cartas_tb.Where(d => d.Estado.Equals("Enviado") && d.idPastaDepartamento == idpast.idpastadepartamento).OrderByDescending(a => a.DataCarta).ToList();
                                                                        foreach (var item in procuradocumentosnaolidos)
                                                                        {
                                                                            var cate = si.Pedidos_tb.Where(s => s.idPedidos == item.idPedido).FirstOrDefault();
                                                                            
                                                                    %>


                                                                    <tr>
                                                                        <th scope="row"><a href="WebFormDetalhesCartas.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.CodigoCarta%></a></th>
                                                                        <td><a href="WebFormDetalhesCartas.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=cate.Pedido%></a></td>
                                                                        <td><a href="WebFormDetalhesCartas.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.NomeRequerente%></a></td>
                                                                        <td><a href="WebFormDetalhesCartas.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.DataCarta %></a></td>
<%--                                                                        <td><span class=" label label-success"><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-white">Novo</a></span></td>--%>
                                                                    </tr>
                                                                    <%} %>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <!-- end of col-sm-8 -->
                                                </div>
                                                <!-- end of row -->
                                            </div>
                                            <!-- end of card-block -->
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="panel4" runat="server" Visible="false">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info  business-info services m-b-20">
                                            <div class="card-header">
                                                <div class="service-header">
                                                    <h5 class="card-header-text">Expedientes Respondidos</h5>
                                                    <span>Exepedientes lidos</span>
                                                </div>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                            </div>
                                            <div class="card-block">
                                                <div class="row">
                                                    <div class="col-sm-12">

                                                        <div class="table-responsive">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>#</th>
                                                                        <th>Titulo</th>
                                                                        <th>Data</th>
                                                                        <th>Nivel</th>
                                                                        <th>Tipo</th>
                                                                        <th>Estado</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                    <%
                                                                        si = new SGD.Models.sgdbEntities();
                                                                        string idsss = Request.QueryString["id"];
                                                                        var idpast = si.pastadepartamento.Where(d => d.GuidMap.Equals(idsss)).FirstOrDefault();
                                                                        var procuradocumentosnaolidos = si.EnviarDocumentos.Where(d => d.Estado.Equals("Respondido") && d.idPastaDepartamento == idpast.idpastadepartamento).OrderByDescending(a => a.DataEnvio).ToList();
                                                                        foreach (var item in procuradocumentosnaolidos)
                                                                        {
                                                                            var cate = si.categoria.Where(s => s.idCategoria == item.idCategoria).FirstOrDefault();

                                                                    %>


                                                                    <tr>
                                                                        <th scope="row"><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.CodExpediente%></a></th>
                                                                        <td><%=item.Titulo%></td>
                                                                        <td><%=item.DataEnvio%></td>
                                                                        <td><%=item.NivelUrgencia %></td>
                                                                        <td><%=cate.NomeCategoria %></td>
                                                                        <td><span class=" label label-info">Respondido</span></td>
                                                                    </tr>
                                                                    <%} %>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <!-- end of col-sm-8 -->
                                                </div>
                                                <!-- end of row -->
                                            </div>
                                            <!-- end of card-block -->
                                        </div>
                                    </div>
                                </div>

                            </asp:Panel>












                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
