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
                        <div class="card-block">


                            <div class="shares-like">
                                <ul>
                                 
                                 
                                    <li>
                                        <asp:Button ID="btnpn1" CssClass="btn-info btn-lg btn" OnClick="pane1_ServerClick" runat="server" Text="Recebidos" />
                                    </li>

                                    <li>
                                        <asp:Button ID="btnpn2" CssClass="btn-info btn-lg btn" OnClick="pane2_ServerClick" runat="server" Text="Respondidos" />
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>


                    <div class="page-body">
                        <div class="">

                            <asp:Panel ID="panel1"  runat="server" Visible="true">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-success  business-info services m-b-20">
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
                                                                  var  idpast = si.pastadepartamento.Where(d => d.GuidMap.Equals(idsss)).FirstOrDefault();
                                                                  var procuradocumentosnaolidos = si.EnviarDocumentos.Where(d=> d.Estado.Equals("Enviado") && d.idPastaDepartamento == idpast.idpastadepartamento ).OrderByDescending(a => a.DataEnvio).ToList();
                                                                  foreach(var item in procuradocumentosnaolidos)
                                                                  {
                                                                      var cate = si.categoria.Where(s => s.idCategoria == item.idCategoria).FirstOrDefault();

                                                                     %>
                                                                

                                                            <tr>
                                                                <th scope="row"><a href="WebFormDetalhesExpediente.aspx?index=<%=item.GuidMap %>" class="text-muted"><%=item.CodExpediente%></a></th>
                                                                <td><%=item.Titulo%></td>
                                                                <td><%=item.DataEnvio%></td>
                                                                <td><%=item.NivelUrgencia %></td>
                                                                  <td><%=cate.NomeCategoria %></td>
                                                                <td><span class=" label label-success">Novo</span></td>
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
                                        <div class="card b-l-success  business-info services m-b-20">
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
                                                                  var  idpast = si.pastadepartamento.Where(d => d.GuidMap.Equals(idsss)).FirstOrDefault();
                                                                  var procuradocumentosnaolidos = si.EnviarDocumentos.Where(d=> d.Estado.Equals("Respondido") && d.idPastaDepartamento == idpast.idpastadepartamento ).OrderByDescending(a => a.DataEnvio).ToList();
                                                                  foreach(var item in procuradocumentosnaolidos)
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
