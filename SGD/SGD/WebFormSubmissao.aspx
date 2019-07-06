<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSub.Master" AutoEventWireup="true" CodeBehind="WebFormSubmissao.aspx.cs" Inherits="SGD.WebFormSubmissao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div runat="server" visible="false" id="msg" class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-warning"></i>Alerta de submissao!</h4>
                Trabalho submetido com sucesso! Codigo da Submissao <b><%=cdsub %></b>
            </div>
        </div>
    </div>
    <p class="h4">Submeter Trabalho Final do Curso</p>

    <div class="row">
        <div class="col-md-12">

            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#Formulario" data-toggle="tab">Preencher Formulario</a></li>
                    <li><a href="#Pesquisa" data-toggle="tab">Pesquisar</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="Formulario">
                        <div class="post">

                            <div class="form-group">
                                <div class="box box-solid">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Formulario de Submissao</h3>
                                    </div>
                                    <div class="box-body">
                                        <div>
                                            <p>Preencha de forma correcta o formulario, para a submissao do seu trabalho final do curso!</p>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-horizontal">
                                                    <div class="form-group">
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ValidationGroup="a" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Nome Completo" ID="txtNome_Completo"></asp:TextBox>
                                                        </div>
                                                        <div class="col-sm-1 control-label">
                                                            <label>Curso:</label>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <asp:DropDownList ID="dpCurso" ValidationGroup="a" ValidateRequestMode="Enabled" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceCurso" DataTextField="Curso" DataValueField="idCurso"></asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceCurso" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idCurso], [Curso] FROM [Curso_tb] ORDER BY [Curso]"></asp:SqlDataSource>
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <asp:DropDownList ID="dpTipo" CssClass="form-control" ValidationGroup="a" ValidateRequestMode="Enabled" runat="server">
                                                                <asp:ListItem>Disertacao</asp:ListItem>
                                                                <asp:ListItem>Monografia</asp:ListItem>
                                                                <asp:ListItem>Projecto</asp:ListItem>
                                                                <asp:ListItem>Tese</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-sm-6">
                                                            <asp:TextBox runat="server" ValidationGroup="a" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Tema" ID="txtTema"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-1 control-label">
                                                            <label>Supervisor:</label>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <asp:DropDownList ID="DropDownList1" ValidationGroup="a" ValidateRequestMode="Enabled" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceSupervisor" DataTextField="Nome_completo" DataValueField="idSupervisor"></asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceSupervisor" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idSupervisor], [Nome_completo] FROM [Supervisor_mono_tb] ORDER BY [Nome_completo]"></asp:SqlDataSource>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-sm-1">
                                                            <asp:TextBox runat="server" ValidationGroup="a" ValidateRequestMode="Enabled" CssClass="form-control" Enabled="false" placeholder="+258" ID="TextBox1"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-3">
                                                            <asp:TextBox runat="server" ValidationGroup="a" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Contacto" ID="txtContacto"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-1 control-label">
                                                            <label>File:</label>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:FileUpload accept=".pdf" ValidateRequestMode="Enabled" runat="server" ToolTip="Anexar o ficheiro em *PDF" ID="Ficheiro" />
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-footer">
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <div class="text-right">
                                                    <asp:Button runat="server" ID="btnSalvar" OnClick="btnSalvar_Click" Text="Submeter" CssClass="btn btn-info" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="label label-danger" ControlToValidate="txtContacto" runat="server" ErrorMessage="*Contacto" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="label label-danger" ControlToValidate="dpCurso" runat="server" ErrorMessage="*Curso" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="label label-danger" ControlToValidate="DropDownList1" runat="server" ErrorMessage="*Supervisor" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="label label-danger" ControlToValidate="txtNome_Completo" runat="server" ErrorMessage="*Nome Estudante" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="label label-danger" ControlToValidate="txtTema" runat="server" ErrorMessage="*Tema" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="label label-danger" ControlToValidate="dpTipo" runat="server" ErrorMessage="*Tipo" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="Pesquisa">
                        <div class="post">
                            <asp:UpdatePanel runat="server">
                                <ContentTemplate>

                                    <div class="form-group">
                                        <div class="box box-solid">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Pesquiar Submissao</h3>
                                            </div>
                                            <div class="box-body">
                                                <div class="form-horizontal">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <div class="col-sm-12">
                                                                Codigo da Submissao:
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-sm-6">
                                                                <div class="input-group input-group-md">
                                                                    <asp:TextBox ID="Text1" runat="server" CssClass="form-control" ValidateRequestMode="Enabled" ValidationGroup="a" placeholder="Procurar por codigo"></asp:TextBox>
                                                                    <span class="input-group-btn">
                                                                        <asp:Button ID="Button2" OnClick="Button2_Click" CssClass="btn btn-info" ValidationGroup="a" runat="server" Text="Procurar" />

                                                                    </span>
                                                                </div>
                                                            </div>


                                                            <div class="col-sm-6">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="label label-danger" ControlToValidate="Text1" runat="server" ErrorMessage="*Codigo" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>

                                                            </div>

                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-sm-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered nowrap" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                                                                        <Columns>
                                                                            <asp:CommandField ShowSelectButton="True" />
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>




                </div>
            </div>
        </div>
    </div>
</asp:Content>
