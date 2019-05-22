<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormPesquisarExpedientes.aspx.cs" Inherits="SGD.WebFormPesquisarExpedientes" %>

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
                                <li class="breadcrumb-item">Inicio
                                </li>
                                <li class="breadcrumb-item">Pesquisar Expediente
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card card-border-info">
                                    <div class="card-header">
                                        <h5 class="text-muted">Procurar</h5>
                                    </div>
                                    <div class="card-block">

                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="row">
                                                    <div class="input-group col-sm-2">
                                                        <label class="col-form-label ">Codigo do Expediente:</label>
                                                    </div>
                                                    <div class="input-group col-sm-6">
                                                        <asp:TextBox ID="Text1" runat="server" CssClass="form-control form-control-info" ValidateRequestMode="Enabled" ValidationGroup="a" placeholder="Procurar por codigo"></asp:TextBox>
                                                    </div>
                                                    <div class="input-group col-sm-2">
                                                        <asp:Button ID="Button2" CssClass="btn btn-info" ValidationGroup="a" OnClick="Button1_Click" runat="server" Text="Procurar" />
                                                    </div>
                                                    <div class="input-group col-sm-2">
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    <asp:RadioButton ID="rd1" Checked="true" GroupName="gp1" runat="server" OnCheckedChanged="rd1_CheckedChanged" Text="Cartas" AutoPostBack="true" /></td>
                                                                <td>
                                                                    <asp:RadioButton ID="RadioButton1" GroupName="gp1" runat="server" CssClass="radio-danger" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Expedientes" AutoPostBack="true" /></td>

                                                            </tr>

                                                        </table>
                                                    </div>
                                                    <div>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="label label-inverse-danger" ControlToValidate="Text1" runat="server" ErrorMessage="*Codigo" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>


                                    </div>
                                </div>


                            </div>

                            <div class="col-lg-12">
                                <div class="card card-border-info">
                                    <div class="card-header">
                                        <h5 class="text-muted">Resultados</h5>

                                    </div>
                                    <div class="card-block">
                                        <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered nowrap" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True" />
                                            </Columns>
                                        </asp:GridView>
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
