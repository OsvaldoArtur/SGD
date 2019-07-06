<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDocumentos.aspx.cs" Inherits="SGD.WebFormDocumentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                  <%
                    si = new SGD.Models.sgdbEntities();
                    string idPsa = Request.QueryString["id"];
                    var idpast = si.pastadepartamento.Where(d => d.GuidMap.Equals(idPsa)).FirstOrDefault();
                    var procuranaolidos = si.EnviarDocumentos.Where(d => d.Estado.Equals("Enviado") && d.idPastaDepartamento == idpast.idpastadepartamento).Count();
                    var procuralidos = si.EnviarDocumentos.Where(d => d.Estado.Equals("Respondido") && d.idPastaDepartamento == idpast.idpastadepartamento).Count();

                    var procuranaolidosc = si.Cartas_tb.Where(d => d.Estado.Equals("Enviado") && d.idPastaDepartamento == idpast.idpastadepartamento).Count();
                    var procuralidosc = si.Cartas_tb.Where(d => d.Estado.Equals("Recebido") && d.idPastaDepartamento == idpast.idpastadepartamento).Count();


                %>
    
     <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><%=idpast.NomePasta %>
        <%--<small>Version 2.0</small>--%>
        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li>Pasta Departamento</li>
            <li class="active">Documentos</li>

        </ol>
    </section>
    <br />

    <div class="row">

        <div class="col-lg-6">

            <div class="form-group">
                <button id="btnExpediente" runat="server" onserverclick="btnExpediente_ServerClick" class="btn btn-primary btn-outline-primary btn-block"><i class="icofont icofont-file"></i>Expedientes</button>
            </div>

            <div class="form-group">
  
                <label class="text-dark">Resumo de Expedientes</label>
                <br />
                <label class="text-dark ">Recebidos:</label>
                <label class="label bg-blue"><%=procuranaolidos %></label>
                <br />
                <label class="text-dark ">Respondidos:</label>
                <label class="label bg-blue"><%=procuralidos %></label>
                <br />
            </div>
        </div>
        <div class="col-lg-6">
            <!-- Block level buttons with icon -->
            <div class="form-group">
                <button id="btnCart" onserverclick="btnCart_ServerClick" runat="server" class="btn  btn-info btn-outline-info btn-block"><i class="icofont icofont-email"></i>Cartas</button>

            </div>
            <div class="form-group">
                <label class="text-dark">Resumo de Cartas</label>
                <br />
                <label class="text-dark ">Recebidos:</label>
                <label class="label bg-light-blue"><%=procuranaolidosc %></label>
                <br />
                <label class="text-dark ">Respondidos:</label>
                <label class="label bg-light-blue"><%=procuralidosc %></label>
                <br />
            </div>
        </div>


    </div>


    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <div class="row">

                <div class="col-lg-12">
                    <asp:Panel ID="panelExp" Visible="false" runat="server">
                        <div class="form-horizontal">
                            <div class="col-md-12">
                                <div class="text-center">
                                    <h2 class="text-muted">Expedientes</h2>

                                </div>
                            </div>
                            <div class="col-md-12">

                                <div class="form-group">

                                    <label class="col-sm-2 control-label">Selecionar estado*</label>
                                    <div class="col-sm-2">
                                        <asp:DropDownList ID="dpvalidate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dpvalidate_SelectedIndexChanged" CssClass="form-control ">
                                            <asp:ListItem Selected="True" Text="Recebidos" Value="Recebidos"></asp:ListItem>
                                            <asp:ListItem Selected="False" Text="Respondidos" Value="Respondidos"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                        <asp:Panel ID="panel1" runat="server" Visible="true">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="box box-info">
                                        <div class="box-header with-border">
                                            <div class="box-title">
                                                Expedientes Recebidos
                                            </div>
                                        </div>
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover no-margin">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Cod.</th>
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
                                                                        <td><span class=" label label-success"><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-gray">Novo</a></span></td>
                                                                    </tr>
                                                                    <%} %>
                                                                </tbody>
                                                            </table>
                                                        </div>
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
                                    <div class="box box-info">
                                        <div class="box-header with-border">
                                            <div class="box-title">
                                                Expedientes Respondidos
                                            </div>
                                        </div>
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover no-margin">
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

                            </div>
                        </asp:Panel>

                    </asp:Panel>

                </div>


                <div class="col-lg-12">
                    <asp:Panel ID="panelCarta" Visible="false" runat="server">

                        <div class="form-horizontal">
                            <div class="col-md-12">
                                <div class="text-center">
                                    <h2 class="text-muted">Cartas</h2>

                                </div>
                            </div>
                            <div class="col-md-12">

                                <div class="form-group">

                                    <label class="col-sm-2 control-label">Selecionar estado*</label>
                                    <div class="col-sm-2">
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control form-control-info col-md-2">
                                            <asp:ListItem Selected="True" Text="Recebidos" Value="Recebidos"></asp:ListItem>
                                            <asp:ListItem Selected="False" Text="Respondidos" Value="Respondidos"></asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>


                       

                            <asp:Panel ID="panel3" runat="server" Visible="true">
                                <div class="row">
                  <div class="col-md-12">
                                    <div class="box box-info">
                                        <div class="box-header with-border">
                                            <div class="box-title">
                                                Cartas Recebidas
                                            </div>
                                        </div>
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover no-margin">                                  
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
                                    <div class="box box-info">
                                        <div class="box-header with-border">
                                            <div class="box-title">
                                                Cartas Respondidas
                                            </div>
                                        </div>
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover no-margin">    
              
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
                                                                        var procuradocumentosnaolidos = si.Cartas_tb.Where(d => d.Estado.Equals("Recebido") && d.idPastaDepartamento == idpast.idpastadepartamento).OrderByDescending(a => a.DataCarta).ToList();
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
                        
                    </asp:Panel>
                </div>
            </div>

            </div>
                             <asp:ScriptManager runat="server" ID="smexpediente"></asp:ScriptManager>
        </ContentTemplate>
    </asp:UpdatePanel>






</asp:Content>
