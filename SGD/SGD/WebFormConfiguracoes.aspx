<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormConfiguracoes.aspx.cs" Inherits="SGD.WebFormConfiguracoes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>Configuracao

        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li class="active">Configuracoes</li>
        </ol>
    </section>
    <br />


    <link href="bower_components/bootstrap/dist/css/pagination.css" rel="stylesheet" />


    <div class="row">
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#Cursos" data-toggle="tab">Cursos</a></li>
                    <li><a href="#Departamento" data-toggle="tab">Departamento</a></li>
                    <li><a href="#Categoria" data-toggle="tab">Categoria</a></li>
                    <li><a href="#Pedidos" data-toggle="tab">Pedidos</a></li>
                    <li><a href="#Portas" data-toggle="tab">Port SMS</a></li>
                    <li><a href="#Usuarios" data-toggle="tab">Usuarios</a></li>

                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="Cursos">
                        <div class="post">
                            <div class="text-right">
                                <a href="#curso" data-toggle="modal" data-target="#curso"><i class="ion-plus">Novo Curso</i></a>
                            </div>
                            <br />
                            <div>
                                <asp:GridView ID="GridViewCurso" CssClass="table table-responsive table-striped table-bordered no-margin" runat="server" AllowPaging="True" AllowSorting="true" AutoGenerateColumns="False" DataKeyNames="idCurso" DataSourceID="SqlDataSourceCurso">
                                    <Columns>
                                        <asp:BoundField DataField="idCurso" HeaderText="Code" InsertVisible="False" ReadOnly="True" SortExpression="idCurso" />
                                        <asp:BoundField DataField="Curso" HeaderText="Curso" SortExpression="Curso" />
                                        <asp:BoundField DataField="DescricaoCurso" HeaderText="Descricao" SortExpression="DescricaoCurso" />
                                    </Columns>
                                     <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" />
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
                    <div class="tab-pane" id="Departamento">
                        <div class="text-right">
                            <a href="#departamentos" data-toggle="modal" data-target="#departamentos"><i class="ion-plus">Novo Departamento</i></a>
                        </div>
                        <br />
                        <asp:GridView ID="GridViewDepartamento" CssClass="table table-responsive table-striped table-bordered no-margin" runat="server" AutoGenerateColumns="False" DataKeyNames="iddepartamento" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
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

                    <div class="tab-pane" id="Categoria">
                        <div class="form-horizontal">
                            <div class="text-right">
                                <a href="#categoria" data-toggle="modal" data-target="#categoria"><i class="ion-plus">Nova Categoria</i></a>
                            </div>
                            <br />
                            <asp:GridView ID="GridViewCategoria" CssClass="table table-striped table-responsive table-bordered no-margin" runat="server" AutoGenerateColumns="False" DataKeyNames="idCategoria" DataSourceID="SqlDataSourceCategoria" AllowPaging="True" AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                    <div class="tab-pane" id="Pedidos">
                        <div class="form-horizontal">
                            <div class="text-right">
                                <a href="#pedidos" data-toggle="modal" data-target="#pedidos"><i class="ion-plus">Novos Pedidos</i></a>
                            </div>
                            <br />
                            <asp:GridView ID="GridViewPedidos" CssClass="table table-striped table-bordered nowrap" runat="server" AutoGenerateColumns="False" DataKeyNames="idPedidos" DataSourceID="SqlDataSourcePedido" AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

                    <div class="tab-pane" id="Portas">

                        <asp:UpdatePanel runat="server">
                            <ContentTemplate>

                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-3">
                                            <asp:TextBox ID="TextBoxCOMSMS" ValidateRequestMode="Enabled" Placeholder="Ex:. COM10" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:Button ID="btnAddUpdateCOM" OnClick="btnAddUpdateCOM_Click" CssClass="btn-info btn" runat="server" Text="Port SMS" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-3 ">
                                            <%

                                                //       si = new SGD.Models.sgdbEntities;
                                                var busca = si.COMConfig_tb.ToList();
                                                foreach (var item in busca)
                                                {
                                                    PortCOM = item.COMConfig; %>
                                            <div class="info-box bg-aqua">
                                                <span class="info-box-icon"><i class="fa fa-send-o"></i></span>

                                                <div class="info-box-content">

                                                    <span class="info-box-number"><%=PortCOM %></span>

                                                    <div class="progress">
                                                        <div class="progress-bar" style="width: 0%"></div>
                                                    </div>
                                                    <span class="progress-description">Porta Modem
                                                    </span>
                                                </div>
                                                <!-- /.info-box-content -->
                                            </div>
                                            <%}%>
                                        </div>
                                    </div>


                                </div>
                                <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                    <div class="tab-pane" id="Usuarios">
                        <asp:UpdatePanel runat="server">
                            <ContentTemplate>


                                <div class="form-horizontal">

                                    <div class="form-group ">
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="txtNomeusuario" CssClass="form-control" Placeholder="Nome Completo" runat="server"></asp:TextBox>

                                        </div>
                                        <div class="col-sm-3">
                                            <asp:DropDownList ID="txtSexo" runat="server" CssClass="form-control ">
                                                <asp:ListItem>Feminino</asp:ListItem>
                                                <asp:ListItem>Masculino</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:DropDownList ID="txtEstadoCivil" runat="server" CssClass="form-control">
                                                <asp:ListItem>Solterio(a)</asp:ListItem>
                                                <asp:ListItem>Casado(a)</asp:ListItem>
                                                <asp:ListItem>Divorciado(a)</asp:ListItem>
                                                <asp:ListItem>Viuvo(a)</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:DropDownList ID="txtTipo" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceTipoUsuario" DataTextField="Nome_tipo" DataValueField="id_tipo_usuario">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceTipoUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [id_tipo_usuario], [Nome_tipo] FROM [Tipo_usuario_tb]"></asp:SqlDataSource>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2 control-label">
                                            <label>Data nascimento:</label>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtDataNascimento" CssClass="date datepicker" TextMode="Date" runat="server"></asp:TextBox>

                                        </div>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="txtNaturalidade" CssClass="form-control" Placeholder="Naturalidade" runat="server"></asp:TextBox>

                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="txtResidencia" CssClass="form-control" Placeholder="Residencia" runat="server"></asp:TextBox>

                                        </div>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtAltura" CssClass="form-control" Placeholder="Altura ex.: 1,85" runat="server"></asp:TextBox>

                                        </div>
                                        <div class="col-sm-2">
                                            <asp:DropDownList ID="txtDocumento" runat="server" CssClass="form-control">
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
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="txtNumeroDocuemtno" CssClass="form-control" Placeholder="Nº de documento" runat="server"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="txtLocalEmissao" CssClass="form-control" Placeholder="Local de Emissao" runat="server"></asp:TextBox>

                                        </div>

                                        <label class="col-sm-2 control-label">Data emissao:</label>
                                        <div class="col-sm-2">

                                            <asp:TextBox ID="txtDataEmissao" TextMode="Date" CssClass="date datepicker" runat="server"></asp:TextBox>

                                        </div>
                                        <label class="col-sm-2 control-label">Departamento:</label>

                                        <div class="col-sm-2">
                                            <asp:DropDownList ID="txtDeparta" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceDeparta" DataTextField="NomeDepartamento" DataValueField="iddepartamento">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceDeparta" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [iddepartamento], [NomeDepartamento] FROM [departamento] ORDER BY [NomeDepartamento]"></asp:SqlDataSource>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="txtEmails" CssClass="form-control" Placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>

                                        </div>
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="txtSenhas" CssClass="form-control" Placeholder="Senha" TextMode="Password" runat="server"></asp:TextBox>
                                        </div>

                                    </div>

                                    <div class="form-group">

                                        <div class="col-sm-12">
                                            <div class="text-right">
                                                <asp:Button ID="btnSalvarUsuario" OnClick="btnSalvarUsuario_Click" CssClass=" btn btn-info" runat="server" Text="Salvar" />
                                            </div>
                                        </div>
                                    </div>

                                    <!-- end of col-sm-8 -->

                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <div class="">
                                                <asp:GridView runat="server" ID="gdvw1" CssClass="table table-responsive table-striped table-bordered no-margin" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idUser" DataSourceID="SqlDataSourceUsuario" OnSelectedIndexChanged="gdvw1_SelectedIndexChanged">
                                                    <Columns>
                                                        <asp:CommandField ShowSelectButton="True" />
                                                        <asp:BoundField DataField="idUser" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="idUser" />
                                                        <asp:BoundField DataField="NomeUsuario" HeaderText="Nome" SortExpression="NomeUsuario" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                        <asp:BoundField DataField="GuidMap" HeaderText="GuidMap" SortExpression="GuidMap" Visible="false" />
                                                    </Columns>
                                                    <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" />
                                                </asp:GridView>


                                                <asp:SqlDataSource ID="SqlDataSourceUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" DeleteCommand="DELETE FROM [user] WHERE [idUser] = @idUser" InsertCommand="INSERT INTO [user] ([NomeUsuario], [Email], [GuidMap]) VALUES (@NomeUsuario, @Email, @GuidMap)" SelectCommand="SELECT [idUser], [NomeUsuario], [Email], [GuidMap] FROM [user]" UpdateCommand="UPDATE [user] SET [NomeUsuario] = @NomeUsuario, [Email] = @Email, [GuidMap] = @GuidMap WHERE [idUser] = @idUser">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="idUser" Type="Int32" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="NomeUsuario" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="GuidMap" Type="String" />
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="NomeUsuario" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="GuidMap" Type="String" />
                                                        <asp:Parameter Name="idUser" Type="Int32" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>



                                            </div>

                                        </div>

                                    </div>

                                </div>


                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </div>
                </div>



            </div>



        </div>

    </div>




    <div class="modal fade" id="curso">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Novo Curso</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">

                        <asp:TextBox ID="txtNomeCurso" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="NomeCurso" runat="server"></asp:TextBox>
                        <span class="md-line"></span>
                    </div>
                    <div class="form-group">

                        <asp:TextBox ID="txtDescricaoCurso" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao" runat="server"></asp:TextBox>
                        <span class="md-line"></span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-info" OnClick="btnSalvar_Click" Text="Salvar" />

                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <div class="modal fade" id="departamentos">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Novo Departamento</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">

                        <asp:TextBox ID="txtNomeDepartamento" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Nome" runat="server"></asp:TextBox>
                        <span class="md-line"></span>
                    </div>
                    <div class="form-group">

                        <asp:TextBox ID="txtDescricaoDepartamento" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao" runat="server"></asp:TextBox>
                        <span class="md-line"></span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <asp:Button ID="btnSalvarDepartamento" runat="server" CssClass="btn btn-info" OnClick="btnSalvarDepartamento_Click" Text="Salvar" />
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <div class="modal fade" id="categoria">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Nova Categoria</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">

                        <asp:TextBox ID="txtNomeCategoria" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Nome Categoria" runat="server"></asp:TextBox>
                        <span class="md-line"></span>
                    </div>
                    <div class="form-group">

                        <asp:TextBox ID="txtDescricaoCategoria" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao" runat="server"></asp:TextBox>
                        <span class="md-line"></span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>

                    <asp:Button ID="btnSalvarCategoria" runat="server" CssClass="btn btn-info" OnClick="btnSalvarCategoria_Click" Text="Salvar" />
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->


    <div class="modal fade" id="pedidos">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Novo Pedido</h4>
                </div>
                <div class="form-group">

                    <asp:TextBox ID="txtNomePedido" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Nome Pedido" runat="server"></asp:TextBox>
                    <span class="md-line"></span>
                </div>
                <div class="form-group">

                    <asp:TextBox ID="txtDescricaoPedido" ValidateRequestMode="Enabled" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao" runat="server"></asp:TextBox>
                    <span class="md-line"></span>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <asp:Button ID="btnSalvarpedidos" runat="server" CssClass="btn btn-info" OnClick="btnSalvarpedidos_Click" Text="Salvar" />

            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->

    <!-- /.modal -->




</asp:Content>
