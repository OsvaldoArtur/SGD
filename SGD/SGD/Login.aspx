<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SGD.index" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- Bootstrap 3.3.7 -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css" />


</head>
<body class="hold-transition">
    <div class="login-box">

        <div class="login-logo">
           <a href="index.aspx" ><img src="dist/img/ucm_logo.jpg" /></a>    
            <br />
            <a href="index.aspx" class="text-muted">Sistema de Gestao de <b>Expedientes</b></a>
            
        </div>

        <div class="login-box-body">

            <p class="login-box-msg">Entrar</p>

            <form runat="server">
                <div class="form-group has-feedback">
                    <input type="email" runat="server" id="inputUsuario" class="form-control" placeholder="Email">
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" runat="server" id="inputPassword" class="form-control" placeholder="Password">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">

               <div class="form-group">
                     
                    <div class="col-sm-12 text-center">
                        <asp:Button ID="btnEnter" CssClass="btn btn-primary" OnClick="btnEntrar_Click" Text="Entrar" runat="server" />
                    </div>
                   
               </div>
                </div>
            </form>
            <br />
            <p class="text-center">
                <br />


                Todos os direitos Reservados. @Osvaldo Artur Dionisio

        </div>
        <br />
          <div class="">
                        <label id="mensages" runat="server" visible="false" style="font-size: 14px" class=" label label-danger">Email ou Senha Incorrecta, por favor Tente Novamente!</label>   
                    </div>
    </div>
   
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>



</body>
</html>

