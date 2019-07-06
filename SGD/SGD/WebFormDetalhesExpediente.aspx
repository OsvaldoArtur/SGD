<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDetalhesExpediente.aspx.cs" Inherits="SGD.WebFormDetalhesExpediente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>Navegacao

        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li class="active">Detalhes do Expediente</li>
        </ol>
    </section>
    <br />
    <div class="row">

        <div class="col-lg-12">
            <asp:Panel ID="PanelResponder" Visible="false" runat="server">

                <div class="box box-info">
                    <div class="box-header with-border">
                        <div class="box-title">
                            Resposta   
                        </div>
                        <br />
                        <span class="text-muted">A resposta do expediente deve ser acompanhada de um comentario. </span>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                <i class="fa fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                        </div>
                    </div>

                    <div class="box-body">
                        <div class="form-horizontal">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        Resposta do Expediente: 
                                    </div>
                                </div>
                                <div class="form-group">



                                    <div class="col-sm-2">
                                        <asp:DropDownList ID="DropResposta" CssClass="form-control form-control-info" runat="server">
                                            <asp:ListItem>Deferido</asp:ListItem>
                                            <asp:ListItem>Indeferido</asp:ListItem>
                                            <asp:ListItem>Autorizado</asp:ListItem>
                                            <asp:ListItem>Nao Autorizado</asp:ListItem>
                                            <asp:ListItem>Em analise</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>

                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <asp:TextBox ID="txtComentario" ValidateRequestMode="Enabled" runat="server" Placeholder="Nota..." CssClass="form-control" TextMode="MultiLine" Rows="6">

                                        </asp:TextBox>

                                    </div>

                                </div>
                                <div class="form-group row">

                                    <div class=" col-lg-12">
                                        <div class=" text-right">

                                            <asp:Button ID="btnResponde" CssClass=" btn btn-info" OnClick="btnResponde_Click" runat="server" Text="Responder" />
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- end of col-sm-8 -->
                    </div>
                </div>

            </asp:Panel>
        </div>
        <div class="col-lg-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <div class="box-title">Detalhes do Expediente</div>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

                <div class="box-body">
                    <div class="form-horizontal">
                        <div class="col-md-6">
                            <table class="table no-margin">
                                <%
                                    si = new SGD.Models.sgdbEntities();
                                    var idP = Request.QueryString["index"];
                                    var leva = si.View_Recebimentos.Where(d => d.GuidEnviarDocumentos.Equals(idP)).FirstOrDefault();

                                    var usuario = si.user.Where(s => s.idUser == leva.idUsuario).FirstOrDefault();
                                    string Nome = usuario.NomeUsuario.ToString();

                                %>
                                <tbody>
                                    <tr>
                                        <th scope="row">Titulo:</th>
                                        <td><%=leva.Titulo %></td>
                                    </tr>
                                    <tr>

                                        <th scope="row">Tipo de Documento:</th>
                                        <td><%=leva.NomeCategoria %></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Data Envio:</th>
                                        <td><%=leva.DataEnvio %></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Contacto:</th>
                                        <td><%=leva.Contacto %></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Nivel de Urgencia:</th>
                                        <td><%=leva.NivelUrgencia %></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-6">
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
                                        <th scope="row">Data Recebimento:</th>
                                        <td><%=leva.DataRecebimento %></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Codigo Processo:</th>
                                        <td><%=leva.CodExpediente %></td>
                                    </tr>
                                    <tr>
                                        <th scope="row"></th>
                                        <td>
                                            <div class="text-right">
                                                <asp:LinkButton ID="btnResponder" OnClick="btnResponder_Click" CssClass="btn btn-info" runat="server" Text="Responder" />
                                            </div>
                                        </td>
                                    </tr>
                                    <%-- <tr>
                                                                                <th scope="row">Location</th>
                                                                                <td>New York, USA</td>
                                                                            </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

           <div class="col-lg-12">

            <div class="box box-info">
                <div class="box-header with-border">
                    <div class="box-title">Mensagem <i class="fa fa-fw fa-inbox"></i></div>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

                <div class="box-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="col-sm-12">

                    <p class="text-black" style="font-size: larger"><%=leva.Mensagem %></p>
                    </div>
                </div>
            </div>

        </div>


        </div>

       


    </div>
         <div class="col-lg-12">

            <div class="box box-info">
                <div class="box-header with-border">
                    <div class="box-title">Documentos <i class="fa fa-fw fa-file"></i></div>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

                <div class="box-body">
                    <div class="form-horizontal">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div class="table-responsive">
                                        <table class="table no-margin">
                                                <%

                                                    si = new SGD.Models.sgdbEntities();
                                                    var proc = si.documentosenviados.Where(d => d.idEnvio == leva.idEnvio).ToList();
                                                    foreach (var an in proc)
                                                    {
                                                        nome = an.NomeDocumento.ToString();
                                                        string av = an.Contentype;
                                                        extensao = an.Extensao;
                                                        id = an.idDocumentosEnviados;
                                                %>
                                                <tr>
                                                    <th class="social-label b-none p-t-0"><i class="icofont icofont-2x icofont-document-folder"></i>
                                                    </th>
                                                    <td class="social-user-name b-none p-t-0 text-muted"><%=nome %></td>
                                                    <td class="social-user-name b-none p-t-0 text-muted"><%=av %></td>
                                                    <td class="social-user-name b-none p-t-0 text-muted"><%=extensao %></td>
                                                    <td class="social-user-name b-none p-t-0 text-muted"><a href="WebFormDownloadDocument.aspx?id=<%=id%>" target="_blank">Download</a></td>

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

        <div class="col-lg-12">
  <div class="box box-info">
                <div class="box-header with-border">
                    <div class="box-title">Respostas <i class="fa fa-fw fa-question"></i></div>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

                <div class="box-body">
                    <div class="form-horizontal">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div class="table-responsive">
                                        <table class="table no-margin">
                                            <thead>
                                                <tr class="table-primary">
                                                    <th>Data</th>
                                                    <th>Resposta</th>
                                                    <th>Nota</th>
                                                    <th>Cc</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    si = new SGD.Models.sgdbEntities();
                                                    string idsss = Request.QueryString["index"];
                                                    var idpast = si.EnviarDocumentos.Where(d => d.GuidMap.Equals(idsss)).FirstOrDefault();
                                                    var procurarespostas = si.RespostaDocumento.Where(d => d.idEnvio == idpast.idEnvio).OrderByDescending(a => a.DatResposta).ToList();
                                                    foreach (var item in procurarespostas)
                                                    {
                                                        var cate = si.user.Where(s => s.idUser == item.idUsuario).FirstOrDefault();

                                                %>


                                                <tr>
                                                    <th scope="row"><%=item.DatResposta %></th>
                                                    <td><%=item.Resposta %></td>
                                                    <td><%=item.Comentario %></td>
                                                    <td>@<%=cate.NomeUsuario %></td>

                                                    <td><a target="_blank" href="WebFormPrintResult.aspx?Resposta=<%=item.Resposta%>&CodigoExpe=<%=leva.CodExpediente%>"><i class="fa fa-fw fa-print text-black fa-2x"></i></a></td>
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
  
</asp:Content>
