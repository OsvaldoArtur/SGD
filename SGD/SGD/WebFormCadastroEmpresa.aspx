<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormCadastroEmpresa.aspx.cs" Inherits="SGD.WebFormCadastroEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Cadastro Empresa</h4>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">

                            <div class="col-lg-12 ">
                                <div class="card card-border-info">
                               
                                    <div class="card-block">
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="txtNomeEmpresa" CssClass="form-control form-control-info " placeholder="Nome da Empresa" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="txtExtensao" CssClass="form-control form-control-info " placeholder="Extensao/Abreviatura" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="txtEmail" CssClass="form-control form-control-info " placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>

                                            </div>
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="txtContacto" CssClass="form-control form-control-info"  placeholder="Contacto" TextMode="Phone" runat="server"></asp:TextBox>
                                                 

                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="txtNuit" CssClass="form-control form-control-info " placeholder="Numero de Identificacao" runat="server"></asp:TextBox>

                                            </div>
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="txtLocalizacao" CssClass="form-control form-control-info " placeholder="Localizacao" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class=" form-group row">
                                            <div class="col-lg-12">
                                                <asp:TextBox ID="txtSlogan" CssClass="form-control form-control-info " placeholder="Slogan" runat="server"></asp:TextBox>

                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-lg-12">
                                                <h5>Logotipo <i class="icofont icofont-image"></i></h5>

                                            </div>
                                            <div class="col-lg-4">
                                                <input type="file" id="txtFile" class="form-control form-control-info" runat="server" />
                                            </div>

                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                            </div>
                                            <div class="col-lg-4">
                                            </div>
                                            <div class="col-lg-2">
                                                <asp:Button ID="BtnSalvar" OnClick="BtnSalvar_Click" CssClass="btn btn-info btn-block" Text="Salvar" runat="server" />
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
