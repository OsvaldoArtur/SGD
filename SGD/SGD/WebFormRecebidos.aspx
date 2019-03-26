<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormRecebidos.aspx.cs" Inherits="SGD.WebFormRecebidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Expedientes Recebidos</h4>
                        </div>
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio 
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Recebidos
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card card-border-info">
                                    <div class="card-header">
                                          <h5></h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>
                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                        <div class="card-title">

                                        </div>

                                    </div>
                                    <div class="row card-block">
                                           <div style="overflow: scroll" class="col-lg-12">
                                                 <div class="col-lg-12">
                                            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered nowrap" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idRecebimento" DataSourceID="SqlDataSourceListaRecebidos" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="idRecebimento" HeaderText="idRecebimento" ReadOnly="True" SortExpression="idRecebimento" Visible="False" />
                                                    <asp:BoundField DataField="DataRecebimento" DataFormatString="{0:dd/MM/yyyy hh:mm}" HeaderText="DataRecebimento" SortExpression="DataRecebimento" />
                                                    <asp:BoundField DataField="Informacao" HeaderText="Informacao" SortExpression="Informacao" Visible="False" />
                                                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                                                    <asp:BoundField DataField="NivelUrgencia" HeaderText="NivelUrgencia" SortExpression="NivelUrgencia" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSourceListaRecebidos" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [idRecebimento], [DataRecebimento], [Informacao], [Estado], [Titulo], [NivelUrgencia] FROM [View_Recebimentos]"></asp:SqlDataSource>
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
    </div>

</asp:Content>
