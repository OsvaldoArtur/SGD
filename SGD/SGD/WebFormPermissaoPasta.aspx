<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormPermissaoPasta.aspx.cs" Inherits="SGD.WebFormPermissaoPasta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Expedientes</h4>
                            <span class="text-muted">Criar novos expedientes </span>
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
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="card card-border-info">
                                    <div class="card-header">
                                        <h5>Permissao Pasta</h5>
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
                                                            <asp:CheckBox ID="CheckBox1" runat="server"  OnCheckedChanged="CheckBox1_CheckedChanged"/>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged1"/>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>



                                            <asp:SqlDataSource ID="SqlDataSourcePastas" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [iddepartamento], [NomeDepartamento] FROM [departamento]"></asp:SqlDataSource>



                                        </div>
                                        <div class="col-lg-12">

                                      
                                        <asp:Button ID="Button1" Visible="false" CssClass="btn btn-info" OnClick="Button1_Click" runat="server" Text="Button" />
                            </div>

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
