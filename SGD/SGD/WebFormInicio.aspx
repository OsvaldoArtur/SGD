<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormInicio.aspx.cs" Inherits="SGD.WebFormInicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Navegacao
        <%--<small>Version 2.0</small>--%>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
    <br />
  
    
         <div class="row">
              <%
                                si = new SGD.Models.sgdbEntities();
                                var busca = si.View_PermissaoDepartamento.Where(d => d.idUsuario == idu && d.Estado.Equals("true")).ToList();
                                foreach (var item in busca)
                                {
                                    nome = item.NomeDepartamento;
                                    id = item.GuidDepartamento;

                            %>
        <div class="col-md-4 col-sm-6 col-xs-12">
             <a href="WebFormPastaDepartamento.aspx?id=<%=id%>">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="ion ion-ios-folder"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><%=nome %></span>
              <span ><small> Criada por <%=item.NomeUsuario %></small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
</a>
        </div>
          <!-- /.info-box -->
                            <%}%>
                        </div>
                  
  
                       

</asp:Content>
