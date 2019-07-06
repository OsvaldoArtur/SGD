<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormResumoActual.aspx.cs" Inherits="SGD.WebFormResumoActual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>Navegacao

        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li class="active">Resumo do Sistema</li>
        </ol>
    </section>
    <br />



    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <%

                        var contar = si.EnviarDocumentos.Count();
                    %>
                    <h3><%=contar %> +</h3>


                    <p>Total Expedientes</p>
                </div>
                <div class="icon">
                    <i class="ion ion-document-text"></i>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-maroon">
                <div class="inner">
                    <%
                        var contardepartamentos = si.departamento.Count();
                    %>
                    <h3><%=contardepartamentos%> +</h3>


                    <p>Departamentos</p>
                </div>
                <div class="icon">
                    <i class="ion ion-ios-more"></i>
                </div>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
                <div class="inner">
                    <%
                        var contarPastas = si.pastadepartamento.Count();
                    %>
                    <h3><%=contarPastas %> +</h3>
                    <p>Pastas</p>
                </div>
                <div class="icon">
                    <i class="ion ion-folder"></i>
                </div>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <div class="inner">
                    <%
                        var contarusuarios = si.user.Count();
                    %>
                    <h3><%=contarusuarios %> +</h3>

                    <p>Usuarios Registados</p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
            </div>
        </div>

        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
                <div class="inner">
                    <%
                        var contarDocumentos = si.documentosenviados.Count();
                    %>
                    <h3><%=contarDocumentos %> +</h3>

                    <p>Documentos</p>
                </div>
                <div class="icon">
                    <i class="ion ion-document"></i>
                </div>

            </div>
        </div>
        <!-- ./col -->
    </div>











</asp:Content>
