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
                                        <div class="">
                                            <div class="input-group">
                                            </div>
                                            <div class="input-group">
                                                <label class="col-form-label col-xl-1">Codigo do Expediente: </label>
                                                <input id="Text1" type="text" class="form-control form-control-info col-xl-4" runat="server" placeholder="Procurar por codigo" />
                                                <asp:Button ID="Button2" CssClass="btn btn-info col-xl-1" OnClick="Button1_Click" runat="server" Text="Procurar" />
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
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <asp:GridView ID="GridView1" CssClass="table  table-bordered table-responsive" runat="server"></asp:GridView>

                                            </div>
                                        </div>
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
