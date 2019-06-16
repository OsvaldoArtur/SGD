<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SGD.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UCM Sistema de Gestão de Expediente</title>
    <meta name="author" content="Osvaldo Artur Dionisio" />
    <meta name="keywords" content="Unversidade, UCM, Moçambique" />
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
    <form id="form1" class="bg-white" runat="server">

        <div class="header">
            <asp:Panel ID="Panel2" CssClass="bg-info" runat="server">
                <div class="text-right">
                </div>
                <br />
                <br />
                <br />
            </asp:Panel>
        </div>





        <br />
        <br />

        <br />
        <br />




        <div class="container">
            <div class="row">
                <div class="col-md-3"><a href="http://ucm.ac.mz">
                    <img class="pull-right" src="assets/images/ucm_logo.jpg" alt="UCM logo" /></a></div>
                <div class="col-md-9 brand">
                    <h1 class="text-muted">Bem-vindo ao Sistema de Gestão de Expediente da Universidade Católica de Moçambique</h1>
                    <h4></h4>
                </div>
            </div>
            <br />
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card b-l-info business-info">
                            <div class="card-header">
                                <div class="service-header">
                                    <a>
                                        <h5 class="card-header-text">Entrar no Sistema <i class="icofont icofont-2x icofont-login"></i></h5>
                                    </a>
                                </div>

                            </div>
                            <div class="card-block">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <p class="task-detail" style="font-size: larger">O acesso é permitido só aos funcionarios da UCM em possesso do email activo. </p>
                                        <p class="task-detail" style="font-size: larger">Por aceder clicar no botão <a href="Default.aspx" title="Entrar">entrar</a>.</p>
                                        <p class="text-center">

                                            <button type="button" data-toggle="modal" data-target="#sign-in" runat="server" class="btn btn-info">Entrar</button>
                                            <asp:Button ID="Button3" OnClick="Button3_Click" runat="server" CssClass=" btn btn-primary" Text="Registrar-se" />
                                        </p>
                                        <p class="text-center">
                                            <label id="mensages" runat="server" visible="false" style="font-size: 14px" class=" label label-danger">Email ou Senha Incorrecta, por favor Tente Novamente!</label></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>



        <asp:Panel ID="Panel3" CssClass="bg-info" runat="server">
            <div class="text-center text-white">

                <asp:Panel ID="panel1" runat="server" CssClass="bg-info">
                    <br />

                    <div class="container text-white">
                        <p>
                            Universidade Cat&oacute;lica de Mo&ccedil;ambique - &copy; 2016 Todos os Direitos Reservados - Rua Comandante Galvão, nº688, 
