<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormMailSgd.aspx.cs" Inherits="SGD.WebFormMailSgd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="content-header">
        <h1>Navegacao

        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li class="active"><a href="WebFormElaborarCartas.aspx">Mail Inbox</a></li>

        </ol>
    </section>
    <br />


    <div class="row">
        <div class="col-md-3">
            <a data-toggle="modal" data-target="#departamentos" runat="server" class="btn btn-primary btn-block margin-bottom">Compor</a>

            <div class="box box-solid">
                <div class="box-header with-border">
                    <h3 class="box-title">Pastas</h3>

                    <div class="box-tools">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>

                <div class="box-body no-padding">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a runat="server" onserverclick="linkInbox_Click" id="text" href="#"><i class="fa fa-inbox"></i>Caixa de Entrada
                     <% si = new SGD.Models.sgdbEntities();
                         var nrece = si.DocumentoUsuario_tb.Where(d => d.idUserReceiver == idu && d.Estado.Equals("Enviado")).Count();
                     %>
                            <span class="label label-primary pull-right"><%=nrece %></span></a></li>
                        <li><a runat="server" onserverclick="btnEmailEnviado_Click" id="btnEmailEnviad" href="#"><i class="fa fa-envelope-o"></i>
                            <% si = new SGD.Models.sgdbEntities();
                                var nenv = si.DocumentoUsuario_tb.Where(d => d.idUserSender == idu).Count();
                            %>
                            Enviados                             <span class="label label-primary pull-right"><%=nenv %></span></a></li>
                   
                    </ul>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /. box -->
            <div  class="box box-solid hide">
                <div class="box-header with-border">
                    <h3 class="box-title">Labels</h3>

                    <div class="box-tools">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body no-padding">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="#"><i class="fa fa-circle-o text-red"></i>Important</a></li>
                        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i>Promotions</a></li>
                        <li><a href="#"><i class="fa fa-circle-o text-light-blue"></i>Social</a></li>
                    </ul>
                </div>

            </div>

        </div>

        <div class="col-md-9">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title"></h3>



                </div>

                <div class="box-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-horizontal">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <asp:Panel Visible="true" runat="server" ID="PanelRecebidos">
                                                <div class="mail-box-head row">
                                                    <div class="col-sm-3">
                                                        <h3>Recebidos</h3>
                                                    </div>
                                                    <div class="col-md-9">
                                                    </div>
                                                </div>
                                                <div class="mail-body">

                                                    <div class="mail-body-content">

                                                        <div>
                                                        </div>
                                                        <div class="table-responsive mailbox-messages">
                                                            <table class="table table-hover table-striped">
                                                                <thead>
                                                                    <tr>
                                                                        <td></td>
                                                                        <td class="font-weight-bold">Assunto <i class="icofont icofont-table"></i></td>
                                                                        <td class="font-weight-bold">Pedido <i class="icofont icofont-pen"></i></td>
                                                                        <td class="font-weight-bold">Data Envio <i class="icofont icofont-time"></i></td>
                                                                        <td class="font-weight-bold">Respostas <i class="icofont icofont-question"></i></td>


                                                                    </tr>

                                                                </thead>
                                                                <tbody>
                                                                    <%
                                                                        si = new SGD.Models.sgdbEntities();

                                                                        var procua = si.DocumentoUsuario_tb.Where(d => d.idUserReceiver == idu).ToList().OrderByDescending(d => d.DataEnvio);

                                                                        foreach (var item in procua)
                                                                        {

                                                                            Assunto = item.Assunto;
                                                                            Menssagem = item.Nota;
                                                                            dataEnvio = DateTime.Parse(item.DataEnvio.ToString());
                                                                            horaEnvio = DateTime.Parse(item.HoraEnvio.ToString());
                                                                            Estado = item.Estado;
                                                                            var pedido = si.Pedidos_tb.Where(s => s.idPedidos == item.idPedido).FirstOrDefault();
                                                                            var contagemresposta = si.RespostaDocumentoUsuario_tb.Where(d => d.idDocumentoUser == item.idDocumentouser).Count();

                                                                    %>

                                                                    <tr class="">

                                                                        <td>
                                                                            <a href="WebFormReadEmail.aspx?id=<%=item.GuidMap %>">Select</a></td>
                                                                        <td><%=Assunto %></td>
                                                                        <td><%=pedido.Pedido%></td>
                                                                        <td><%=dataEnvio %></td>
                                                                        <td><%=contagemresposta %></td>

                                                                    </tr>
                                                                    <% } %>
                                                                </tbody>
                                                            </table>
                                                        </div>


                                                    </div>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel Visible="false" runat="server" ID="PanelEnviados">
                                                <div class="mail-box-head row">
                                                    <div class="col-sm-3">
                                                        <h3>Enviados</h3>
                                                    </div>
                                                    <div class="col-md-9">
                                                    </div>
                                                </div>
                                                <div class="mail-body">

                                                    <div class="mail-body-content">


                                                        <div class="table-responsive mailbox-messages">
                                                            <table class="table table-hover table-striped">
                                                                <thead>
                                                                    <tr>
                                                                        <td class="font-weight-bold">Para:</td>
                                                                        <td class="font-weight-bold">Assunto <i class="icofont icofont-table"></i></td>
                                                                        <td class="font-weight-bold">Pedido <i class="icofont icofont-pen"></i></td>
                                                                        <td class="font-weight-bold">Data Envio <i class="icofont icofont-time"></i></td>


                                                                    </tr>

                                                                </thead>
                                                                <tbody>
                                                                    <%-- Osvaldo --%>
                                                                    <%
                                                                        si = new SGD.Models.sgdbEntities();

                                                                        var procua = si.DocumentoUsuario_tb.Where(d => d.idUserSender == idu).ToList().OrderByDescending(d => d.DataEnvio);

                                                                        foreach (var item in procua)
                                                                        {
                                                                            Assunto = item.Assunto;
                                                                            Menssagem = item.Nota;
                                                                            dataEnvio = DateTime.Parse(item.DataEnvio.ToString());
                                                                            horaEnvio = DateTime.Parse(item.HoraEnvio.ToString());
                                                                            Estado = item.Estado;
                                                                            var pedido = si.Pedidos_tb.Where(s => s.idPedidos == item.idPedido).FirstOrDefault();
                                                                            var usersender = si.user.Where(z => z.idUser == item.idUserReceiver).FirstOrDefault();
                                                                    %>
                                                                    <tr class="">
                                                                        <td>
                                                                            <label class=""><a href="WebFormReadEmail.aspx?id=<%=item.GuidMap %>"><%=usersender.NomeUsuario%> </a></label>
                                                                        </td>
                                                                        <td><a href="WebFormReadEmail.aspx?id=<%=item.GuidMap %>" class="text-muted"><%=Assunto %></a></td>
                                                                        <td><a href="WebFormReadEmail.aspx?id=<%=item.GuidMap %>" class="text-muted"><%=pedido.Pedido%></a></td>
                                                                        <%--<td class="email-attch"></td>--%>
                                                                        <%--<td class="email-time"><%=dataEnvio %></td>--%>
                                                                        <td><a href="WebFormReadEmail.aspx?id=<%=item.GuidMap %>" class="text-muted"><%=dataEnvio %></a></td>
                                                                    </tr>
                                                                    <% } %>
                                                                </tbody>
                                                            </table>
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

                    <div class="box-footer no-padding">
                    </div>
                </div>

            </div>


        </div>


    </div>


    <div class="modal fade" id="departamentos" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Novo Email </h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-1">
                                <label class="col-form-label">Para:</label>
                            </div>
                            <div class="col-md-5">
                                <asp:DropDownList ID="DropDownListPara" CssClass="form-control form-control-primary" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="Email" DataValueField="idUser"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idUser], [NomeUsuario], [Email] FROM [user]"></asp:SqlDataSource>

                            </div>
                            <div class="col-md-1">
                                <label class="col-form-label text-right">Pedido:</label>

                            </div>
                            <div class="col-md-5">
                                <asp:DropDownList ID="DropDownListTipoPedido" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcePedidos" DataTextField="Pedido" DataValueField="idPedidos"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourcePedidos" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idPedidos], [Pedido] FROM [Pedidos_tb]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtAssunto" runat="server" CssClass="form-control" Placeholder="Assunto:"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <asp:TextBox ID="txtNota" CssClass="form-control" Placeholder="Descricao" runat="server" TextMode="MultiLine" Rows="9"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-12">
                            <div class="text-right">
                                <div class="">
                                    <asp:Button ID="btnDescartar" Visible="false" runat="server" Text="Cancelar" OnClick="btnDescartar_Click" CssClass="btn btn-danger" />

                                    <asp:Button ID="btnEnviar" Visible="false" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="btn btn-info" />

                                </div>
                            </div>
                        </div>
                    </div>


                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <asp:Button ID="btnSalvarpedidos" runat="server" CssClass="btn btn-info" OnClick="btnEnviar_Click" Text="Enviar" />

                </div>
            </div>

        </div>
        <!-- /.modal-content -->
    </div>

</asp:Content>
