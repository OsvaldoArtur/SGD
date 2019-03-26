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
                        <div class="card b-l-primary business-info services m-b-20">
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

                                    </div>
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
