<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormSendSMS.aspx.cs" Inherits="SGD.WebFormSendSMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Dashboard</h4>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="index-2.html">
                                        <i class="icofont icofont-home"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item"><a href="#!">Pages</a>
                                </li>
                                <li class="breadcrumb-item"><a href="#!">Dashboard</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            <div class=" row card-block">
                                <div class="col-sm-12">
                                    <div class="text-right">
                                    </div>
                                    <br />
                                    <ul class="list-view">
                                        <li>
                                            <div class="card user-card">
                                                <div class="card-header">
                                                    <h6 class="text-muted"><i class="icofont icofont-smart-phone"></i>SMS</h6>
                                                </div>
                                                <div class="card-block">
                                                    <div class="media">

                                                        <div class="media-body">
                                                            <div class="row">
                                                                <div class=" input-group">
                                                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control col-sm-1" runat="server">
                                                                        <asp:ListItem>+258</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                                                                                         
                                                                    <asp:TextBox ID="txtNumero" CssClass="form-control col-sm-3" placeholder="Number" runat="server"></asp:TextBox>

                                                                </div>
                                                                <div class="input-group">
                                                                    <asp:TextBox ID="txtMensagem" placeholder="Mensagem" CssClass="form-control" TextMode="MultiLine" Rows="10" runat="server"></asp:TextBox>
                                                                </div>

                                                                <div class="input-group">
                                                                    <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="btn btn-success" runat="server" Text="Enviar" />
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</asp:Content>
