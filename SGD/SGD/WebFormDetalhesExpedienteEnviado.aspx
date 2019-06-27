<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDetalhesExpedienteEnviado.aspx.cs" Inherits="SGD.WebFormDetalhesExpedienteEnviado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content-header">
        <h1>Navegacao

        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li><a href="WebFormNovoExpediente.aspx">Novo Expediente</a></li>
            <li class="active">Detalhes do Envio</li>
        </ol>
    </section>
    <br />
    <div class="row">
        <div class="col-lg-12">
            <div runat="server" visible="true" class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="fa fa-close"></i>
                </button>
                <strong>Sucesso!</strong> Expediente em sucesso! 
            </div>
        </div>



    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <div class="box-title">Expediente Info.</div>
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
                            <table class="table m-0">
                                <%

                                    si = new SGD.Models.sgdbEntities();
                                    string idP = Request.QueryString["index"];
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
                                        <th scope="row">Guid:</th>
                                        <td><%=leva.GuidEnviarDocumentos %></td>
                                    </tr>
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
                    <p class="text-black" style="font-size: larger"><%=leva.Mensagem %></p>
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

                        </div>
                    </div>



                </div>
            </div>
        </div>
</div>
</asp:Content>
