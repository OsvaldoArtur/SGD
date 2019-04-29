<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormReadEmail.aspx.cs" Inherits="SGD.WebFormReadEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Correio Pessoal</h4>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="index-2.html">
                                        <i class="icofont icofont-home"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Pages
                                </li>
                                <li class="breadcrumb-item">Dashboard
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            <%
                                si = new SGD.Models.sgdbEntities();
                                var qrstring = Request.QueryString["id"];
                                var proc = si.DocumentoUsuario_tb.Where(d => d.GuidMap.Equals(qrstring)).FirstOrDefault();
                                var usrsender = si.user.Where(s => s.idUser == proc.idUserSender).FirstOrDefault();
                                var usrreceiv = si.user.Where(s => s.idUser == proc.idUserReceiver).FirstOrDefault();
                                var peds = si.Pedidos_tb.Where(e => e.idPedidos == proc.idPedido).FirstOrDefault();
                            %>
                            <div class="col-sm-12">
                                <div class="card borderless-card">
                                    <div class="card-block">
                                        <div class="text-right">
                                            <h6 class="text-muted">Enviado as: <%=DateTime.Parse(proc.DataEnvio.ToString()).ToUniversalTime() %></h6>
                                        </div>
                                     <h5 class="text-muted">Enviado por: <%=usrsender.NomeUsuario %></h5>
                                        <h6 class="text-muted">Email: <%=usrsender.Email %></h6>
                                        <h5 class="text-muted">Enviado para: <%=usrreceiv.NomeUsuario %></h5>
                                        <h6 class="text-muted">Email: <%=usrreceiv.Email %></h6>
                                        <h6 class="text-muted">Assunto: <%=proc .Assunto %></h6>
                                        <h6 class="text-muted">Pedido: <%=peds.Pedido %></h6>

                                        <div class="view-info">
                                            <h6 class="text-muted">Mensagem: <%=proc.Nota  %></h6>

                                        </div>
                                        <div class="text-right">
                                            <div class="">
                                                <button type="button" data-toggle="modal" data-target="#departamentos" runat="server" class="btn btn-info">Enviar nota</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="card borderless-card">

                                    <div class="card-block">

                                        <ul class="media-list">
                                            <% si = new SGD.Models.sgdbEntities();
                                                var procs = si.RespostaDocumentoUsuario_tb.Where(p => p.idDocumentoUser == proc.idDocumentouser).ToList();
                                                foreach (var item in procs)
                                                {
                                                    var nomeu = si.user.Where(d => d.idUser == item.idUserResposta).FirstOrDefault();

                                            %>
                                            <li class="media">
                                                <div class="media-left">
                                                    <i class="icofont icofont-2x icofont-paper"></i>
                                                </div>

                                                <div class="media-body">
                                                    <h6 class="media-heading"><%=nomeu.NomeUsuario %><span class="f-12 text-muted m-l-5"><%=DateTime.Parse(item.DataResposta.ToString()).ToUniversalTime() %></span></h6>
                                                    <h6 class="media-heading"></h6>

                                                    <p class="m-b-0"><%=item.Resposta%></p>
                                                    <div class="m-b-25">
                                                        <%--<span><a href="#!" class="m-r-10 f-12">Reply</a></span><span><a href="#!" class="f-12">Edit</a> </span>--%>
                                                    </div>
                                                    <hr />
                                                </div>
                                                <%} %>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div id="styleSelector">
            </div>
        </div>

        <div id="departamentos" class="modal fade" role="dialog">
            <div class="modal-dialog ">
                <div class="login-card card-block login-card-modal">
                    <div class="md-float-material">
                        <div class="text-center">
                        </div>
                        <div class="auth-box">
                            <div class="row m-b-20">
                                <div class="col-md-12">
                                    <h3 class="text-center txt-primary">Nova nota <i class="icofont icofont-send-mail"></i></h3>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtNota" CssClass="form-control" Placeholder="Notas" runat="server" TextMode="MultiLine" Rows="9"></asp:TextBox>

                                    </div>

                                    <div class="col-lg-12">
                                        <div class="text-right">
                                            <br />
                                            <asp:Button ID="btnEnviar" OnClick="btnEnviar_Click" runat="server" Text="Enviar nota" CssClass="btn btn-info" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <%--<div class="row m-t-15">
                            <div class="col-md-12">

                              </div>
                        </div>
                        <hr />--%>
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
    </div>

</asp:Content>
