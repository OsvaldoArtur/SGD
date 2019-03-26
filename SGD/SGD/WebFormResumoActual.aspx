<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormResumoActual.aspx.cs" Inherits="SGD.WebFormResumoActual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Resumo</h4>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio 
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Resumo do Sistema 
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                       
                                          <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-linkein">
                                                    <%
                                                        
                                                        var contar = si.EnviarDocumentos.Count();
                                                         %>
                                                    <h3><%=contar %> +</h3>
                                                    <span class="m-t-10">Exepedinetes</span>
                                                    <i class="icofont icofont-numbered"></i>
                                                </div>
                                            </div>
                                        </div>
                              <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-linkein">
                                                    <%
                                                        var contardepartamentos = si.departamento.Count();
                                                         %>
                                                    <h3><%=contardepartamentos%> +</h3>
                                                    <span class="m-t-10">Departamentos</span>
                                                    <i class="icofont icofont-offside"></i>
                                                </div>
                                            </div>
                                        </div>
                              <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-linkein">
                                                    <%
                                                        var contarPastas = si.pastadepartamento.Count();
                                                         %>
                                                    <h3><%=contarPastas %> +</h3>
                                                    <span class="m-t-10">Pasta Departamentos</span>
                                                    <i class="icofont icofont-folder"></i>
                                                </div>
                                            </div>
                                        </div>
                              <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-linkein">
                                                    <%
                                                        var contarDocumentos = si.documentosenviados.Count();
                                                         %>
                                                    <h3><%=contarDocumentos %> +</h3>
                                                    <span class="m-t-10">Ficheiros</span>
                                                    <i class="icofont icofont-file"></i>
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
