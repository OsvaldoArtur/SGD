<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormPrintResult.aspx.cs" Inherits="SGD.WebFormPrintResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Sistema de Gestao de Expediente v.1</title>
    <link rel="stylesheet" type="text/css" href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/icon/icofont/css/icofont.css" />

    <script type="text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=Panel1.ClientID %>");
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

    <style type="text/css" media="print">
        @page {
            size: 21cm 29.7cm;
            margin: 1cm 1cm 1cm 1cm;
            /* change the margins as you want them to be. */
        }
    </style>


</head>
<body onload="window.print()">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" CssClass="titlepage" runat="server">
            <div class="container">


                <div id="pcoded" class="">
                    <div class="pcoded-overlay-box"></div>
                    <div class="pcoded-container navbar-wrapper">
                        <div class="pcoded-main-container">
                            <div class="pcoded-wrapper">

                                <br />
                                <br />




                                <table>
                                    <tr>
                                        <td style="width: 200px">
                                            <img src="assets/images/ucm_logo.jpg" width="100" height="100" />
                                        </td>

                                        <td style="width: 500px">
                                            <div class="text-right" style="font-size: 12px; font-family: 'Times New Roman', Times, serif;">
                                                Universidade Catolica de Mocambique<br />
                                                <b>Faculdade de Gestao de Recursos Naturais e Mineralogia</b><br />
                                                Av. da Liberdade<br />
                                                C.P. 821 Tete - Mocambique<br />
                                                <i class="icofont icofont-telephone"></i>Tel: (252) 24066 Fax: (252) 24986<br />
                                                Email: fegtete@ucm.ac.mz
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <br />
                                            <br />

                                            <div class="text-center">
                                                <p style="font-size: 20px; font-family: 'Times New Roman', Times, serif; font-style: normal"><b><u>CELEBRANDO QUALIDADE E INOVACAO</u></b></p>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <br />
                                            <div class=" text-justify" style="font-size: 18px; font-family: 'Times New Roman', Times, serif; font-style: normal">
                                                <b>Codigo do Expediente:</b> <%=Request.QueryString["CodigoExpe"]%>
                                            </div>
                                            <br />
                                            <div class=" text-justify" style="font-size: 18px; font-family: 'Times New Roman', Times, serif; font-style: normal">
                                                <b>A UNIVERSIDADE CATOLICA DE MOCAMBIQUE:</b> - Faculdade de Gestao de Recursos
                                                 Naturais e Mineralogia - Tete, vem por meio desta que o
                                                 pedido de V.Excia <b>Sr(a) <%=Request.QueryString["Nome"]%> </b>, <%=Request.QueryString["Pedido"]%> 
                                                 recaiu sobre o seguinte despacho:
                                            </div>

                                            <div class="text-justify" style="font-size: 18px; font-family: 'Times New Roman', Times, serif; font-style: normal"><b><%=Request.QueryString["Resposta"]%> </b></div>
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <div class="text-center" style="font-size: 18px; font-family: 'Times New Roman', Times, serif; font-style: normal">
                                                Tete aos, <%=DateTime.Now.ToShortDateString() %>

                                                <br />
                                                <b>O responsavel da Secretaria</b>
                                                <br />
                                                ______________________________________
                                            <br />
                                                <% = Session["NomeU"] %>
                                                <b></b>
                                                <br />
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="2"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <p class="text-center text-muted" style="font-size: 12px; font-family: 'Times New Roman', Times, serif; font-style: normal">
                                                Universidade Cat&oacute;lica de Mo&ccedil;ambique - &copy; 2019 Todos os Direitos Reservados - Rua Comandante Galvão, nº688,Ponta-Gêa, Beira, Mo&ccedil;ambique
                                    <br />
                                                Tel (Central): (+258) 23 324 809 - Fax: (+258) 23 324 858 - Email:
                                    <a href="mailto:reitoria@ucm.ac.mz">reitoria@ucm.ac.mz</a>
                                                - Web:
                                    <a title="www.ucm.ac.mz" href="http://www.ucm.ac.mz">www.ucm.ac.mz</a>
                                                <br />
                                                Desenvolvido por Osvaldo Artur Dionisio @Copyright 2019
                                            </p>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <br />
                                            <br />
                                            <p class="text-center text-muted" style="font-size: 12px; font-family: 'Times New Roman', Times, serif; font-style: normal">
                                                Processado por Computador @Sistema de Gestao de Expediente
                                            </p>
                                        </td>
                                    </tr>
                                </table>






                            </div>

                        </div>
                    </div>
                </div>
            </div>




        </asp:Panel>

    </form>

</body>
</html>
