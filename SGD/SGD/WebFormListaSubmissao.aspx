<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormListaSubmissao.aspx.cs" Inherits="SGD.WebFormListaSubmissao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <link href="bower_components/bootstrap/dist/css/pagination.css" rel="stylesheet" />


    <section class="content-header">
        <h1>VAGAS TFC
        </h1>
        <ol class="breadcrumb">
            <li class="active"><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li><a href="WebFormCriarVagasTFC.aspx">TFC</a></li>
            <li>Lista Submissao</li>

        </ol>
    </section>
    <br />
    <div class="row">
        <div class="col-md-12">
            <div class="pull-right"><asp:Button runat="server" OnClick="btn_exportex_Click" ID="btn_exportex" Text="Export to xls*" /></div>
        </div>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>

        <div class="col-md-12">
            <div class="form-group">
                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title pull-right">Lista de Submissoes</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="GridViewCurso" CssClass="table table-responsive table-striped table-bordered no-margin" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idSubmissao,idCurso,idSupervisor,id_vaga_submissao" DataSourceID="SqlDataSourceSub">
                                        <Columns>
                                            <asp:BoundField DataField="idSubmissao" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" HeaderText="idSubmissao" ReadOnly="True" SortExpression="idSubmissao">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Nome_completo" HeaderText="Nome_completo" SortExpression="Nome_completo" />
                                            <asp:BoundField DataField="Tema" HeaderText="Tema" SortExpression="Tema" />
                                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                                            <asp:BoundField DataField="Data_Submissao" HeaderText="Data_Submissao" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" SortExpression="Data_Submissao">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Data_Registo" HeaderText="Data_Registo" SortExpression="Data_Registo" />
                                            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                            <asp:BoundField DataField="Contacto_Estudante" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" HeaderText="Contacto_Estudante" SortExpression="Contacto_Estudante">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Codigo_Projecto" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" HeaderText="Codigo_Projecto" SortExpression="Codigo_Projecto">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Guidmap" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" HeaderText="Guidmap" SortExpression="Guidmap">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idCurso" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" HeaderText="idCurso" ReadOnly="True" SortExpression="idCurso">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Curso" HeaderText="Curso" SortExpression="Curso" />
                                            <asp:BoundField DataField="idSupervisor" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" HeaderText="idSupervisor" ReadOnly="True" SortExpression="idSupervisor">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Expr1" HeaderText="Supervisor" SortExpression="Expr1" />
                                            <asp:BoundField DataField="Departamento" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" HeaderText="Departamento" SortExpression="Departamento">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Contacto" HeaderText="Contacto" SortExpression="Contacto" />
                                            <asp:BoundField DataField="id_vaga_submissao" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" HeaderText="id_vaga_submissao" ReadOnly="True" SortExpression="id_vaga_submissao">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Expr2" HeaderStyle-CssClass="hide" ItemStyle-CssClass="hide" HeaderText="Expr2" SortExpression="Expr2">
                                                <HeaderStyle CssClass="hide"></HeaderStyle>

                                                <ItemStyle CssClass="hide"></ItemStyle>
                                            </asp:BoundField>
                                        </Columns>
                                        <PagerStyle HorizontalAlign="Right" CssClass="pagination-ys" />
                                    </asp:GridView>


                     

                                    <asp:SqlDataSource ID="SqlDataSourceSub" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT idSubmissao, Nome_completo, Tema, Tipo, Data_Submissao, Data_Registo, Estado, Contacto_Estudante, Codigo_Projecto, Guidmap, Documento, idCurso, Curso, idSupervisor, Expr1, Departamento, Contacto, id_vaga_submissao, Expr2 FROM View_Submissao WHERE (Expr2 = @Expr2) AND (Estado = @Estado)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="Expr2" QueryStringField="id" Type="String" />
                                            <asp:QueryStringParameter DefaultValue="" Name="Estado" QueryStringField="status" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>




                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                     </div>
                </div>
            </div>

        </div>
                        <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
