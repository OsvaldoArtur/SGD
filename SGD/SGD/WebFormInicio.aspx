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

                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">




                            <%--   <div class="col-sm-4">
                                <a href="Web_Forms/WebForm1T.aspx">
                                    <div class="card bg-primary large-widget-card">

                                        <div class="card-block-big">
                                            <h4>Pesquisa Rapida</h4>
                                            <br />
                                            <i class="icofont icofont-search"></i>
                                        </div>
                                    </div>
                                </a>
                            </div>--%>

                            <%-- <div class="col-sm-4">
                                <a href="WebFormInicio.aspx">
                                    <div class="card bg-info large-widget-card">
                                        <div class="card-block-big">
                                            <h4>Destaques</h4>
                                            <br />
                                            <i class="icofont icofont-star"></i>
                                        </div>
                                    </div>
                                </a>
                            </div>--%>
                            <%--    <div class="col-sm-4">
                                <a href="WebFormInicio.aspx">
                                    <div class="card bg-inverse large-widget-card">
                                        <div class="card-block-big">
                                            <h4>Todos Documentos</h4>
                                            <br />
                                            <i class="icofont icofont-list"></i>
                                        </div>
                                    </div>
                                </a>
                            </div>--%>


                            <%--  <div class="col-sm-3">
                                <a href="WebFormNovoExpediente.aspx">
                                    <div class="card bg-dark-primary  large-widget-card">
                                        <div class="card-block-big">
                                            <h4>Expediente</h4>
                                            <br />
                                            <i class="icofont icofont-document-folder"></i>
                                        </div>
                                    </div>
                                </a>
                            </div>--%>
                        </div>
                        <%--                        <div class="row">
                            <%
                         //       si = new SGD.Models.sgdbEntities;
                                var busca = si.View_PermissaoDepartamento.Where(d=> d.idUsuario == idu && d.Estado.Equals("true")).ToList();
                                foreach (var item in busca)
                                {
                                    nome = item.NomeDepartamento;
                                    id = item.GuidDepartamento; %>
                            <div class="col-sm-4">

                                <a href="WebFormPastaDepartamento.aspx?id=<%=id%>">
                                

                                    <div class="card table-card widget-success-card">
                                        <div class="">
                                            <div class="row-table">
                                                <div class="col-sm-3 card-block-big">
                                                    <i class="icofont icofont-tags"></i>
                                                </div>
                                                <div class="col-sm-9">

                                                    <h6><%=nome %></h6>
                                                   
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <%}%>


                        </div>--%>


              <%--          <div class="row">
                            <%
                                //       si = new SGD.Models.sgdbEntities;
                                var busca = si.View_PermissaoDepartamento.Where(d => d.idUsuario == idu && d.Estado.Equals("true")).ToList();
                                foreach (var item in busca)
                                {
                                    nome = item.NomeDepartamento;
                                    id = item.GuidDepartamento; %>
                            <div class="col-sm-4">

                                <a href="WebFormPastaDepartamento.aspx?id=<%=id%>">


                                    <div class="card table-card widget-success-card">
                                        <div class="">
                                            <div class="row-table">
                                                <div class="col-sm-3 card-block-big">
                                                    <i class="icofont icofont-tags"></i>
                                                </div>
                                                <div class="col-sm-9">

                                                    <h6><%=nome %></h6>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <%}%>
                        </div>--%>
                        <div class="row">
                            <%
                                //       si = new SGD.Models.sgdbEntities;
                                var busca = si.View_PermissaoDepartamento.Where(d => d.idUsuario == idu && d.Estado.Equals("true")).ToList();
                                foreach (var item in busca)
                                {
                                    nome = item.NomeDepartamento;
                                    id = item.GuidDepartamento;
                              //      var que = si.View_Recebimentos.Where(d=> d.id)
                                     %>
                               <div class="col-md-6 col-xl-4" >
                            <a href="WebFormPastaDepartamento.aspx?id=<%=id%>"> 
                             
                                    <div class="card client-blocks card-border-info " style="width:360px; height:100px">
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

                        <div class="row">
                           <%-- <p>
                                <asp:Button ID="Button1" CssClass="btn btn-primary" OnClick="Button1_Click" runat="server" Text="Button" />
                            </p>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
