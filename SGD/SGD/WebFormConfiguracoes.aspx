<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormConfiguracoes.aspx.cs" Inherits="SGD.WebFormConfiguracoes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Categorias</h4>
                        </div>

                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio 
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Categoria 
                                </li>

                            </ul>
                        </div>

                    </div>
                    <div class="">
                        <div class="card-block">


                            <div class="shares-like">
                                <ul>
                                    <li>
                                        <i class="icofont icofont-plus text-dark"></i>
                                        <span></span>Cadastro de Novos
                                    </li>
                                    <li>
                                        <asp:Button ID="btnCursos" OnClick="btnCursos_Click" CssClass="btn-info btn" runat="server" Text="Cursos" />
                                    </li>
                                    <li>
                                        <asp:Button ID="btnDepartamento" OnClick="btnDepartamento_Click" CssClass="btn-info btn" runat="server" Text="Departamento" />
                                    </li>
                                    <li>
                                        <asp:Button ID="btnCategoria" OnClick="btnCategoria_Click" CssClass="btn-info btn" runat="server" Text="Categoria" />
                                    </li>

                                    <li>
                                        <asp:Button ID="ButtonPedidos" OnClick="ButtonPedidos_Click" CssClass="btn-info btn" runat="server" Text="Pedidos" />
                                    </li>

                                    <li>
                                        <asp:Button ID="btnCOM" OnClick="btnCOM_Click" CssClass="btn-info btn" runat="server" Text="Port SMS" />
                                    </li>

                                    <li>
                                        <asp:Button ID="btnUsuario" CssClass="btn-info btn" runat="server" Text="Usuarios" />
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>


                    <div class="page-body">
                        <div class="">
                            <asp:Panel ID="PanelCursos" Visible="false" runat="server">
                                <div class="row">


                                    <div class="col-lg-12">
                                        <div class="card card-border-info">
                                            <div class="card-header">
                                                <h5>Lista de Cursos</h5>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                            </div>

                                            <div class=" row card-block">
                                                <div class="col-sm-12">
                                                    <div class="text-right">
                                                        <a href="#curso" data-toggle="modal" data-target="#curso"><i class="ion-plus">Novo Curso</i></a>
                                                    </div>
                                                    <br />
                                                    <ul class="list-view">
                                                        <li>
                                                            <div class="card user-card">
                                                                <div class="card-block">
                                                                    <div class="media">

                                                                        <div class="media-body">
                                                                            <asp:GridView ID="GridViewCurso" CssClass="table table-striped table-bordered nowrap" runat="server" AutoGenerateColumns="False" DataKeyNames="idCurso" DataSourceID="SqlDataSourceCurso">
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="idCurso" HeaderText="Code" InsertVisible="False" ReadOnly="True" SortExpression="idCurso" />
                                                                                    <asp:BoundField DataField="Curso" HeaderText="Curso" SortExpression="Curso" />
                                                                                    <asp:BoundField DataField="DescricaoCurso" HeaderText="Descricao" SortExpression="DescricaoCurso" />
                                                                                </Columns>

                                                                            </asp:GridView>

                                                                            <asp:SqlDataSource ID="SqlDataSourceCurso" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" DeleteCommand="DELETE FROM [Curso_tb] WHERE [idCurso] = @idCurso" InsertCommand="INSERT INTO [Curso_tb] ([Curso], [DescricaoCurso]) VALUES (@Curso, @DescricaoCurso)" SelectCommand="SELECT [idCurso], [Curso], [DescricaoCurso] FROM [Curso_tb] ORDER BY [Curso]" UpdateCommand="UPDATE [Curso_tb] SET [Curso] = @Curso, [DescricaoCurso] = @DescricaoCurso WHERE [idCurso] = @idCurso">
                                                                                <DeleteParameters>
                                                                                    <asp:Parameter Name="idCurso" Type="Int32" />
                                                                                </DeleteParameters>
                                                                                <InsertParameters>
                                                                                    <asp:Parameter Name="Curso" Type="String" />
                                                                                    <asp:Parameter Name="DescricaoCurso" Type="String" />
                                                                                </InsertParameters>
                                                                                <UpdateParameters>
                                                                                    <asp:Parameter Name="Curso" Type="String" />
                                                                                    <asp:Parameter Name="DescricaoCurso" Type="String" />
                                                                                    <asp:Parameter Name="idCurso" Type="Int32" />
                                                                                </UpdateParameters>
                                                                            </asp:SqlDataSource>

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
                            </asp:Panel>
                            <asp:Panel ID="PanelDepartamento" Visible="false" runat="server">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card card-border-info">
                                            <div class="card-header">
                                                <h5>Lista de Departamentos</h5>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>
                                                </div>
                                            </div>

                                            <div class=" row card-block">
                                                <div class="col-sm-12">
                                                    <div class="text-right">
                                                        <a href="#departamentos" data-toggle="modal" data-target="#departamentos"><i class="ion-plus">Novo Departamento</i></a>
                                                    </div>
                                                    <br />
                                                    <ul class="list-view">
                                                        <li>
                                                            <div class="card user-card">
                                                                <div class="card-block">
                                                                    <div class="media">

                                                                        <div class="media-body">
                                                                            <asp:GridView ID="GridViewDepartamento" CssClass="table table-striped table-bordered nowrap" runat="server" AutoGenerateColumns="False" DataKeyNames="iddepartamento" DataSourceID="SqlDataSource1">
                                                                                <Columns>
                                                                                    <asp:CommandField ShowEditButton="True" />
                                                                                    <asp:BoundField DataField="iddepartamento" HeaderText="iddepartamento" InsertVisible="False" ReadOnly="True" SortExpression="iddepartamento" Visible="False" />
                                                                                    <asp:BoundField DataField="NomeDepartamento" HeaderText="NomeDepartamento" SortExpression="NomeDepartamento" />
                                                                                    <asp:BoundField DataField="DescricaoDepartamanto" HeaderText="DescricaoDepartamanto" SortExpression="DescricaoDepartamanto" />
                                                                                </Columns>
                                                                            </asp:GridView>
                                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" DeleteCommand="DELETE FROM [departamento] WHERE [iddepartamento] = @iddepartamento" InsertCommand="INSERT INTO [departamento] ([NomeDepartamento], [DescricaoDepartamanto]) VALUES (@NomeDepartamento, @DescricaoDepartamanto)" SelectCommand="SELECT * FROM [departamento]" UpdateCommand="UPDATE [departamento] SET [NomeDepartamento] = @NomeDepartamento, [DescricaoDepartamanto] = @DescricaoDepartamanto WHERE [iddepartamento] = @iddepartamento">
                                                                                <DeleteParameters>
                                                                                    <asp:Parameter Name="iddepartamento" Type="Int32" />
                                                                                </DeleteParameters>
                                                                                <InsertParameters>
                                                                                    <asp:Parameter Name="NomeDepartamento" Type="String" />
                                                                                    <asp:Parameter Name="DescricaoDepartamanto" Type="String" />
                                                                                </InsertParameters>
                                                                                <UpdateParameters>
                                                                                    <asp:Parameter Name="NomeDepartamento" Type="String" />
                                                                                    <asp:Parameter Name="DescricaoDepartamanto" Type="String" />
                                                                                    <asp:Parameter Name="iddepartamento" Type="Int32" />
                                                                                </UpdateParameters>
                                                                            </asp:SqlDataSource>
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
                            </asp:Panel>
                            <asp:Panel ID="PanelCategoria" Visible="false" runat="server">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card card-border-info">
                                            <div class="card-header">
                                                <h5>Lista de Categorias</h5>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                            </div>

                                            <div class=" row card-block">
                                                <div class="col-sm-12">
                                                    <div class="text-right">
                                                        <a href="#categoria" data-toggle="modal" data-target="#categoria"><i class="ion-plus">Nova Categoria</i></a>
                                                    </div>
                                                    <br />
                                                    <ul class="list-view">
                                                        <li>
                                                            <div class="card user-card">
                                                                <div class="card-header">
                                                                    <h6 class="text-muted">Categorias</h6>
                                                                </div>
                                                                <div class="card-block">
                                                                    <div class="media">

                                                                        <div class="media-body">
                                                                            <div class="table">
                                                                                <asp:GridView ID="GridViewCategoria" CssClass="table table-striped table-bordered nowrap" runat="server" AutoGenerateColumns="False" DataKeyNames="idCategoria" DataSourceID="SqlDataSourceCategoria">
                                                                                    <Columns>
                                                                                        <asp:BoundField DataField="idCategoria" HeaderText="Code" ReadOnly="True" SortExpression="idCategoria" InsertVisible="False" />
                                                                                        <asp:BoundField DataField="NomeCategoria" HeaderText="Nome" SortExpression="NomeCategoria" />
                                                                                        <asp:BoundField DataField="DescricaoCategoria" HeaderText="Descricao" SortExpression="DescricaoCategoria" />
                                                                                    </Columns>
                                                                                </asp:GridView>
                                                                                <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" DeleteCommand="DELETE FROM [categoria] WHERE [idCategoria] = @idCategoria" InsertCommand="INSERT INTO [categoria] ([NomeCategoria], [DescricaoCategoria]) VALUES (@NomeCategoria, @DescricaoCategoria)" SelectCommand="SELECT [idCategoria], [NomeCategoria], [DescricaoCategoria] FROM [categoria]" UpdateCommand="UPDATE [categoria] SET [NomeCategoria] = @NomeCategoria, [DescricaoCategoria] = @DescricaoCategoria WHERE [idCategoria] = @idCategoria">
                                                                                    <DeleteParameters>
                                                                                        <asp:Parameter Name="idCategoria" Type="Int32" />
                                                                                    </DeleteParameters>
                                                                                    <InsertParameters>
                                                                                        <asp:Parameter Name="NomeCategoria" Type="String" />
                                                                                        <asp:Parameter Name="DescricaoCategoria" Type="String" />
                                                                                    </InsertParameters>
                                                                                    <UpdateParameters>
                                                                                        <asp:Parameter Name="NomeCategoria" Type="String" />
                                                                                        <asp:Parameter Name="DescricaoCategoria" Type="String" />
                                                                                        <asp:Parameter Name="idCategoria" Type="Int32" />
                                                                                    </UpdateParameters>
                                                                                </asp:SqlDataSource>
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
                            </asp:Panel>
                            <asp:Panel ID="PanelPedidos" Visible="false" runat="server">
                                <div class="row">


                                    <div class="col-lg-12">
                                        <div class="card card-border-info">
                                            <div class="card-header">
                                                <h5>Lista de Pedidos</h5>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>
                                                </div>
                                            </div>

                                            <div class=" row card-block">
                                                <div class="col-sm-12">
                                                    <div class="text-right">
                                                        <a href="#pedidos" data-toggle="modal" data-target="#pedidos"><i class="ion-plus">Novos Pedidos</i></a>
                                                    </div>
                                                    <br />
                                                    <ul class="list-view">
                                                        <li>
                                                            <div class="card user-card">
                                                                <div class="card-block">
                                                                    <div class="media">

                                                                        <div class="media-body">
                                                                            <asp:GridView ID="GridViewPedidos" CssClass="table table-striped table-bordered nowrap" runat="server" AutoGenerateColumns="False" DataKeyNames="idPedidos" DataSourceID="SqlDataSourcePedido">
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="idPedidos" HeaderText="Code" InsertVisible="False" ReadOnly="True" SortExpression="idPedidos" />
                                                                                    <asp:BoundField DataField="Pedido" HeaderText="Pedido" SortExpression="Pedido" />
                                                                                    <asp:BoundField DataField="DescricaoPedido" HeaderText="Descricao" SortExpression="DescricaoPedido" />
                                                                                </Columns>


                                                                            </asp:GridView>



                                                                            <asp:SqlDataSource ID="SqlDataSourcePedido" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" DeleteCommand="DELETE FROM [Pedidos_tb] WHERE [idPedidos] = @idPedidos" InsertCommand="INSERT INTO [Pedidos_tb] ([Pedido], [DescricaoPedido]) VALUES (@Pedido, @DescricaoPedido)" SelectCommand="SELECT [idPedidos], [Pedido], [DescricaoPedido] FROM [Pedidos_tb] ORDER BY [Pedido]" UpdateCommand="UPDATE [Pedidos_tb] SET [Pedido] = @Pedido, [DescricaoPedido] = @DescricaoPedido WHERE [idPedidos] = @idPedidos">
                                                                                <DeleteParameters>
                                                                                    <asp:Parameter Name="idPedidos" Type="Int32" />
                                                                                </DeleteParameters>
                                                                                <InsertParameters>
                                                                                    <asp:Parameter Name="Pedido" Type="String" />
                                                                                    <asp:Parameter Name="DescricaoPedido" Type="String" />
                                                                                </InsertParameters>
                                                                                <UpdateParameters>
                                                                                    <asp:Parameter Name="Pedido" Type="String" />
                                                                                    <asp:Parameter Name="DescricaoPedido" Type="String" />
                                                                                    <asp:Parameter Name="idPedidos" Type="Int32" />
                                                                                </UpdateParameters>
                                                                            </asp:SqlDataSource>



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
                            </asp:Panel>
                            <asp:Panel ID="PanelCOM" Visible="false" runat="server">
                                <div class="row">


                                    <div class="col-lg-12">
                                        <div class="card card-border-info">
                                            <div class="card-header">
                                                <h5>Port Nome</h5>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                            </div>

                                            <div class="row card-block">
                                                <div class="col-sm-12">

                                                    <br />
                                                    <ul class="list-view">
                                                        <li>
                                                            <div class="card user-card">
                                                                <div class="card-block">
                                                                    <div class="media">

                                                                        <div class="media-body">
                                                                            <div class="">

                                                                                <div class="input-group">
                                                                                    <asp:TextBox ID="TextBoxCOMSMS" ValidateRequestMode="Enabled" Placeholder="Ex:. COM10" CssClass="form-control form-control-info col-lg-6" runat="server"></asp:TextBox>
                                                                                </div>
                                                                                <div class="input-group">
                                                                                    <asp:Button ID="btnAddUpdateCOM" OnClick="btnAddUpdateCOM_Click" CssClass="btn-info btn" runat="server" Text="Port SMS" />

                                                                                </div>

                                                                            </div>
                                                                            <div class="row">
                                                                                <%

                                                                                    //       si = new SGD.Models.sgdbEntities;
                                                                                    var busca = si.COMConfig_tb.ToList();
                                                                                    foreach (var item in busca)
                                                                                    {
                                                                                        PortCOM = item.COMConfig; %>

                                                                                <div class="col-sm-4">
                                                                                    <div class="card table-card widget-success-card ">
                                                                                        <div class="">
                                                                                            <div class="row-table">
                                                                                                <div class="col-sm-3 card-block-big">
                                                                                                    <i class="icofont icofont-zigzag icofont-2x"></i>
                                                                                                </div>
                                                                                                <div class="col-sm-9">

                                                                                                    <h6><%=PortCOM %></h6>

                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                                <%}%>
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
                            </asp:Panel>


                            <asp:Panel ID="PanelUsuario" Visible="true" runat="server">
                                <div class="row">


                                    <div class="col-md-6">
                                        <div class="card b-l-info business-info services m-b-20">
                                            <div class="card-header">
                                                <div class="service-header">
                                                    <a href="#">
                                                        <h5 class="card-header-text">Novo usuario</h5>
                                                    </a>
                                                </div>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                            </div>
                                            <div class="card-block">
                                                <div class="">
                                                    <div class="form-group row">
                                                        <div class="col-sm-12">
                                                            <asp:TextBox ID="txtNomeusuario" CssClass="form-control form-control-info" Placeholder="Nome Completo" runat="server"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-2">
                                                            <label class="col-form-label">Data nasc.</label>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txtDataNascimento" CssClass="form-control form-control-info" TextMode="Date" runat="server"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtNaturalidade" CssClass="form-control form-control-info" Placeholder="Naturalidade" runat="server"></asp:TextBox>

                                                        </div>

                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-8">
                                                            <asp:TextBox ID="txtResidencia" CssClass="form-control form-control-info" Placeholder="Residencia" runat="server"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txtAltura" CssClass="form-control form-control-info" Placeholder="Altura ex.: 1,85" runat="server"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-3">
                                                            <asp:DropDownList ID="txtDocumento" runat="server" CssClass="form-control form-control-info">
                                                                <asp:ListItem>BI</asp:ListItem>
                                                                <asp:ListItem>NUIT</asp:ListItem>
                                                                <asp:ListItem>Carta de Conducao</asp:ListItem>
                                                                <asp:ListItem>Cartao de Eleitor</asp:ListItem>
                                                                <asp:ListItem>Passaporte</asp:ListItem>
                                                                <asp:ListItem>Espera B.I</asp:ListItem>
                                                                <asp:ListItem>Cedula</asp:ListItem>
                                                                <asp:ListItem>INSS</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <asp:TextBox ID="txtNumeroDocuemtno" CssClass="form-control form-control-info" Placeholder="Nº de documento" runat="server"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtLocalEmissao" CssClass="form-control form-control-info" Placeholder="Local de Emissao" runat="server"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-2">
                                                            <label class="col-form-label">Data emis.</label>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txtDataEmissao" TextMode="Date" CssClass="form-control form-control-info" runat="server"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-6">
                                                            <asp:DropDownList ID="txtEstadoCivil" runat="server" CssClass="form-control form-control-info">
                                                                <asp:ListItem>Solterio(a)</asp:ListItem>
                                                                <asp:ListItem>Casado(a)</asp:ListItem>
                                                                <asp:ListItem>Divorciado(a)</asp:ListItem>
                                                                <asp:ListItem>Viuvo(a)</asp:ListItem>

                                                            </asp:DropDownList>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <asp:DropDownList ID="txtSexo" runat="server" CssClass="form-control form-control-info">
                                                                    <asp:ListItem>Feminino</asp:ListItem>
                                                                    <asp:ListItem>Masculino</asp:ListItem>

                                                                </asp:DropDownList>
                                                            </div>
                                                        

                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-6">
                                                            <asp:DropDownList ID="txtDeparta" runat="server" CssClass="form-control form-control-info" DataSourceID="SqlDataSourceDeparta" DataTextField="NomeDepartamento" DataValueField="iddepartamento">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceDeparta" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [iddepartamento], [NomeDepartamento] FROM [departamento] ORDER BY [NomeDepartamento]"></asp:SqlDataSource>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <asp:DropDownList ID="txtTipo" runat="server" CssClass="form-control form-control-info" DataSourceID="SqlDataSourceTipoUsuario" DataTextField="Nome_tipo" DataValueField="id_tipo_usuario">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceTipoUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [id_tipo_usuario], [Nome_tipo] FROM [Tipo_usuario_tb]"></asp:SqlDataSource>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-12">
                                                            <asp:TextBox ID="txtEmails" CssClass="form-control form-control-info" Placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>

                                                        </div>

                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm-12">
                                                            <asp:TextBox ID="txtSenhas" CssClass="form-control form-control-info" Placeholder="Senha" TextMode="Password" runat="server"></asp:TextBox>
                                                        </div>


                                                    </div>
                                                    <div class="form-group row">

                                                        <div class="col-sm-12">
                                                            <div class="text-right">
                                                                <asp:Button ID="btnSalvarUsuario" OnClick="btnSalvarUsuario_Click" CssClass=" btn btn-info" runat="server" Text="Salvar" />
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- end of col-sm-8 -->
                                                </div>
                                                <!-- end of row -->
                                            </div>
                                            <!-- end of card-block -->
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="card card-border-info">
                                            <div class="card-header">
                                                <h5>lista de Usuarios</h5>
                                                <div class="card-header-right">
                                                    <i class="icofont icofont-rounded-down"></i>
                                                    <i class="icofont icofont-close-circled"></i>

                                                </div>
                                            </div>

                                            <div class="card-block">
                                                <div class="card-block table-border-style">
                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th>#</th>
                                                                    <th>User Name</th>
                                                                    <th>Email User</th>
                                                                    <%--                                                                    <th>Username</th>--%>
                                                                </tr>
                                                            </thead>
                                                            <tbody>

                                                                <%
                                                                    si = new SGD.Models.sgdbEntities();
                                                                    var procurausuario = si.user.ToList();
                                                                    foreach (var item in procurausuario)
                                                                    {


                                                                %>

                                                                <tr>

                                                                    <th scope="row"><a href="WebFormDetalhesUsuario.aspx?id=<%=item.GuidMap %>" class="text-muted"><%=item.idUser %></a></th>
                                                                    <td><a href="WebFormDetalhesUsuario.aspx?id=<%=item.GuidMap %>" class="text-muted"><%=item.NomeUsuario %></a></td>
                                                                    <td><a href="WebFormDetalhesUsuario.aspx?id=<%=item.GuidMap %>" class="text-muted"><%=item.Email %></a></td>
                                                                    <%--<td><%=item.Email %></td>--%>
                                                                </tr>
                                                                <%} %>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>



                        </div>

                    </div>

                </div>
            </div>
        </div>


    </div>
    <div id="curso" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="login-card card-block login-card-modal">
                <div class="md-float-material">
                    <div class="text-center">
                        <%--         <img src="assets/images/auth/logo.png" alt="logo.png">--%>
                    </div>
                    <div class="auth-box">
                        <div class="row m-b-20">
                            <div class="col-md-12">
                                <h3 class="text-center txt-primary">Novo Curso</h3>
                                <div class="input-group">

                                    <asp:TextBox ID="txtNomeCurso" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="NomeCurso" runat="server"></asp:TextBox>
                                    <span class="md-line"></span>
                                </div>
                                <div class="input-group">

                                    <asp:TextBox ID="txtDescricaoCurso" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao" runat="server"></asp:TextBox>
                                    <span class="md-line"></span>
                                </div>

                                <div class="row m-t-15">
                                    <div class="col-md-12">

                                        <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-primary btn-md btn-block waves-effect text-center" OnClick="btnSalvar_Click" Text="Salvar" />
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-10">
                                        <p class="text-inverse text-left m-b-0">@ Osvaldo A. Dionisio</p>
                                        <%--          <p class="text-inverse text-left"><b>Your Autentification Team</b></p>--%>
                                    </div>
                                    <div class="col-md-2">
                                        <%-- <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end of form -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="departamentos" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="login-card card-block login-card-modal">
                <div class="md-float-material">
                    <div class="text-center">
                        <%--         <img src="assets/images/auth/logo.png" alt="logo.png">--%>
                    </div>
                    <div class="auth-box">
                        <div class="row m-b-20">
                            <div class="col-md-12">
                                <h3 class="text-center txt-primary">Novo Departamento </h3>
                            </div>
                        </div>
                        <hr />
                        <div class="input-group">

                            <asp:TextBox ID="txtNomeDepartamento" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Nome" runat="server"></asp:TextBox>
                            <span class="md-line"></span>
                        </div>
                        <div class="input-group">

                            <asp:TextBox ID="txtDescricaoDepartamento" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao" runat="server"></asp:TextBox>
                            <span class="md-line"></span>
                        </div>

                        <div class="row m-t-15">
                            <div class="col-md-12">

                                <asp:Button ID="btnSalvarDepartamento" runat="server" CssClass="btn btn-primary btn-md btn-block waves-effect text-center" OnClick="btnSalvarDepartamento_Click" Text="Salvar" />
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-10">
                                <p class="text-inverse text-left m-b-0">@ Osvaldo A. Dionisio</p>
                                <%--          <p class="text-inverse text-left"><b>Your Autentification Team</b></p>--%>
                            </div>
                            <div class="col-md-2">
                                <%-- <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end of form -->
            </div>
        </div>
    </div>

    <div id="categoria" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="login-card card-block login-card-modal">
                <div class="md-float-material">
                    <div class="text-center">
                        <%--         <img src="assets/images/auth/logo.png" alt="logo.png">--%>
                    </div>
                    <div class="auth-box">
                        <div class="row m-b-20">
                            <div class="col-md-12">
                                <h3 class="text-center txt-primary">Nova Categoria </h3>
                            </div>
                        </div>
                        <hr />
                        <div class="input-group">

                            <asp:TextBox ID="txtNomeCategoria" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Nome Categoria" runat="server"></asp:TextBox>
                            <span class="md-line"></span>
                        </div>
                        <div class="input-group">

                            <asp:TextBox ID="txtDescricaoCategoria" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao" runat="server"></asp:TextBox>
                            <span class="md-line"></span>
                        </div>

                        <div class="row m-t-15">
                            <div class="col-md-12">

                                <asp:Button ID="btnSalvarCategoria" runat="server" CssClass="btn btn-primary btn-md btn-block waves-effect text-center" OnClick="btnSalvarCategoria_Click" Text="Salvar" />
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-10">
                                <p class="text-inverse text-left m-b-0">@ Osvaldo A. Dionisio</p>
                                <%--          <p class="text-inverse text-left"><b>Your Autentification Team</b></p>--%>
                            </div>
                            <div class="col-md-2">
                                <%-- <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end of form -->
            </div>
        </div>
    </div>


    <div id="pedidos" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="login-card card-block login-card-modal">
                <div class="md-float-material">
                    <div class="text-center">
                        <%--         <img src="assets/images/auth/logo.png" alt="logo.png">--%>
                    </div>
                    <div class="auth-box">
                        <div class="row m-b-20">
                            <div class="col-md-12">
                                <h3 class="text-center txt-primary">Novo Pedido </h3>
                            </div>
                        </div>
                        <hr />
                        <div class="input-group">

                            <asp:TextBox ID="txtNomePedido" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Nome Pedido" runat="server"></asp:TextBox>
                            <span class="md-line"></span>
                        </div>
                        <div class="input-group">

                            <asp:TextBox ID="txtDescricaoPedido" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao" runat="server"></asp:TextBox>
                            <span class="md-line"></span>
                        </div>

                        <div class="row m-t-15">
                            <div class="col-md-12">

                                <asp:Button ID="btnSalvarpedidos" runat="server" CssClass="btn btn-primary btn-md btn-block waves-effect text-center" OnClick="btnSalvarpedidos_Click" Text="Salvar" />
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-10">
                                <p class="text-inverse text-left m-b-0">@ Osvaldo A. Dionisio</p>
                                <%--          <p class="text-inverse text-left"><b>Your Autentification Team</b></p>--%>
                            </div>
                            <div class="col-md-2">
                                <%-- <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end of form -->
            </div>
        </div>
    </div>
</asp:Content>
