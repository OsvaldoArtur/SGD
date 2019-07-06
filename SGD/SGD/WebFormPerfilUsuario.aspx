<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormPerfilUsuario.aspx.cs" Inherits="SGD.WebFormPerfilUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>Perfil do Usuario

        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li class="active">Perfil do Usuario</li>
        </ol>
    </section>
    <br />

    <%
        si = new SGD.Models.sgdbEntities();
        var us = si.user.Where(d => d.idUser == idu).FirstOrDefault();
        var usa = si.Tipo_usuario_tb.Where(d => d.id_tipo_usuario == us.id_tipo_usuario).FirstOrDefault();
    %>



    <div class="row">


        <div class="col-md-4">

            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <div class="text-center">
                        <i class="fa fa-fw fa-4x fa-user-circle-o"></i>
                    </div>
                    <h3 class="profile-username text-center"><%=us.NomeUsuario %></h3>

                    <p class="text-muted text-center"><%=usa.Nome_tipo %></p>

                    <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                            <b>Sexo </b> <a class="pull-right"><%=us.Sexo %></a>
                        </li>
                        <li class="list-group-item">
                            <b>Estado Civil</b> <a class="pull-right"><%=us.Estado_civil %></a>
                        </li>
                        <li class="list-group-item">
                            <b>Data Nascimento</b> <a class="pull-right"><%=DateTime.Parse( us.Data_nascimento.ToString()).ToShortDateString() %></a>
                        </li>
                    </ul>

                    <%--<a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>--%>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

           
        </div>
        <div class="col-md-4">
             <!-- About Me Box -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Sobre mim <i class="fa fa-fw fa-smile-o"></i></h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <strong><i class="fa fa-book margin-r-5"></i>Departamento</strong>

                    <p class="text-muted">
                        
                   <%var dep = si.departamento.Where(w => w.iddepartamento == us.idDepartamento).FirstOrDefault(); %>
                                        <%=dep.NomeDepartamento%>
                    </p>

                    <br />

                    <strong><i class="fa fa-map-marker margin-r-5"></i>Residencia</strong>

                    <p class="text-muted"><%=us.Local_residencia %></p>

                    <br />

                    <strong><i class="fa fa-inbox margin-r-5"></i>Email</strong>

                    <p>
                       
                        <span class="text-muted"><%=us.Email%></span>
                    </p>

                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
          <div class="col-md-4">

            <!-- Profile Image -->
            <div class="box box-primary">
                      <div class="box-header with-border">
                    <h3 class="box-title">Documentos <i class="fa fa-fw fa-info"></i></h3>
                </div>
                <div class="box-body box-profile">
                 
                    <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                            <b>Tipo de documento </b> <a class="pull-right"><%=us.Documento %></a>
                        </li>
                        <li class="list-group-item">
                            <b>Nº documento</b> <a class="pull-right"><%=us.N_documento %></a>
                        </li>
                        <li class="list-group-item">
                            <b>Data da emissao</b> <a class="pull-right"><%=DateTime.Parse( us.Data_emissao.ToString()).ToShortDateString() %></a>
                        </li>
                              <li class="list-group-item">
                            <b>Local de emissao</b> <a class="pull-right"><%=us.Local_emissao%></a>
                        </li>
                  
                    </ul>

                    <%--<a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>--%>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

           
        </div>
     
       
        <!-- System clock end -->
    </div>
    <div class="row">

                <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                       <% 
                                        si = new SGD.Models.sgdbEntities();
                                        var contaexpe = si.EnviarDocumentos.Where(a => a.idUsuario == idu).Count();
                                    %>
                                    <h3><%=contaexpe %> +</h3>


                    <p>Expedientes Enviados</p>
                </div>
                <div class="icon">
                    <i class="ion ion-document-text"></i>
                </div>
            </div>
        </div>

        
                <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                       <% 
                                        si = new SGD.Models.sgdbEntities();
                                        var contacart = si.DocumentoUsuario_tb.Where(a => a.idUserSender == idu).Count();
                                    %>
                                    <h3><%=contacart %> +</h3>


                    <p>Emails enviados</p>
                </div>
                <div class="icon">
                    <i class="ion ion-upload"></i>
                </div>
            </div>
        </div>

        
    </div>
    <!-- Page-body end -->

</asp:Content>
