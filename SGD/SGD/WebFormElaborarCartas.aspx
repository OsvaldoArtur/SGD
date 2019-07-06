<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormElaborarCartas.aspx.cs" Inherits="SGD.WebFormElaborarCartas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>Navegacao
        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li class="active">Nova Carta</li>
        </ol>
    </section>
    <br />

    <div class="row">
        <div class="col-lg-12">

            <div class="box box-info">
                <div class="box-header with-border">
                    <div class="box-title">Nova Carta</div>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

                <div class="box-body">

                    <div class="form-horizontal">

                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <asp:TextBox ID="txtNomeCliente" placeholder="Nome Completo" CssClass="form-control" runat="server"></asp:TextBox>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <asp:TextBox ID="txtContacto" CssClass="form-control" TextMode="Number" runat="server" placeholder="Ex: 848046991"></asp:TextBox>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <asp:TextBox ID="txtMotivo" placeholder="Motivo" CssClass="form-control" runat="server"></asp:TextBox>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <asp:FileUpload ID="FileUpload2" AllowMultiple="true" ToolTip="Selecionar Ficheiros 'docx, xls, pdf, txt, other'" ValidateRequestMode="Enabled" runat="server" />

                                </div>
                            </div>
                            <div class="form-group">

                                <div class="col-sm-12">
                                    <asp:TextBox ID="txtDescr" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Descricao" Text="Default"></asp:TextBox>

                                </div>
                            </div>


                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Curso:</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="txtCurso" CssClass="form-control " runat="server" DataSourceID="SqlDataSourceCursos" DataTextField="Curso" DataValueField="idCurso">
                                    </asp:DropDownList>

                                    <asp:SqlDataSource ID="SqlDataSourceCursos" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idCurso], [Curso] FROM [Curso_tb]"></asp:SqlDataSource>
                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Periodo:</label>
                                <div class="col-sm-4">
                                    <asp:DropDownList ID="DropDownListPeriodo" CssClass="form-control" runat="server">
                                        <asp:ListItem>Laboral</asp:ListItem>
                                        <asp:ListItem>Laboral-Tarde</asp:ListItem>
                                        <asp:ListItem>Pos-Laboral</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <label class="col-sm-2 control-label">Ano:</label>
                                <div class="col-sm-4">
                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                        <asp:ListItem>1º Ano</asp:ListItem>
                                        <asp:ListItem>2º Ano</asp:ListItem>
                                        <asp:ListItem>3º Ano</asp:ListItem>
                                        <asp:ListItem>4º Ano</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Pedido:</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="txtPedido" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcePedidos" DataTextField="Pedido" DataValueField="idPedidos">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourcePedidos" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idPedidos], [Pedido], [DescricaoPedido] FROM [Pedidos_tb]"></asp:SqlDataSource>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Departame.:</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="txtDepartamentos" CssClass="form-control " runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDepartamento" DataTextField="NomeDepartamento" DataValueField="iddepartamento">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceDepartamento" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [iddepartamento], [NomeDepartamento] FROM [departamento]"></asp:SqlDataSource>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Pasta:</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="txtPasta" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcePasta" DataTextField="NomePasta" DataValueField="idpastadepartamento">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourcePasta" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT * FROM [pastadepartamento] WHERE ([idDepartamento] = @idDepartamento)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="txtDepartamentos" DefaultValue="" Name="idDepartamento" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12 text-right">
                                    <asp:Button ID="Button1" ValidationGroup="0A" CssClass="btn btn-success" runat="server" OnClick="Button1_Click" Text="Enviar Carta" />
                                    <asp:Button ID="Button2" CssClass="btn btn-info" runat="server" Text="Cancelar" />

                                </div>
                            </div>
                        </div>
                    </div>






                </div>

                <div class="box-footer">
               <div class="col-lg-12">
                         <div class="form-group">
                        <div class="col-sm-12">

                            <div class="row">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtNomeCliente" ErrorMessage="*Nome Cliente" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtCurso" ErrorMessage="*Urgencia" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtPedido" ErrorMessage="*Pedido" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="DropDownListPeriodo" ErrorMessage="*Periodo" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtMotivo" ErrorMessage="*Motivo" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*Ano" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtDepartamentos" ErrorMessage="*Departamento" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtPasta" ErrorMessage="*Pasta" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtDescr" ErrorMessage="*Comentario" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtContacto" ErrorMessage="*Contacto" Display="Dynamic"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                   </div>
                </div>
            </div>
        </div>
    </div>





</asp:Content>
