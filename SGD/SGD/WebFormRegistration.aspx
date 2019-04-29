<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormRegistration.aspx.cs" Inherits="SGD.WebFormRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Registro</title>
    <link rel="stylesheet" type="text/css" href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="assets/icon/icofont/css/icofont.css" />
    <link rel="stylesheet" type="text/css" href="assets/pages/flag-icon/flag-icon.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/pages/menu-search/css/component.css" />
    <link rel="stylesheet" type="text/css" href="assets/pages/dashboard/horizontal-timeline/css/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/color/color-1.css" id="color" />
    <link rel="stylesheet" type="text/css" href="assets/css/linearicons.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/simple-line-icons.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/ionicons.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="well-lg">
                        <div class="card b-l-info business-info services m-b-20">
                            <div class="card-header">
                                <div class="service-header">
                                    <a>
                                        <h5 class="card-header-text">Cadastro <i class="icofont icofont-plus"></i></h5>
                                    </a>
                                </div>

                            </div>
                            <div class="card-block">
                                <div class="row">
                                    <div class="col-sm-12">
                                                                               <div class="">
                                                    <div class="form-group row">
                                                        <div class="col-sm-12">
                                                            <asp:TextBox ID="txtNomeusuario" CssClass="form-control form-control-info" Placeholder="Nome Completo" runat="server"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-2">
                                                            <label class="col-form-label">Data nasc.</label>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txtDataNascimento" CssClass="form-control form-control-info" TextMode="Date" runat="server"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtNaturalidade" CssClass="form-control form-control-info" Placeholder="Naturalidade" runat="server"></asp:TextBox>

                                                        </div>

                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-8">
                                                            <asp:TextBox ID="txtResidencia" CssClass="form-control form-control-info" Placeholder="Residencia" runat="server"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txtAltura" CssClass="form-control form-control-info" Placeholder="Altura ex.: 1,85" runat="server"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-3">
                                                            <asp:DropDownList ID="txtDocumento" runat="server" CssClass="form-control form-control-info">
                                                                <asp:ListItem>BI</asp:ListItem>
                                                                <asp:ListItem>NUIT</asp:ListItem>
                                                                <asp:ListItem>Carta de Conducao</asp:ListItem>
                                                                <asp:ListItem>Cartao de Eleitor</asp:ListItem>
                                                                <asp:ListItem>Passaporte</asp:ListItem>
                                                                <asp:ListItem>Espera B.I</asp:ListItem>
                                                                <asp:ListItem>Cedula</asp:ListItem>
                                                                <asp:ListItem>INSS</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <asp:TextBox ID="txtNumeroDocuemtno" CssClass="form-control form-control-info" Placeholder="Nº de documento" runat="server"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtLocalEmissao" CssClass="form-control form-control-info" Placeholder="Local de Emissao" runat="server"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-2">
                                                            <label class="col-form-label">Data emis.</label>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txtDataEmissao" TextMode="Date" CssClass="form-control form-control-info" runat="server"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-6">
                                                            <asp:DropDownList ID="txtEstadoCivil" runat="server" CssClass="form-control form-control-info">
                                                                <asp:ListItem>Solterio(a)</asp:ListItem>
                                                                <asp:ListItem>Casado(a)</asp:ListItem>
                                                                <asp:ListItem>Divorciado(a)</asp:ListItem>
                                                                <asp:ListItem>Viuvo(a)</asp:ListItem>

                                                            </asp:DropDownList>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <asp:DropDownList ID="txtSexo" runat="server" CssClass="form-control form-control-info">
                                                                    <asp:ListItem>Feminino</asp:ListItem>
                                                                    <asp:ListItem>Masculino</asp:ListItem>

                                                                </asp:DropDownList>
                                                            </div>
                                                        

                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-6">
                                                            <asp:DropDownList ID="txtDeparta" runat="server" CssClass="form-control form-control-info" DataSourceID="SqlDataSourceDeparta" DataTextField="NomeDepartamento" DataValueField="iddepartamento">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceDeparta" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [iddepartamento], [NomeDepartamento] FROM [departamento] ORDER BY [NomeDepartamento]"></asp:SqlDataSource>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <asp:DropDownList ID="txtTipo" runat="server" CssClass="form-control form-control-info" DataSourceID="SqlDataSourceTipoUsuario" DataTextField="Nome_tipo" DataValueField="id_tipo_usuario">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceTipoUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [id_tipo_usuario], [Nome_tipo] FROM [Tipo_usuario_tb]"></asp:SqlDataSource>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-12">
                                                            <asp:TextBox ID="txtEmails" CssClass="form-control form-control-info" Placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>

                                                        </div>

                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-12">
                                                            <asp:TextBox ID="txtSenhas" CssClass="form-control form-control-info" Placeholder="Senha" TextMode="Password" runat="server"></asp:TextBox>
                                                        </div>


                                                    </div>
                                                    <div class="form-group row">

                                                        <div class="col-sm-12">
                                                            <div class="text-right">
                                                                <asp:Button ID="btnSalvarUsuario" OnClick="btnSalvarUsuario_Click"  CssClass=" btn btn-info" runat="server" Text="Salvar" />
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- end of col-sm-8 -->
                                                </div>
 
                                    </div>
<%--                                    <div class="col-sm-12">
 
                                        <div class="input-group col-4">
                                            <asp:TextBox ID="txtNome" CssClass="form-control" Placeholder="Nome Completo" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="input-group col-4">
                                            <asp:TextBox ID="txtEmail" CssClass="form-control" Placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="input-group col-4">
                                            <asp:TextBox ID="txtSenha" CssClass="form-control" Placeholder="Senha" TextMode="Password" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="input-group col-4">
                                            <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" OnClick="btnSalvar_Click" Text="Registrar-se" />
                                        </div>

                                    </div>--%>
                                    <!-- end of col-sm-8 -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
