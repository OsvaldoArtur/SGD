<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormNovoExpediente.aspx.cs" Inherits="SGD.WebFormNovoExpediente" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <section class="content-header">
      <h1>
        Navegacao

      </h1>
      <ol class="breadcrumb">
        <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i> Inicio</a></li>
        <li class="active">Novo Expediente</li>
      </ol>
    </section>
    <br />
<div class="row">
    <div class="col-lg-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <div class="box-title">Novo Expediente</div>
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
                                <asp:TextBox ID="txtTitulo" placeholder="Entidade" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Nivel:</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="txtUrgencia" CssClass="form-control" runat="server">
                                    <asp:ListItem>Normal</asp:ListItem>
                                    <asp:ListItem>Medio</asp:ListItem>
                                    <asp:ListItem>Urgente</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:TextBox ID="txtContacto" placeholder="Ex:. 840000000" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group ">
                            <div class="col-sm-12">
                                <asp:FileUpload ID="FileUpload2"  AllowMultiple="true" ValidateRequestMode="Enabled" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Categoria:</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="txtcategoria" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="NomeCategoria" DataValueField="idCategoria">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idCategoria], [NomeCategoria] FROM [categoria]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Departame.:</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="txtDepartamentos" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDepartamento" DataTextField="NomeDepartamento" DataValueField="iddepartamento">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceDepartamento" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [iddepartamento], [NomeDepartamento] FROM [departamento]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Pasta:</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="txtPasta" CssClass="form-control " runat="server" DataSourceID="SqlDataSourcePasta" DataTextField="NomePasta" DataValueField="idpastadepartamento">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourcePasta" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT * FROM [pastadepartamento] WHERE ([idDepartamento] = @idDepartamento)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtDepartamentos" DefaultValue="" Name="idDepartamento" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:TextBox ID="txtDescricao" placeholder="Comentario" TextMode="MultiLine" Rows="3" Text="Null" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                        </div>
                    </div>


                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="btn-block">
                                    <asp:Button ID="Button1" OnClick="Button1_Click" ValidationGroup="0A" CssClass="btn btn-success" runat="server" Text="Enviar" />
                                    <asp:Button ID="Button2" CssClass="btn btn-info" runat="server" Text="Cancelar" />

                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="">

                    <div class="form-group ">
                        <asp:Label ID="lblSucesso" CssClass="text-success" Visible="false" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group ">
                        <%--<asp:Button ID="Button3" runat="server" Text="Button" />--%>
                        <ajaxToolkit:ConfirmButtonExtender ID="btn1" runat="server" TargetControlID="Button1" ConfirmText="Deseja submeter o pedido? " OnClientCancel="OnClientCancel" />
                        <asp:ScriptManager runat="server"></asp:ScriptManager>
                    </div>


                    <div class="card-block">
                    </div>
                </div>


            </div>
            <div class="box-footer">
                <div class="form-horizontal">
                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="col-sm-12">
  <div class="row">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtTitulo" ErrorMessage="*Titulo" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtUrgencia" ErrorMessage="*Urgencia" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtContacto" ErrorMessage="*Contacto" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtcategoria" ErrorMessage="*Categoria" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtDepartamentos" ErrorMessage="*Departamento" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtPasta" ErrorMessage="*Pasta" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="0A" CssClass="label label-danger" runat="server" ControlToValidate="txtDescricao" ErrorMessage="*Descricao" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                            </div>
                        </div>
                    </div>

                </div>
              
            </div>
        </div>
    </div>
    </div>
  <script type="text/javascript">
        function OnClientCancel() {
            alert("Cancelado!");
        }
    </script>

</asp:Content>
  