Ponta-Gêa, Beira, Mo&ccedil;ambique
                            <br />
                            Tel (Central): (+258) 23 324 809 - Fax: (+258) 23 324 858 - Email:
                            <a href="mailto:reitoria@ucm.ac.mz" class="text-white">reitoria@ucm.ac.mz</a>
                            - Web:
                            <a title="www.ucm.ac.mz" class="text-white" href="http://www.ucm.ac.mz">www.ucm.ac.mz</a>
                            <br />
                            Desenvolvido por Osvaldo Artur Dionisio para trabalho final do curso @Copyright 2019
                        </p>
                    </div>
                </asp:Panel>
            </div>
            <br />
        </asp:Panel>




        <div id="sign-in" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="login-card card-block login-card-modal">
                    <div class="md-float-material">
                        <div class="text-center">
                            <%--         <img src="assets/images/auth/logo.png" alt="logo.png">--%>
                        </div>
                        <div class="auth-box">
                            <div class="row m-b-20">
                                <div class="col-md-12">
                                    <h3 class="text-center txt-primary">Entrar no Sistema </h3>
                                </div>
                            </div>
                            <hr />
                            <div class="input-group">

                                <asp:TextBox ID="inputUsuario" AutoCompleteType="None" ValidateRequestMode="Enabled" CssClass="form-control form-control-info" TextMode="Email" placeholder="Login" runat="server"></asp:TextBox>
                                <span class="md-line"></span>

                            </div>
                            <div>
                              
                            </div>
                            <div class="input-group">

                                <asp:TextBox ID="inputPassword" AutoCompleteType="None" ValidateRequestMode="Enabled" CssClass="form-control form-control-info" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                                <span class="md-line"></span>
                             </div>

                            <div class="row m-t-15">
                                <div class="col-md-12">

                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-info btn-md btn-block waves-effect text-center" Text="Entrar" OnClick="Button1_Click" ValidationGroup="a" />
                              
                                      </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-10">
                                    <p class="text-inverse text-left m-b-0">Termos e Condicoes Aplicaveis.</p>
                                    <%--          <p class="text-inverse text-left"><b>Your Autentification Team</b></p>--%>
                                </div>
                                <div class="col-md-2">
                                    <%-- <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">--%>
                                </div>
                                <div class="col-md-12">
                                    <p><asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="label label-danger"  ControlToValidate="inputUsuario" runat="server" ErrorMessage="*Email" Display="Dynamic"></asp:RequiredFieldValidator></p>  
                                            <p><asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="label label-danger" ControlToValidate="inputPassword" runat="server" ErrorMessage="*Senha" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator></p>
                       
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end of form -->
                </div>
            </div>
        </div>


    </form>

    <script type="text/javascript" src="../bower_components/jquery/dist/jquery.min.js"></script>
    <script src="../bower_components/jquery-ui/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../bower_components/tether/dist/js/tether.min.js"></script>
    <script type="text/javascript" src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="../bower_components/jquery-slimscroll/jquery.slimscroll.js"></script>
    <!-- modernizr js -->
    <script type="text/javascript" src="../bower_components/modernizr/modernizr.js"></script>
    <script type="text/javascript" src="../bower_components/modernizr/feature-detects/css-scrollbars.js"></script>
    <!-- classie js -->
    <script type="text/javascript" src="../bower_components/classie/classie.js"></script>
    <!-- Rickshow Chart js -->
    <script src="../bower_components/d3/d3.js"></script>
    <script src="../bower_components/rickshaw/rickshaw.js"></script>
    <!-- Morris Chart js -->
    <script src="../bower_components/raphael/raphael.min.js"></script>
    <script src="../bower_components/morris.js/morris.js"></script>
    <!-- Horizontal-Timeline js -->
    <script type="text/javascript" src="assets/pages/dashboard/horizontal-timeline/js/main.js"></script>
    <!-- amchart js -->
    <script type="text/javascript" src="assets/pages/dashboard/amchart/js/amcharts.js"></script>
    <script type="text/javascript" src="assets/pages/dashboard/amchart/js/serial.js"></script>
    <script type="text/javascript" src="assets/pages/dashboard/amchart/js/light.js"></script>
    <script type="text/javascript" src="assets/pages/dashboard/amchart/js/custom-amchart.js"></script>
    <!-- i18next.min.js -->
    <script type="text/javascript" src="../bower_components/i18next/i18next.min.js"></script>
    <script type="text/javascript" src="../bower_components/i18next-xhr-backend/i18nextXHRBackend.min.js"></script>
    <script type="text/javascript" src="../bower_components/i18next-browser-languagedetector/i18nextBrowserLanguageDetector.min.js"></script>
    <script type="text/javascript" src="../bower_components/jquery-i18next/jquery-i18next.min.js"></script>
    <!-- Custom js -->
    <script type="text/javascript" src="assets/pages/dashboard/custom-dashboard.js"></script>
    <script type="text/javascript" src="assets/js/script.js"></script>

    <!-- pcmenu js -->
    <script src="assets/js/pcoded.min.js"></script>
    <script src="assets/js/demo-12.js"></script>
    <script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/js/jquery.mousewheel.min.js"></script>

</body>
</html>
