<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDetalhesCartas.aspx.cs" Inherits="SGD.WebFormDetalhesCartas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Report Carta</h4>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio 
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Detalhes Carta 
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            
                            <div class="col-lg-12">
                                <asp:Panel ID="PanelResponder" Visible="false" runat="server">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="card b-l-info business-info services m-b-20">
                                                <div class="card-header">
                                                    <div class="card-header-right">
                                                        <i class="icofont icofont-rounded-down"></i>
                                                        <i class="icofont icofont-close-circled"></i>

                                                    </div>
                                                    <div class="service-header">
                                                        <a>
                                                            <h5 class="card-header-text">Resposta <i class="icofont icofont-2x icofont-attachment"></i></h5>
                                                            <span class="text-muted">A resposta do expediente deve ser acompanhada de um comentario. </span>

                                                        </a>
                                                    </div>

                                                </div>
                                                <div class="card-block">
                                                    <div class="">
                                                        <div class="form-group row">
                                                            <div class="col-sm-2 col-form-label">
                                                                <label class="text-center">Resposta do Expediente: </label>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <asp:DropDownList ID="DropResposta" CssClass="form-control form-control-info" runat="server">
                                                                    <asp:ListItem>Deferido</asp:ListItem>
                                                                    <asp:ListItem>Indeferido</asp:ListItem>
                                                                    <asp:ListItem>Autorizado</asp:ListItem>
                                                                    <asp:ListItem>Nao Autorizado</asp:ListItem>
                                                                    <asp:ListItem>Em analise</asp:ListItem>
                                                                </asp:DropDownList>

                                                            </div>
                                                            <div class="col-sm-6">
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="col-sm-12">
                                                                <asp:TextBox ID="txtComentario" ValidateRequestMode="Enabled" runat="server" Placeholder="Comentarios..." CssClass="form-control form-control-info" TextMode="MultiLine" Rows="6">

                                                                </asp:TextBox>

                                                            </div>
                                                            <div class="col-sm-6">
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">

                                                            <div class=" col-lg-12">
                                                                <div class=" text-right">

                                                                    <asp:Button ID="btnResponde" CssClass=" btn btn-info" OnClick="btnResponde_Click1" runat="server" Text="Responder" />
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <!-- end of col-sm-8 -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>
                            </div>

                            <div class="col-lg-12">
                                <div runat="server" visible="false" class="alert alert-success">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <i class="icofont icofont-close-line-circled"></i>
                                    </button>
                                    <strong>Sucesso!</strong> Submetido com sucesso! <code></code>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="card card-border-info">
                                    <div class="card-header">
                                        <h5>Carta Info. <i class="icofont icofont-2x icofont-send-mail"></i></h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                    </div>

                                    <div class=" row card-block">
                                        <div class="col-sm-12">
                                            <div class="view-info">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="general-info">
                                                            <div class="row">
                                                                <div class="col-lg-12 col-xl-6">
                                                                    <table class="table m-0">
                                                                        <%

                                                                            si = new SGD.Models.sgdbEntities();
                                                                            string idP = Request.QueryString["index"];
                                                                            var leva = si.Cartas_tb.Where(d => d.GuidMap.Equals(idP)).FirstOrDefault();

                                                                            var usuario = si.user.Where(s => s.idUser == leva.idUsuario).FirstOrDefault();
                                                                            string Nome = usuario.NomeUsuario.ToString();
                                                                            var cusreq = si.Curso_tb.Where(d => d.idCurso == leva.idCurso).FirstOrDefault();
                                                                            var reqped = si.Pedidos_tb.Where(d => d.idPedidos == leva.idPedido).FirstOrDefault();
                                                                        %>
                                                                        <tbody>
                                                                            <tr>
                                                                                <th scope="row">Requerente:</th>
                                                                                <td><%=leva.NomeRequerente %></td>
                                                                            </tr>
                                                                            <tr>

                                                                                <th scope="row">Curso:</th>
                                                                                <td><%=cusreq.Curso %></td>
                                                                            </tr>

                                                                            <tr>
                                                                                <th scope="row">Ano:</th>
                                                                                <td><%=leva.AnoLectivo %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th scope="row">Periodo:</th>
                                                                                <td><%=leva.Periodo %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th scope="row">Pedido:</th>
                                                                                <td><%=reqped.Pedido %></td>
                                                                            </tr>

                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="col-lg-12 col-xl-6">
                                                                    <table class="table m-0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <th scope="row">Enviante:</th>
                                                                                <td><%=Nome %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th scope="row">Estado:</th>
                                                                                <td><%=leva.Estado %></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th scope="row">Data Enviada:</th>
                                                                                <td><%=leva.DataCarta  %></td>
                                                                            </tr>

                                                                            <tr>
                                                                                <th scope="row">Codigo Carta:</th>
                                                                                <td><%=leva.CodigoCarta  %></td>
                                                                            </tr>

                                                                            <tr>
                                                                                <th scope="row">Guid:</th>
                                                                                <td><%=leva.GuidMap %></td>
                                                                            </tr>
                                                                                 <tr>
                                                                                <th scope="row"></th>
                                                                                <td>
                                                                                    <div class="text-right">
                                                                                        <asp:LinkButton ID="btnRespondesr" OnClick="btnRespondesr_Click" CssClass="btn btn-info" runat="server" Text="Responder" />
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
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
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info business-info services m-b-20">
                                            <div class="card-header">
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                                <div class="service-header">
                                                    <a>
                                                        <h5 class="card-header-text">Mensagem <i class="icofont icofont-2x icofont-inbox"></i></h5>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="card-block">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <p class="task-detail" style="font-size: larger"><%=leva.Descricao %></p>
                                                    </div>
                                                    <!-- end of col-sm-8 -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info business-info services m-b-20">
                                            <div class="card-header">
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                                <div class="service-header">
                                                    <a>
                                                        <h5 class="card-header-text">Documentos <i class="icofont icofont-2x icofont-document-folder"></i></h5>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="card-block">
                                                <div class="row">
                                                    <div style="overflow: scroll" class="col-lg-12">
                                                        <div class="col-lg-6 col-md-12">
                                                            <div>
                                                                <table class="table table-striped table-bordered nowrap">
                                                                    <%

                                                                        si = new SGD.Models.sgdbEntities();
                                                                        var proc = si.Anexos_Cartas_tb.Where(d => d.idCarta == leva.idCarta).ToList();
                                                                        foreach (var an in proc)
                                                                        {

                                                                    %>
                                                                    <tr>
                                                                        <th class="social-label b-none p-t-0"><i class="icofont icofont-2x icofont-document-folder"></i>
                                                                        </th>
                                                                        <td class="social-user-name b-none p-t-0 text-muted"><%=an.Anexo_Nome  %></td>
                                                                        <td class="social-user-name b-none p-t-0 text-muted"><%=an.Anexo_Type %></td>
                                                                        <td class="social-user-name b-none p-t-0 text-muted"><%=an.Anexo_Contentype %></td>
                                                                        <td class="social-user-name b-none p-t-0 text-muted"><a href="WebFormDownloadCartas.aspx?id=<%=an.idAnexosCartas%>" target="_blank">Download</a></td>

                                                                    </tr>

                                                                    <%    }
                                                                    %>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <%--  --%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card b-l-info business-info services m-b-20">
                                            <div class="card-header">
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                                <div class="service-header">
                                                    <a>
                                                        <h5 class="card-header-text">Respostas <i class="icofont icofont-2x icofont-question"></i></h5>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="card-block">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="table-responsive">
                                                            <table class="table table-styling">
                                                                <thead>
                                                                    <tr class="table-primary">
                                                                        <th>#</th>
                                                                        <th>Resposta</th>
                                                                        <th>Nota</th>
                                                                        <th>Cc</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%
                                                                        si = new SGD.Models.sgdbEntities();
                                                                        string idsss = Request.QueryString["index"];
                                                                        var cartrespo = si.Cartas_tb.Where(d => d.GuidMap.Equals(idsss)).FirstOrDefault();
                                                                        var procurarespostas = si.RespostaCartas_tb.Where(d => d.idCarta == cartrespo.idCarta).OrderByDescending(a => a.DataResposta).ToList();
                                                                        foreach (var item in procurarespostas)
                                                                        {
                                                                            var cate = si.user.Where(s => s.idUser == item.idUsuario).FirstOrDefault();

                                                                    %>


                                                                    <tr>
                                                                        <th scope="row"><%=item.DataResposta %></th>
                                                                        <td><%=item.Resposta %></td>
                                                                        <td><%=item.Nota %></td>
                                                                        <td>@<%=cate.NomeUsuario %></td>

                                                                        <%--<td class="social-user-name b-none p-t-0 text-muted"><a href="WebFormDownloadAnexo.aspx?id=<%=item.idResposta%>" target="_blank">Anexo</a></td>--%>
                                                                    </tr>
                                                                    <%} %>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <!-- end of col-sm-8 -->
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
        </div>
    </div>
</asp:Content>
