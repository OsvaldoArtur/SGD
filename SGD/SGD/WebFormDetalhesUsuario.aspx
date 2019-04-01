<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDetalhesUsuario.aspx.cs" Inherits="SGD.WebFormDetalhesUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Permissao</h4>
                            <span class="text-muted">Permissoes usuario </span>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Permissao
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <asp:Panel ID="panelPermissao" runat="server">
                            <div class="row">

                                <div class="col-md-6">
                                    <div class="card card-border-info">
                                        <div class="card-header">
                                            <h5 runat="server" id="nomeusuario"></h5>
                                            <div class="card-header-right">
                                                <i class="icofont icofont-rounded-down"></i>
                                                <i class="icofont icofont-close-circled"></i>
                                            </div>
                                        </div>

                                        <div class=" row card-block">
                                            <div class="col-lg-12">
                                                <%--         <asp:TreeView ID="TreeView1" ShowCheckBoxes="Leaf" runat="server" OnTreeNodeCheckChanged="TreeView1_TreeNodeCheckChanged">
                                            </asp:TreeView>--%>
                                                <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered nowrap" runat="server" AutoGenerateColumns="False" DataKeyNames="iddepartamento" DataSourceID="SqlDataSourcePastas">
                                                    <Columns>
                                                        <asp:BoundField DataField="iddepartamento" HeaderText="iddepartamento" ReadOnly="True" SortExpression="iddepartamento" InsertVisible="False" Visible="True" />
                                                        <asp:BoundField DataField="NomeDepartamento" HeaderText="NomeDepartamento" SortExpression="NomeDepartamento" />
                                                        <asp:TemplateField HeaderText="Permissao">
                                                            <EditItemTemplate>
                                                                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged1" />
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged1" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>



                                                <asp:SqlDataSource ID="SqlDataSourcePastas" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [iddepartamento], [NomeDepartamento] FROM [departamento]"></asp:SqlDataSource>



                                            </div>
                                            <div class="col-lg-12">


                                                <%--<asp:Button ID="Button1" Visible="false" CssClass="btn btn-info" OnClick="Button1_Click" runat="server" Text="Button" />--%>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card b-l-success business-info services m-b-20">
                                        <div class="card-header">
                                            <div class="service-header">
                                                <a href="#">
                                                    <h5 class="card-header-text">Permissao Departamento</h5>
                                                </a>
                                            </div>

                                        </div>
                                        <div class="card-block">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <table class="table">
                                                        <thead>
                                                            <tr class="">
                                                                <th>Dept.</th>
                                                                <th>Estado</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                si = new SGD.Models.sgdbEntities();
                                                                var procurausuario = si.View_PermissaoDepartamento.Where(d=>d.idUser == idusario). ToList();
                                                                
                                                                foreach (var item in procurausuario)
                                                                {


                                                                %>

                                                              <tr class="border-bottom-primary">
                                                                <th scope="row"><%=item.NomeDepartamento %></th>
                                                                <td><%=item.Estado %></td>
                                                                
                                                            </tr>

                                                        </tbody>
                                                        <%} %>
                                                    </table>



                                                </div>
                                                <!-- end of col-sm-8 -->
                                            </div>
                                            <!-- end of row -->
                                        </div>
                                        <!-- end of card-block -->
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="panelPermissaolista" runat="server">
                            <div class="row">
                            </div>

                        </asp:Panel>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
