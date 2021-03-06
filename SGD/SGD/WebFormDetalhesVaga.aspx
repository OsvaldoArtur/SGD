﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDetalhesVaga.aspx.cs" Inherits="SGD.WebFormDetalhesVaga" %>

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
            <li>Detalhes</li>

        </ol>
    </section>
    <%
        si = new SGD.Models.sgdbEntities();

        var us = si.Vagas_Submissao_tb.Where(d => d.id_vaga_submissao == idtv).FirstOrDefault();
    %>
    <br />
    <div class="row">
        <div class="col-md-12">

            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">

                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="text-center">
                                    <h2 class=""><%=us.Titulo %></h2>
                                </div>
                                <h3 class="profile-username text-center"><%=us.Ano %></h3>



                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <ul class="list-group list-group-unbordered">


                                    <li class="list-group-item">
                                        <b>Descricao</b>
                                    </li>

                                </ul>
                                <p>
                                    <a class="pull-left"><%=us.Descricao %></a>
                                </p>
                            </div>
                            <div class="col-sm-6">
                                <ul class="list-group list-group-unbordered">
                                    <li class="list-group-item">
                                        <b>Data de Inicio: </b><a class="pull-right"><%=us.Data_inicio %></a>
                                    </li>
                                    <li class="list-group-item">
                                        <b>Data Final: </b><a class="pull-right"><%=us.Data_fim %></a>
                                    </li>
                                    <li class="list-group-item">
                                        <b>Estado da Vaga</b> <a class="pull-right"><%=us.Estado %></a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>


                    <a href="WebFormSubmissao.aspx?idsub=<%=us.Guidmap%>" class="btn btn-primary pull-right"><b>Link de Submissao</b></a>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">

                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" CssClass="btn btn-success" Text="Aprovados" />
                                <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" CssClass="btn btn-danger" Text="Rejeitados" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.box -->


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
                                    <asp:GridView ID="GridViewCurso" CssClass="table table-responsive table-striped table-bordered no-margin" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idSubmissao,idCurso,idSupervisor,id_vaga_submissao" DataSourceID="SqlDataSourceSub" OnRowCommand="GridViewCurso_RowCommand">
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
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-success" CommandName="sim" Text="Aprovar" />
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-danger" CommandName="nao" Text="Rejeitar" />
                                        </Columns>
                                        <PagerStyle HorizontalAlign="Right" CssClass="pagination-ys" />
                                    </asp:GridView>


                     

                                    <asp:SqlDataSource ID="SqlDataSourceSub" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT idSubmissao, Nome_completo, Tema, Tipo, Data_Submissao, Data_Registo, Estado, Contacto_Estudante, Codigo_Projecto, Guidmap, Documento, idCurso, Curso, idSupervisor, Expr1, Departamento, Contacto, id_vaga_submissao, Expr2 FROM View_Submissao WHERE (Expr2 = @Expr2) AND (Estado = @Estado)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="Expr2" QueryStringField="id" Type="String" />
                                            <asp:Parameter DefaultValue="nao" Name="Estado" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>




                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <asp:Label ID="Label1" CssClass="text-success" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>

        </div>
                        <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

</asp:Content>
