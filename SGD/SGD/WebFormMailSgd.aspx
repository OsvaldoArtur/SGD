<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormMailSgd.aspx.cs" Inherits="SGD.WebFormMailSgd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4 class="text-muted">Email</h4>
                            <span class="text-muted">Email enviar e receber.</span>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio 
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Email <i class="icofont icofont-email"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">

                            <div class="col-lg-12">
                            
                                   <div class="card b-l-info business-info services m-b-20">
                                        <!-- Email-card start -->
                                        <div class="card-block email-card ">
                                                  
                                            
                                                <div class="row">
                                                     
                                                <!-- Left-side section start -->
                                                <div class="col-lg-12 col-xl-3">
                                                    <%--<div class="user-head row">
                                                        <div class="user-face">
                                                            <img src="assets/images/user.png" class="img-60" alt="User-Profile-Image">
                                                        </div>
                                                        <div class="user-name">
                                                            <span>John Doe</span>
                                                            <span>johndoe34@gmail.com</span>
                                                        </div>
                                                    </div>--%>
                                                    <div class="user-body" style="min-height: 657px;">
                                                        <div class="card-block">
                                                            <%--<asp:Button runat="server" OnClick="btnCompor_Click" ID="btnCompor" CssClass="btn btn-danger btn-block" Text="Compor"></asp:Button>--%>
                                                          <button type="button"  data-toggle="modal" data-target="#departamentos"  runat="server" class="btn btn-info btn-block"  >Novo Email</button>
                                           
                                                              </div>
                                                        <ul class="page-list">
                                                            <li class="">
                                                                <div class="mail-section">
                                                                    <i class="icofont icofont-inbox"></i>
                                                                    <asp:LinkButton runat="server"  OnClick="linkInbox_Click" ID="linkInbox" CssClass="" Text="Recebidos"></asp:LinkButton>
                                                                  <% si = new SGD.Models.sgdbEntities();
                                                                      var nrece = si.DocumentoUsuario_tb.Where(d => d.idUserReceiver == idu && d.Estado.Equals("Enviado")).Count();
                                                                       %>
                                                                      <label class="label label-primary f-right"><%=nrece %></label>

                                                                </div>
                                                            </li>
                                                            <li>
                                                                   <div class="mail-section">
                                                                    <i class="icofont icofont-inbox"></i>
                                                                    <asp:LinkButton runat="server"  OnClick="btnEmailEnviado_Click" ID="btnEmailEnviado" CssClass="" Text="Enviados"></asp:LinkButton>
                                                                  <% si = new SGD.Models.sgdbEntities();
                                                                      var nenv = si.DocumentoUsuario_tb.Where(d => d.idUserSender == idu).Count();
                                                                       %>
                                                                      <label class="label label-primary f-right"><%=nenv %></label>

                                                                </div>

                                                            </li>
                                                                                                                        <li>
                                                                <div class="mail-section">
                                                                    <a href="#">
                                                                        <i class="icofont icofont-paper-plane"></i> Email enviado
                                                                    </a>
                                                                </div>
                                                            </li>
                                                        <%--    <li>
                                                                <div class="mail-section">
                                                                    <a href="#">
                                                                        <i class="icofont icofont-star"></i>Starred
                                                                    </a>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="mail-section">
                                                                    <a href="#">
                                                                        <i class="icofont icofont-file-text"></i>Drafts
                                                                    </a>
                                                                </div>
                                                            </li>

                                                            <li>
                                                                <div class="mail-section">
                                                                    <a href="#">
                                                                        <i class="icofont icofont-ui-delete"></i>Trash
                                                                    </a>
                                                                    <label class="label label-info f-right">30</label>
                                                                </div>
                                                            </li>
  --%>                                                      </ul>
                                                        <%--<ul class="card-block label-list">
                                                            <li>
                                                                <h5>Labels</h5>
                                                            </li>
                                                            <li>
                                                                <a class="mail-work" href="#">Work</a>
                                                            </li>
                                                            <li>
                                                                <a class="mail-design" href="#">Design</a>
                                                            </li>
                                                            <li>
                                                                <a class="mail-family" href="#">Family</a>
                                                            </li>
                                                            <li>
                                                                <a class="mail-friends" href="#">Friends</a>
                                                            </li>
                                                            <li>
                                                                <a class="mail-office" href="#">Office</a>
                                                            </li>
                                                        </ul>--%>
                                                    </div>
                                                </div>
                                                <!-- Left-side section end -->
                                                <!-- Right-side section start -->

                                                <div class="col-lg-12 col-xl-9">
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

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <thead>
                                                                            <tr><td class="font-weight-bold"><i></i></td> 
                                                                                <td class="font-weight-bold">Assunto <i class="icofont icofont-table"></i></td>
                                                                                <td class="font-weight-bold">Pedido <i class="icofont icofont-pen"></i></td>
                                                                                <td class="font-weight-bold">Data Envio <i class="icofont icofont-time"></i></td>
                                                                               
                                                                                
                                                                                 </tr>
                                                                          
                                                                        </thead>
                                                                        <tbody>
                                                                            <%
                                                                                si = new SGD.Models.sgdbEntities();

                                                                                var procua = si.DocumentoUsuario_tb.Where(d=> d.idUserReceiver == idu) .ToList().OrderByDescending(d=> d.HoraEnvio);

                                                                                foreach (var item in procua)
                                                                                {
                                                                                    Assunto = item.Assunto;
                                                                                    Menssagem = item.Nota;
                                                                                    dataEnvio = DateTime.Parse(item.DataEnvio.ToString());
                                                                                    horaEnvio =  DateTime.Parse(item.HoraEnvio.ToString());
                                                                                    Estado = item.Estado;
                                                                                    var pedido = si.Pedidos_tb.Where(s => s.idPedidos == item.idPedido).FirstOrDefault();
                                                                            %>
                                                                            <tr class="">
                                                                                 <td>   <label class="label label-info f-left">NEW</label></td>
                                                                                <td><%=Assunto %></td>
                                                                                <td><%=pedido.Pedido%></td>
                                                                               <%--<td class="email-attch"></td>--%>
                                                                                <%--<td class="email-time"><%=dataEnvio %></td>--%>
                                                                                <td><%=dataEnvio %></td>
                                                                            </tr>
                                                                            <% } %>
                                                                        </tbody>
                                                                    </table>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel Visible="false" runat="server" ID="PanelComporEmail">
                                                        <div class="mail-box-head row">
                                                            <div class="col-sm-9">
                                                                <h3>Compor Documento</h3>
                                                            </div>
                                                            <div class="col-md-3">
                                                            </div>
                                                        </div>
                                                        <div class="mail-body">

                                                            <div class="mail-body-content">


                                                                <div>
                                                                    <%--                                                                    <div class="form-group">
                                                                        <input type="text" class="form-control" placeholder="To">
                                                                    </div>--%>
                                                                 
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                     <asp:Panel Visible="false" runat="server" ID="PanelLer">
                                                        <div class="mail-box-head row">
                                                            <div class="col-sm-9">
                                                                <h3>Ler Mensagem</h3>
                                                            </div>
                                                            <div class="col-md-3">
                                                            </div>
                                                        </div>
                                                        <div class="mail-body">

                                                            <div class="mail-body-content">

                                                                <div>

                                                                </div>

                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                                                                        <asp:Panel Visible="true" runat="server" ID="PanelEnviados">
                                                        <div class="mail-box-head row">
                                                            <div class="col-sm-3">
                                                                <h3>Enviados</h3>
                                                            </div>
                                                            <div class="col-md-9">
                                                               
                                                            </div>
                                                        </div>
                                                        <div class="mail-body">

                                                            <div class="mail-body-content">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <thead>
                                                                            <tr><td class="font-weight-bold">Para:</td> 
                                                                                <td class="font-weight-bold">Assunto <i class="icofont icofont-table"></i></td>
                                                                                <td class="font-weight-bold">Pedido <i class="icofont icofont-pen"></i></td>
                                                                                <td class="font-weight-bold">Data Envio <i class="icofont icofont-time"></i></td>
                                                                               
                                                                                
                                                                                 </tr>
                                                                          
                                                                        </thead>
                                                                        <tbody>
                                                                            <%-- Osvaldo --%>
                                                                            <%
                                                                                si = new SGD.Models.sgdbEntities();

                                                                                var procua = si.DocumentoUsuario_tb.Where(d=> d.idUserSender == idu) .ToList().OrderByDescending(d=> d.HoraEnvio);
                                                                                
                                                                                foreach (var item in procua)
                                                                                {
                                                                                    Assunto = item.Assunto;
                                                                                    Menssagem = item.Nota;
                                                                                    dataEnvio = DateTime.Parse(item.DataEnvio.ToString());
                                                                                    horaEnvio =  DateTime.Parse(item.HoraEnvio.ToString());
                                                                                    Estado = item.Estado;
                                                                                    var pedido = si.Pedidos_tb.Where(s => s.idPedidos == item.idPedido).FirstOrDefault();
                                                                                    var usersender = si.user.Where(z => z.idUser == item.idUserReceiver).FirstOrDefault();
                                                                            %>
                                                                            <tr class="">
                                                                                 <td>   <label class="label label-info f-left"><%=usersender.NomeUsuario%></label></td>
                                                                                <td><%=Assunto %></td>
                                                                                <td><%=pedido.Pedido%></td>
                                                                               <%--<td class="email-attch"></td>--%>
                                                                                <%--<td class="email-time"><%=dataEnvio %></td>--%>
                                                                                <td><%=dataEnvio %></td>
                                                                            </tr>
                                                                            <% } %>
                                                                        </tbody>
                                                                    </table>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                    
                                                </div>


                                                <div class="col-lg-12 col-xl-9">
                                
                                                </div>



                                                <!-- Right-side section end -->
                                            </div>
                                        </div>
                                        <!-- Email-card end -->
                                    </div>


                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
                                                
        <div id="departamentos" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="login-card card-block login-card-modal">
                <div class="md-float-material">
                    <div class="text-center">
                                          </div>
                    <div class="auth-box">
                        <div class="row m-b-20">
                            <div class="col-md-12">
                                <h3 class="text-center txt-primary">Novo Email <i class="icofont icofont-send-mail icofont-2x"></i></h3> 
                            </div>
                        </div>
                        <hr />
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
                                                                                    <asp:Button ID="btnDescartar" runat="server" Text="Cancelar" OnClick="btnDescartar_Click" CssClass="btn btn-danger" />

                                                                                    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="btn btn-info" />

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


</asp:Content>
