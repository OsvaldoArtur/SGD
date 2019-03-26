<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormNovoExpediente.aspx.cs" Inherits="SGD.WebFormNovoExpediente" %>

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
                                <li class="breadcrumb-item">Novo Expediente
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="card card-border-info">
                                    <div class="card-header">
                                        <h5>Novo Expediente</h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <%--    <i class="icofont icofont-refresh"></i>--%>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                    </div>

                                    <div class="row card-block">
                              
                                        <div class="col-sm-12">
                                            <div class="text-right">
                                                <%--    <a href="#sign-in" data-toggle="modal" data-target="#sign-in"><i class="ion-plus">Novo</i></a>--%>
                                            </div>
                                            <br />
                                            <ul class="list-view">
                                                <li>
                                                    <div class="card user-card">
                                                        <div class="card-header">
                                                            <h6 class="text-muted">Descricao Envio</h6>
                                                        </div>
                                                        <div class="card-block">
                                                            <div class="media">

                                                                <div class="media-body">
                                                                    <div class=" row">
                                                                        <div class="col-sm-12">
                                                                            <div class="row">
                                                                                <div class="input-group col-sm-6">

                                                                                    <asp:TextBox ID="txtTitulo" placeholder="Titulo Envio" CssClass="form-control form-control-feedback" runat="server"></asp:TextBox>
                                                                                </div>
                                                                                <div class="input-group col-sm-6">
                                                                                    <label class="col-form-label col-sm-4">Nivel:</label>
                                                                                    <asp:DropDownList ID="txtUrgencia" CssClass="form-control form-control-feedback col-sm-8" runat="server">
                                                                                        <asp:ListItem>Normal</asp:ListItem>
                                                                                        <asp:ListItem>Medio</asp:ListItem>
                                                                                        <asp:ListItem>Urgente</asp:ListItem>
                                                                                    </asp:DropDownList>

                                                                                </div>
                                                                                <%--                                 <div class="border-checkbox-group border-checkbox-group-default">
                                                <input class="border-checkbox" type="checkbox" id="checkbox0">
                                                <label class="border-checkbox-label" for="checkbox0">Do you like it?</label>
                                            </div>--%>
                                                                            </div>
                                                                            <div class="row">

                                                                                <div class="input-group col-sm-6">
                                                                                    <asp:TextBox ID="txtContacto" placeholder="Ex:. 840000000" CssClass="form-control form-control-feedback" runat="server"></asp:TextBox>
                                                                                </div>
                                                                                <div class="input-group col-sm-6">
                                                                                    <label class="col-form-label col-sm-4">Categoria:</label>
                                                                                    <asp:DropDownList ID="txtcategoria" CssClass="form-control form-control-feedback col-sm-8" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="NomeCategoria" DataValueField="idCategoria">
                                                                                    </asp:DropDownList>
                                                                                    <asp:SqlDataSource ID="SqlDataSourceCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idCategoria], [NomeCategoria] FROM [categoria]"></asp:SqlDataSource>
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
                                                                            <asp:FileUpload ID="FileUpload2" CssClass="form-control" AllowMultiple="true" ValidateRequestMode="Enabled" runat="server" />

                                                                        </div>
                                                                        <div class="input-group col-lg-6">
                                                                            <asp:Label ID="lblSucesso" CssClass="text-success" Visible="false" runat="server" Text="Label"></asp:Label>
                                                                        </div>

                                                                    </div>
                                                                            <div class="row">
                                                                                <div class="input-group col-sm-12">
                                                                                </div>

                                                                                <div class="input-group col-sm-12">
                                                                                    <asp:TextBox ID="txtDescricao" placeholder="Comentario" TextMode="MultiLine" Rows="4" Text="Null" CssClass="form-control form-control-feedback" runat="server"></asp:TextBox>
                                                                                </div>

                                                                                <div class="card-block">
                                                                                       <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="btn btn-success" runat="server" Text="Enviar" />
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
    <script>
    function msgConfirmOkCancel() {
        var x = confirm("Deseja Realmente efetuar a operacao?"); 
        if (x == true) {
    

            confirm("Sucesso");
       
        } else {
            confirm("Cancel");
        }
    }

</script>
</asp:Content>
