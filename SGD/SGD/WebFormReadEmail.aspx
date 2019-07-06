<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormReadEmail.aspx.cs" Inherits="SGD.WebFormReadEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content-header">
        <h1>Email

        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li class="active">Ler email</li>
        </ol>
    </section>



    <br />

    <div class="row">
    
            <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:Timer ID="tm1" runat="server" Interval="1000"></asp:Timer>

        
                <%
        si = new SGD.Models.sgdbEntities();
        var qrstring = Request.QueryString["id"];
        var proc = si.DocumentoUsuario_tb.Where(d => d.GuidMap.Equals(qrstring)).FirstOrDefault();
        var usrsender = si.user.Where(s => s.idUser == proc.idUserSender).FirstOrDefault();
        var usrreceiv = si.user.Where(s => s.idUser == proc.idUserReceiver).FirstOrDefault();
        var peds = si.Pedidos_tb.Where(e => e.idPedidos == proc.idPedido).FirstOrDefault();
    %>

        <div class="col-lg-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Read Mail</h3>

                    <div class="box-tools pull-right">
                        <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Previous"><i class="fa fa-chevron-left"></i></a>
                        <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Next"><i class="fa fa-chevron-right"></i></a>
                    </div>
                </div>

                <div class="box-body no-padding">
                    <div class="mailbox-read-info">
                        <h3><%=proc .Assunto %></h3>
                        <h5>Mensagem: <%=peds.Pedido %></h5>
                        <h5>From: <%=usrsender.NomeUsuario %>
                            <span class="mailbox-read-time pull-right"><%=DateTime.Parse(proc.DataEnvio.ToString()).ToUniversalTime() %></span></h5>
                    </div>

                    <div class="mailbox-read-message">
                        <p><%=proc.Nota%></p>

                    </div>

                </div>
            </div>
        </div>



        <div class="col-lg-12">
            <div class="box box-info">
                <div class="box-header">
                    <i class="fa fa-comments-o"></i>

                    <h3 class="box-title">Mail Chat</h3>


                </div>
                <div class="box-body chat" id="chat-box">


                    <% si = new SGD.Models.sgdbEntities();
                        var procs = si.RespostaDocumentoUsuario_tb.Where(p => p.idDocumentoUser == proc.idDocumentouser).ToList();
                        foreach (var item in procs)
                        {
                            var nomeu = si.user.Where(d => d.idUser == item.idUserResposta).FirstOrDefault();

                    %>
                    <br />
                    <div class="item">
                        <br />
                        <div class="message">
                            <span class="name text-aqua">
                                <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> <%=DateTime.Parse(item.DataResposta.ToString()).ToUniversalTime()%></small>
                                <%=nomeu.NomeUsuario %>
                            </span>
                            <p class="col-xs-12">
                                <%=item.Resposta%>
                            </p>

                        </div>
                    </div>
                    <%} %>

                </div>

                <div class="box-footer">
        
                </div>
            </div>

        </div>



    <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
        </ContentTemplate>
    </asp:UpdatePanel>


        <div >
            <div class="form-horizontal">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="col-sm-12">
 <div class="input-group">
                        <asp:TextBox ID="txtNota" CssClass="form-control" Placeholder="Escrever a mensagem..." runat="server"></asp:TextBox>

                        <div class="input-group-btn">
                            <asp:Button ID="btnEnviar" OnClick="btnEnviar_Click" runat="server" Text="Enviar nota" CssClass="btn btn-info" />

                        </div>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
                       
        </div>

    </div>

        




</asp:Content>
