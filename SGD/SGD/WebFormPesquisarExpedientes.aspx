<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormPesquisarExpedientes.aspx.cs" Inherits="SGD.WebFormPesquisarExpedientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Navegacao
        <%--<small>Version 2.0</small>--%>
        </h1>
        <ol class="breadcrumb">
            <li class="active"><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li>Pesquisar Expedientes</li>

        </ol>
    </section>
    <br />
    <div class="row">
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="">
                    <div class="col-lg-6">
                        <div class="box box-info">
                            <div class="box-header with-border">
                                <div class="box-title">Procurar <i class="fa fa-fw fa-search-plus"></i></div>
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
                                                Codigo do Expediente:
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <asp:TextBox ID="Text1" runat="server" CssClass="form-control" ValidateRequestMode="Enabled" ValidationGroup="a" placeholder="Procurar por codigo"></asp:TextBox>
                                            </div>


                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <asp:RadioButton ID="rd1" Checked="true" GroupName="gp1" runat="server" OnCheckedChanged="rd1_CheckedChanged" Text="Cartas" AutoPostBack="true" /></td>
                                      
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:RadioButton ID="RadioButton1" GroupName="gp1" runat="server" CssClass="radio-danger" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Expedientes" AutoPostBack="true" /></td>

                                            </div>

                                        </div>

                                        <div class="form-group">
                                            <div class="col-sm-12 text-right">
                                                <asp:Button ID="Button2" CssClass="btn btn-info" ValidationGroup="a" OnClick="Button1_Click" runat="server" Text="Procurar" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="label label-danger" ControlToValidate="Text1" runat="server" ErrorMessage="*Codigo" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>


                                    </div>

                                </div>


                            </div>
                        </div>


                    </div>

                    <div class="col-lg-6">
                        <div class="box box-info">
                            <div class="box-header with-border">
                                <div class="box-title">Resultados</div>
                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                        <i class="fa fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                </div>
                            </div>

                            <div class="box-body">
                                <div class="table-responsive">
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

                <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
            </ContentTemplate>

        </asp:UpdatePanel>
    </div>

</asp:Content>
