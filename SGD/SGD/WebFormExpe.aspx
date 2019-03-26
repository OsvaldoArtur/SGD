<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormExpe.aspx.cs" Inherits="SGD.WebFormExpe" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Expedientes</h4>
                            <span class="text-muted">Criar novos expedientes </span>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Permissao
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Permissao Pasta</h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>

                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                    </div>

                                    <div class="row card-block">
                                        <div class="col-lg-12">
                                            <div class="container">
                                                <%--       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="10pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="1200px" Width="800px">
            <LocalReport ReportPath="ReportCredential.rdlc">
            </LocalReport>
     
        </rsweb:ReportViewer>--%>
                                                <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Download" />--%>
                                                <%--<button type="button" class="btn btn-success alert-success-msg m-b-10" onclick="_gaq.push(['_trackEvent', 'example', 'try', 'alert-success']);">Success</button>--%>

                                                <ol>
                                                </ol>
                                            </div>

                                        </div>


                                    </div>
                                    <div class="card">
                                        <!-- Email-card start -->
                                        <div class="card-block email-card">
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
                                                            <asp:Button runat="server" OnClick="btnCompor_Click" ID="btnCompor" CssClass="btn btn-danger btn-block" Text="Compor"></asp:Button>
                                                        </div>
                                                        <ul class="page-list">
                                                            <li class="">
                                                                <div class="mail-section">
                                                                    <i class="icofont icofont-inbox"></i>
                                                                    <asp:LinkButton runat="server"  OnClick="linkInbox_Click" ID="linkInbox" CssClass="" Text="Recebido"></asp:LinkButton>
                                                                    <label class="label label-primary f-right">0</label>

                                                                </div>
                                                            </li>

                                                            <li>
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
                                                                        <i class="icofont icofont-paper-plane"></i>Sent Mail
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
                                                        </ul>
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
                                                                        <tbody>
                                                                            <%
                                                                                si = new SGD.Models.sgdbEntities();

                                                                                var procua = si.DocumentoUsuario_tb.ToList().OrderByDescending(d=> d.HoraEnvio);

                                                                                foreach (var item in procua)
                                                                                {
                                                                                    Assunto = item.Assunto;
                                                                                    Menssagem = item.Nota;
                                                                                    dataEnvio = DateTime.Parse(item.DataEnvio.ToString());
                                                                                    horaEnvio = DateTime.Parse(item.HoraEnvio.ToString());
                                                                                    Estado = item.Estado;
                                                                            %>
                                                                            <tr class="<%=Estado%>">

                                                                                <td><%=Assunto %></td>
                                                                                <td><%= Menssagem%></td>
                                                                                <td class="email-attch"></td>
                                                                                <%--<td class="email-time"><%=dataEnvio %></td>--%>
                                                                                <td class="email-time"><%=horaEnvio %></td>
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
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-1">
                                                                                <label class="col-form-label">Para:</label>
                                                                            </div>
                                                                            <div class="col-md-5">
                                                                                <asp:DropDownList ID="DropDownListPara" CssClass="form-control form-control-primary" runat="server" DataSourceID="SqlDataSourceUsuarios" DataTextField="Email" DataValueField="idUser"></asp:DropDownList>
                                                                                <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idUser], [NomeUsuario], [Email] FROM [user]"></asp:SqlDataSource>

                                                                            </div>
                                                                            <div class="col-md-2">
                                                                                <label class="col-form-label">Tipo de Pedido:</label>

                                                                            </div>
                                                                            <div class="col-md-4">
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
                                                                                <div class="card-block">
                                                                                    <asp:Button ID="btnDescartar" runat="server" Text="Cancelar" OnClick="btnDescartar_Click" CssClass="btn btn-danger" />

                                                                                    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="btn btn-info" />

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>

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
    </div>


</asp:Content>
