<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormElaborarCartas.aspx.cs" Inherits="SGD.WebFormElaborarCartas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Cartas</h4>
                            <span class="text-muted">Criar novas Cartas </span>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Cartas
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">


                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Cartas</h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <i class="icofont icofont-refresh"></i>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                    </div>

                                    <div class=" row card-block">
                                        <div class="col-sm-12">
                                            <%--         <div class="text-right">
                                                <a href="#sign-in" data-toggle="modal" data-target="#sign-in"><i class="ion-plus"> Novo Pedidos</i></a>
                                            </div>--%>
                                            <br />
                                            <ul class="list-view">
                                                <li>
                                                    <div class="card user-card">
                                                        <div class="card-block">
                                                            <div class="media">

                                                                <div class="media-body">
                                                                    <div class=" row">
                                                                        <div class="col-sm-12">
                                                                            <div class="row">
                                                                                <div class="input-group col-sm-6">

                                                                                    <asp:TextBox ID="txtNomeCliente" placeholder="Nome Completo" CssClass="form-control form-control-feedback" runat="server"></asp:TextBox>
                                                                                </div>
                                                                                <div class="input-group col-sm-6">
                                                                                    <label class="col-form-label col-sm-4">Curso:</label>
                                                                                    <asp:DropDownList ID="txtCurso" CssClass="form-control form-control-feedback col-sm-8" runat="server" DataSourceID="SqlDataSourceCursos" DataTextField="Curso" DataValueField="idCurso">
                                                                                    </asp:DropDownList>

                                                                                    <asp:SqlDataSource ID="SqlDataSourceCursos" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idCurso], [Curso] FROM [Curso_tb]"></asp:SqlDataSource>

                                                                                </div>
                                                                                <%--                                 <div class="border-checkbox-group border-checkbox-group-default">
                                                <input class="border-checkbox" type="checkbox" id="checkbox0">
                                                <label class="border-checkbox-label" for="checkbox0">Do you like it?</label>
                                            </div>--%>
                                                                            </div>
                                                                            <div class="row">


                                                                                <div class="input-group col-sm-6">
                                                                                    <label class="col-form-label col-sm-4">Pedido:</label>
                                                                                    <asp:DropDownList ID="txtPedido" CssClass="form-control form-control-feedback col-sm-8" runat="server" DataSourceID="SqlDataSourcePedidos" DataTextField="Pedido" DataValueField="idPedidos">
                                                                                    </asp:DropDownList>
                                                                                    <asp:SqlDataSource ID="SqlDataSourcePedidos" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idPedidos], [Pedido], [DescricaoPedido] FROM [Pedidos_tb]"></asp:SqlDataSource>
                                                                                </div>
                                                                                <div class="input-group col-sm-6">
                                                                              
                                                                                    <label class="col-form-label col-sm-4 ">Periodo:</label>
                                                                                    <asp:DropDownList ID="DropDownListPeriodo" CssClass="form-control form-control-feedback col-sm-8" runat="server">
                                                                                        <asp:ListItem>Laboral</asp:ListItem>
                                                                                        <asp:ListItem>Laboral-Tarde</asp:ListItem>
                                                                                        <asp:ListItem>Pos-Laboral</asp:ListItem>

                                                                                    </asp:DropDownList>
                                                                                </div>

                                                                            </div>

                                                                            <div class="row">


                                                                                <div class="input-group col-sm-6">
<%--                                                                                                                                                                    <label class="col-form-label col-sm-4">Categoria:</label>
                                                                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control form-control-feedback col-sm-8" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="NomeCategoria" DataValueField="idCategoria">
                                                                                    </asp:DropDownList>
                                                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idCategoria], [NomeCategoria] FROM [categoria]">/asp:SqlDataSource>--%>
                                                                                <asp:TextBox ID="txtMotivo" placeholder="Motivo" CssClass="form-control form-control-feedback" runat="server"></asp:TextBox>
                                                                                     </div>
                                                                                <div class="input-group col-sm-6">
                                                                                    <%-- <asp:TextBox ID="txtContacto" placeholder="Ex:. 840000000" CssClass="form-control form-control-feedback" runat="server"></asp:TextBox>--%>
                                                                                    <label class="col-form-label col-sm-4">Ano Lectivo:</label>
                                                                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control form-control-feedback col-sm-8" runat="server">
                                                                                        <asp:ListItem>1º Ano</asp:ListItem>
                                                                                        <asp:ListItem>2º Ano</asp:ListItem>
                                                                                        <asp:ListItem>3º Ano</asp:ListItem>
                                                                                        <asp:ListItem>4º Ano</asp:ListItem>

                                                                                    </asp:DropDownList>
                                                                                </div>

                                                                            </div>

                                                                            <div class="row">


                                                                                <div class="input-group col-sm-6">
                                                                                    <label class="col-form-label col-sm-4">Departame.:</label>
                                                                                    <asp:DropDownList ID="txtDepartamentos" CssClass="form-control form-control-feedback col-sm-8" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDepartamento" DataTextField="NomeDepartamento" DataValueField="iddepartamento">
                                                                                    </asp:DropDownList>
                                                                                    <asp:SqlDataSource ID="SqlDataSourceDepartamento" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [iddepartamento], [NomeDepartamento] FROM [departamento]"></asp:SqlDataSource>
                                                                                </div>
                                                                                <div class="input-group col-sm-6">
                                                                                    <label class="col-form-label col-sm-4">Pasta:</label>
                                                                                    <asp:DropDownList ID="txtPasta" CssClass="form-control form-control-feedback col-sm-8" runat="server" DataSourceID="SqlDataSourcePasta" DataTextField="NomePasta" DataValueField="idpastadepartamento">
                                                                                    </asp:DropDownList>
                                                                                    <asp:SqlDataSource ID="SqlDataSourcePasta" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT * FROM [pastadepartamento] WHERE ([idDepartamento] = @idDepartamento)">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="txtDepartamentos" DefaultValue="" Name="idDepartamento" PropertyName="SelectedValue" Type="Int32" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row">
                                                                                <div class="input-group col-lg-6">
                                                                                    <asp:FileUpload ID="FileUpload2" CssClass="form-control" AllowMultiple="false" ValidateRequestMode="Enabled" runat="server" />

                                                                                </div>
                                                                                                                                     <div class="input-group col-lg-6">
                                                                                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" AllowMultiple="false" ValidateRequestMode="Enabled" runat="server" />

                                                                                </div>
                                                                                <div class="input-group col-lg-6">
                                                                                    <asp:Label ID="lblSucesso" CssClass="text-success" Visible="false" runat="server" Text="Label"></asp:Label>
                                                                                </div>

                                                                            </div>
                                                                            <div class="row">
       <%--                                                                         <div class="input-group col-sm-12">
                                                                                </div>

                                                                                <div class="input-group col-sm-12">
                                                                                    <asp:TextBox ID="txtDescricao" placeholder="Comentario" TextMode="MultiLine" Rows="4" Text="Null" CssClass="form-control form-control-feedback" runat="server"></asp:TextBox>
                                                                                </div>--%>

                                                                                <div class="card-block">
                                                                                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" OnClick="Button1_Click" OnClientClick="return confirm('Are you sure you want to save selected records?');"  Text="Enviar Carta" />
                                                                                    <asp:Button ID="Button2" CssClass="btn btn-info" runat="server" Text="Cancelar" />

                                                                                </div>


                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>



                                                            </div>

                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
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
