<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormDetalhesUsuario.aspx.cs" Inherits="SGD.WebFormDetalhesUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>Configuracao

        </h1>
        <ol class="breadcrumb">
            <li><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li >Configuracoes</li>
            <li class="active">Detalhes do usuario</li>
        </ol>
    </section>
    <br />

     <div class="row">

        <div class="col-lg-12">

                <div class="box box-info">
                    <div class="box-header with-border">
                        <div class="box-title">
                            Permisssao Departamento
                        </div>
                        <br />
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                <i class="fa fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                        </div>
                    </div>

                    <div class="box-body">
                  <div class="form-horizontal">
                      <div class="form-group">
                   <div class="col-md-12">
                                <h5 runat="server" id="nomeusuario"></h5>
                      <br />
                      </div>
                    </div>
                      <asp:UpdatePanel runat="server">
                          <ContentTemplate>

                      <div class="form-group">
                                             <div class="col-md-6">
                                        
                                                <asp:GridView ID="GridView1" CssClass="table table-responsive table-striped table-bordered no-margin" runat="server" AutoGenerateColumns="False" DataKeyNames="iddepartamento" DataSourceID="SqlDataSourcePastas">
                                                    <Columns>
                                                        <asp:BoundField DataField="iddepartamento" HeaderText="iddepartamento" ReadOnly="True" SortExpression="iddepartamento" InsertVisible="False" Visible="True" />
                                                        <asp:BoundField DataField="NomeDepartamento" HeaderText="NomeDepartamento" SortExpression="NomeDepartamento" />
                                                        <asp:TemplateField HeaderText="Permissao">
                                                            <EditItemTemplate>
                                                                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged1" />
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged1" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>



                                                <asp:SqlDataSource ID="SqlDataSourcePastas" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" SelectCommand="SELECT [iddepartamento], [NomeDepartamento] FROM [departamento]"></asp:SqlDataSource>



                                            </div>
                            <div class="col-md-6">
                                                    <table class="table">
                                                        <thead>
                                                            <tr class="">
                                                                <th>Dept.</th>
                                                                <th>Estado</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                si = new SGD.Models.sgdbEntities();
                                                                var procurausuario = si.View_PermissaoDepartamento.Where(d=>d.idUser == idusario). ToList();
                                                                
                                                                foreach (var item in procurausuario)
                                                                {


                                                                %>

                                                              <tr class="border-bottom-primary">
                                                                <th scope="row"><%=item.NomeDepartamento %></th>
                                                                <td><%=item.Estado %></td>
                                                                
                                                            </tr>

                                                        </tbody>
                                                        <%} %>
                                                    </table>



                                                </div>

                      </div>
    
                              <asp:ScriptManager runat="server" ID="sm3"></asp:ScriptManager>
                          </ContentTemplate>
                      </asp:UpdatePanel>
                        </div>
                       
                    <!-- end of col-sm-8 -->
                 
                </div>
 <div class="box-footer"></div>
         
        </div>

                

                </div>
            </div>
     

</asp:Content>
