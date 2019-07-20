<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormPastaDepartamento.aspx.cs" Inherits="SGD.WebFormPastaDepartamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content Header (Page header) -->

    <%
        var gui = Request.QueryString["id"];
        si = new SGD.Models.sgdbEntities();
        var LevaNome = si.departamento.Where(d => d.GuidMap.Equals(gui)).FirstOrDefault();

    %>

    <section class="content-header">
        <h1><%=LevaNome.NomeDepartamento %>
        
        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li class="active">Pasta Departamento </li>

        </ol>
    </section>
    <br />


    <div class="row">
        <div class="col-lg-12">

            <div class="text-right">
                <a href="#sign-in" data-toggle="modal" data-target="#pedidos"><i class="ion-plus"> Nova Pasta</i></a>
            </div>


            <% 
                int idusuario = int.Parse(Session["idu"].ToString());
                si = new SGD.Models.sgdbEntities();
                var lista = si.pastadepartamento.Where(d => d.idDepartamento == idDept).ToList();


                var conta = si.EnviarDocumentos.Where(d => d.idPastaDepartamento == idDept).Count();

                foreach (var site in lista)
                {
                    idDept = site.idDepartamento;

                    var contou = si.EnviarDocumentos.Where(s => s.idPastaDepartamento == site.idpastadepartamento && s.Estado.Equals("Enviado")).Count();
                    var contou1 = si.EnviarDocumentos.Where(s => s.idPastaDepartamento == site.idpastadepartamento && s.Estado.Equals("Respondido")).Count();

            %>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <a href="WebFormDocumentos.aspx?id=<%=site.GuidMap%>">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua">
                            <i class="ion-ios-folder-outline"></i></span>

                        <div class="info-box-content ">
                            <br />
                            <% =site.NomePasta %>
                        </div>

                        <!-- /.info-box-content -->
                    </div>
                </a>
            </div>



            <% }%>
        </div>

    </div>
   


   

    <div class="modal fade" id="pedidos">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Nova Pasta</h4>
                </div>
                <div class="modal-body">
                <div class="form-group">

                    <asp:TextBox ID="txtNpasta" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Nome da Pasta" runat="server"></asp:TextBox>
                    <span class="md-line"></span>
                </div>
                <div class="form-group">

                    <asp:TextBox ID="txtDescricaoPAstas" ValidateRequestMode="Enabled" CssClass="form-control" placeholder="Descricao" TextMode="MultiLine" Rows="3" runat="server"></asp:TextBox>
                    <span class="md-line"></span>
                </div>
                    </div>
                  <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-primary" OnClick="btnSalvar_Click" Text="Salvar" />

            </div>
            </div>
          
        </div>
        <!-- /.modal-content -->
    </div>
</asp:Content>


