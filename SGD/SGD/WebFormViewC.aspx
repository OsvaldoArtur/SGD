<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormViewC.aspx.cs" Inherits="SGD.WebFormViewC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
       <section class="content-header">
        <h1>Navegacao

        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li><a href="WebFormElaborarCartas.aspx">Nova Carta</a></li>
            <li class="active">Detalhes do Envio</li>
        </ol>
    </section>
    <br />


    <div class="row">
        <div class="col-lg-12">
            <div class="box box-info">
                <div class="box-header with-border">
                    <div class="box-title">Carta Info.</div>
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
                    <div class="box-title">Mensagem</div>
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
                                <p class="task-detail" style="font-size: larger"><%=leva.Descricao %></p>
                              
                            </div>
                            </div>
                        </div>
                
                    </div>
                </div>
            </div>
        </div>


        <div class="col-lg-12">
          <div class="box box-info">
                <div class="box-header with-border">
                    <div class="box-title">Documentos</div>
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
                                            <table class="table table-striped no-margin">
                                                <%

                                                    si = new SGD.Models.sgdbEntities();
                                                    var proc = si.Anexos_Cartas_tb.Where(d => d.idCarta == leva.idCarta).ToList();
                                                    foreach (var an in proc)
                                                    {

                                                %>
                                                <tr>
                                                    <th class=""><i class="fa fa-fw fa-folder"></i>
                                                    </th>
                                                    <td class="text-muted"><%=an.Anexo_Nome  %></td>
                                                    <td class="text-muted"><%=an.Anexo_Type %></td>
                                                    <td class="text-muted"><%=an.Anexo_Contentype %></td>
                                                    <td class="text-muted"><a href="WebFormDownloadCartas.aspx?id=<%=an.idAnexosCartas%>" target="_blank">Download</a></td>

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
                    <div class="box-title">Documentos</div>
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
                                                            <table class="table table-striped no-margin">
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
                                                                          <td><a target="_blank" href="WebFormPrintResultC.aspx?Resposta=<%=item.Resposta%>&CodigoExpe=<%=leva.CodigoCarta%>"><i class="fa fa-fw fa-print fa-2x"></i></a></td>

                                                                        <%--<td class="social-user-name b-none p-t-0 text-muted"><a href="WebFormDownloadAnexo.aspx?id=<%=item.idResposta%>" target="_blank">Anexo</a></td>--%>
                                                                    </tr>
                                                                    <%} %>
                                                                </tbody>
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

</asp:Content>
