<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormInicio.aspx.cs" Inherits="SGD.WebFormInicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Inicio</h4>

                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="WebFormPrintResult.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Report
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            <%
                                si = new SGD.Models.sgdbEntities();
                                var busca = si.View_PermissaoDepartamento.Where(d => d.idUsuario == idu && d.Estado.Equals("true")).ToList();
                                foreach (var item in busca)
                                {
                                    nome = item.NomeDepartamento;
                                    id = item.GuidDepartamento;

                            %>
                            <div class="col-md-6 col-xl-4">
                                <a href="WebFormPastaDepartamento.aspx?id=<%=id%>">

                                    <div class="card client-blocks card-border-info " style="width: 360px; height: 100px">
                                        <div class="card-block">
                                            <div class="row">
                                                <div class="col-lg-2">
                                                    <i class="icofont icofont-2x icofont-folder-open icofont-2x text-info"></i>
                                                </div>
                                                <div class="col-lg-10">
                                                    <h5 class=" text-muted "><%=nome %></h5>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </a>
                            </div>

                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
