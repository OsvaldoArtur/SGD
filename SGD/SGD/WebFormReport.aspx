<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormReport.aspx.cs" Inherits="SGD.WebFormReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=800,width=800');
            printWindow.document.write('<html><head><title>Sistema de Gestao de Expedientes v.1</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
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
                                <li class="breadcrumb-item">Invoice
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="page-body">
                           <asp:Button ID="btnPrint" runat="server" Text="Print" OnClientClick = "return PrintPanel();" />
                        <div id="pnlContents" runat="server">
                        <div class="row ">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h5 class="text-muted" style="font-size:24px; font-family:'Times New Roman', Times, serif; font-variant-position:sub">Celebrando Qualidade e Inovacao</h5>
                                </div>
                                <br />
                                <div class=" text-justify">
                                    <b>Codigo do Expediente:</b>   UCM1201E
                                </div>
                                <br />
                                <div class=" text-justify">
                                    <b>A UNIVERSIDADE CATOLICA DE MOCAMBIQUE:</b> - Faculdade de Gestao de Recursos
                                                 Naturais e Mineralogia - Tete, vem por meio desta informar ao senhor(a) que o
                                                 pedido de V.Excia <b>Sr Oscar Artur Dionisio</b>, a solicitacao de trancar matricula
                                                 recaiu sobre o seguinte despacho:
                                </div>

                                <div class="text-justify">Autorizo.</div>
                                <br />
                                <div class="text-center">Tete aos, <%=DateTime.Now.Date %>.</div>
                                <div class="text-center">______________________________________</div>
                                <div class="text-center">dr: Osvaldo Artur Dionisio</div>

                            </div>


                        </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
