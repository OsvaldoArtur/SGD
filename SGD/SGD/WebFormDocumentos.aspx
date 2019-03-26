<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDocumentos.aspx.cs" Inherits="SGD.WebFormDocumentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Documentos</h4>
                            <span class="text-muted">Adicionar Documentos e Lista </span>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Departamento
                                </li>
                                <li class="breadcrumb-item">Pasta Departamento
                                </li>
                                <li class="breadcrumb-item">Documentos
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">


                            <div class="col-lg-12">
                                <div class="card card-border-info">
                                    <div class="card-header">
                                          <h5></h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                        <div class="card-title">

                                        </div>

                                    </div>
                                    <div class="row card-block">
                                           <div style="overflow: scroll" class="col-lg-12">
                                                 <div class="col-lg-12">
                                                           <asp:GridView ID="GridView1" CssClass=" table table-hover table-striped table-bordered nowrap" runat="server" AutoGenerateColumns="False" DataKeyNames="idEnvio,idpastadepartamento,iddepartamento,idUser,idCategoria" DataSourceID="SqlDataSourceExpediente">
                                        <Columns>
                                            <asp:BoundField DataField="idEnvio" HeaderText="idEnvio" ReadOnly="True" SortExpression="idEnvio" />
                                            <asp:BoundField DataField="DataEnvio" HeaderText="DataEnvio" SortExpression="DataEnvio" />
                                            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                            <asp:BoundField DataField="Mensagem" HeaderText="Mensagem" SortExpression="Mensagem" />
                                            <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                                            <asp:BoundField DataField="Contacto" HeaderText="Contacto" SortExpression="Contacto" />
                                            <asp:BoundField DataField="NivelUrgencia" HeaderText="NivelUrgencia" SortExpression="NivelUrgencia" />
                                            <asp:BoundField DataField="NomeCategoria" HeaderText="NomeCategoria" SortExpression="NomeCategoria" />
                                            <asp:BoundField DataField="NomeUsuario" HeaderText="NomeUsuario" SortExpression="NomeUsuario" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="Senha" HeaderText="Senha" SortExpression="Senha" />
                                            <asp:BoundField DataField="idpastadepartamento" HeaderText="idpastadepartamento" ReadOnly="True" SortExpression="idpastadepartamento" />
                                            <asp:BoundField DataField="NomePasta" HeaderText="NomePasta" SortExpression="NomePasta" />
                                            <asp:BoundField DataField="iddepartamento" HeaderText="iddepartamento" ReadOnly="True" SortExpression="iddepartamento" />
                                            <asp:BoundField DataField="NomeDepartamento" HeaderText="NomeDepartamento" SortExpression="NomeDepartamento" />
                                            <asp:BoundField DataField="idUser" HeaderText="idUser" ReadOnly="True" SortExpression="idUser" />
                                            <asp:BoundField DataField="idCategoria" HeaderText="idCategoria" ReadOnly="True" SortExpression="idCategoria" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceExpediente" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idEnvio], [DataEnvio], [Estado], [Mensagem], [Titulo], [Contacto], [NivelUrgencia], [NomeCategoria], [NomeUsuario], [Email], [Senha], [idpastadepartamento], [NomePasta], [iddepartamento], [NomeDepartamento], [idUser], [idCategoria] FROM [View_Expedientes] WHERE ([idpastadepartamento] = @iddepartamento)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="iddepartamento" QueryStringField="id" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
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
    </div>

</asp:Content>
