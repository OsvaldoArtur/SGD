<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormReport.aspx.cs" Inherits="SGD.WebFormReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
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
                                <li class="breadcrumb-item">Permissao
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Permissao Pasta</h5>
                                        <div class="card-header-right">
                                            <i class="icofont icofont-rounded-down"></i>

                                            <i class="icofont icofont-close-circled"></i>

                                        </div>
                                    </div>

                                    <div class="row card-block">
                                        <div class="col-lg-12">
                                            <div class="container">
                                                       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="10pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="1200px" Width="800px">
            <LocalReport ReportPath="ReportCredential.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSetResposta" />
                </DataSources>
            </LocalReport>
       
        </rsweb:ReportViewer>
                                                       <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SGD.sgdbDataSetUsuarioTableAdapters.userTableAdapter" UpdateMethod="Update">
                                                           <DeleteParameters>
                                                               <asp:Parameter Name="Original_idUser" Type="Int32" />
                                                           </DeleteParameters>
                                                           <InsertParameters>
                                                               <asp:Parameter Name="NomeUsuario" Type="String" />
                                                               <asp:Parameter Name="Email" Type="String" />
                                                               <asp:Parameter Name="Senha" Type="String" />
                                                               <asp:Parameter Name="GuidMap" Type="String" />
                                                               <asp:Parameter Name="Naturalidade" Type="String" />
                                                               <asp:Parameter Name="Local_residencia" Type="String" />
                                                               <asp:Parameter Name="Altura" Type="Decimal" />
                                                               <asp:Parameter Name="Documento" Type="String" />
                                                               <asp:Parameter Name="N_documento" Type="String" />
                                                               <asp:Parameter Name="Local_emissao" Type="String" />
                                                               <asp:Parameter Name="Data_emissao" Type="DateTime" />
                                                               <asp:Parameter Name="Data_nascimento" Type="DateTime" />
                                                               <asp:Parameter Name="Estado_civil" Type="String" />
                                                               <asp:Parameter Name="Sexo" Type="String" />
                                                               <asp:Parameter Name="idDepartamento" Type="Int32" />
                                                               <asp:Parameter Name="id_tipo_usuario" Type="Int32" />
                                                           </InsertParameters>
                                                           <UpdateParameters>
                                                               <asp:Parameter Name="NomeUsuario" Type="String" />
                                                               <asp:Parameter Name="Email" Type="String" />
                                                               <asp:Parameter Name="Senha" Type="String" />
                                                               <asp:Parameter Name="GuidMap" Type="String" />
                                                               <asp:Parameter Name="Naturalidade" Type="String" />
                                                               <asp:Parameter Name="Local_residencia" Type="String" />
                                                               <asp:Parameter Name="Altura" Type="Decimal" />
                                                               <asp:Parameter Name="Documento" Type="String" />
                                                               <asp:Parameter Name="N_documento" Type="String" />
                                                               <asp:Parameter Name="Local_emissao" Type="String" />
                                                               <asp:Parameter Name="Data_emissao" Type="DateTime" />
                                                               <asp:Parameter Name="Data_nascimento" Type="DateTime" />
                                                               <asp:Parameter Name="Estado_civil" Type="String" />
                                                               <asp:Parameter Name="Sexo" Type="String" />
                                                               <asp:Parameter Name="idDepartamento" Type="Int32" />
                                                               <asp:Parameter Name="id_tipo_usuario" Type="Int32" />
                                                               <asp:Parameter Name="Original_idUser" Type="Int32" />
                                                           </UpdateParameters>
                                                       </asp:ObjectDataSource>
                                                <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Download" />--%>
                                                <%--<button type="button" class="btn btn-success alert-success-msg m-b-10" onclick="_gaq.push(['_trackEvent', 'example', 'try', 'alert-success']);">Success</button>--%>

                                                <ol>
                                                </ol>
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
