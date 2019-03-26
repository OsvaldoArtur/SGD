<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDepartamentos.aspx.cs" Inherits="SGD.WebFormDepartamentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Departamento</h4>
                            <span class="text-muted">Adicionar Departamentos e Lista </span>
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
                                <%--   <li class="breadcrumb-item"><a href="#!">Dashboard</a>
                                                </li>--%>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">

                           

                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Lista de Departamentos</h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <i class="icofont icofont-refresh"></i>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                    </div>

                                    <div class=" row card-block">
                                        <div class="col-sm-12">
                                            <div class="text-right">
                                                <a href="#sign-in" data-toggle="modal" data-target="#sign-in"><i class="ion-plus"> Novo Departamento</i></a>
                                            </div>
                                            <br />
                                            <ul class="list-view">
                                                <li>
                                                    <div class="card user-card">
                                                        <div class="card-block">
                                                            <div class="media">

                                                                <div class="media-body">
                                                                    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered nowrap" runat="server" AutoGenerateColumns="False" DataKeyNames="iddepartamento" DataSourceID="SqlDataSource1">
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
                    </div>
                </div>
            </div>
        </div>


        <div id="sign-in" class="modal fade" role="dialog">
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

                                    <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-primary btn-md btn-block waves-effect text-center" OnClick="adicionar_Click" Text="Salvar" />
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
</asp:Content>
