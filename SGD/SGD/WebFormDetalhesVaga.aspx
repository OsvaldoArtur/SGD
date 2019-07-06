<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDetalhesVaga.aspx.cs" Inherits="SGD.WebFormDetalhesVaga" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>VAGAS TFC
        </h1>
        <ol class="breadcrumb">
            <li class="active"><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li>TFC</li>
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
            </div>
            <!-- /.box -->


        </div>

    </div>

</asp:Content>
