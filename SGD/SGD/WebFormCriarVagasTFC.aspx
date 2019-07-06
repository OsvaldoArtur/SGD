<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormCriarVagasTFC.aspx.cs" Inherits="SGD.WebFormCriarVagasTFC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>VAGAS TFC
        </h1>
        <ol class="breadcrumb">
            <li class="active"><a href="WebFormInicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li>TFC</li>

        </ol>
    </section>
    <br />
    <div class="row">
        <asp:UpdatePanel runat="server">
            <ContentTemplate>



        <div class="col-lg-12">
            <div class="form-group">
                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Criar vagas TFC</h3>
                    </div>
                    <div class="box-body">


                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <asp:TextBox runat="server" ID="txtTitulo" CssClass="form-control" placeholder="Titulo"></asp:TextBox>
                                        </div>
                                        <label class="control-label col-sm-2">Data Inicio:</label>
                                        <div class="col-sm-2">

                                            <asp:TextBox ID="txtDataInicio" TextMode="Date" CssClass="date datepicker" runat="server"></asp:TextBox>

                                        </div>
                                        <label class="control-label col-sm-2">Data Fim:</label>
                                        <div class="col-sm-2">

                                            <asp:TextBox ID="txtDataFim" TextMode="Date" CssClass="date datepicker" runat="server"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                                 <asp:TextBox runat="server" ID="txtDescricao" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Descricao da vaga"></asp:TextBox>
                                      
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                       <div class="form-group">
                                       
                                                 <div class="text-right">
                                                     <asp:Button runat="server" ID="btnSv" OnClick="btnSv_Click"  CssClass="btn btn-info" Text="Criar" />
                                                   
                                                 </div>

                                
                                    </div>
                    </div>
                </div>
            </div>


             <div class="form-group">
                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Lista vagas TFC</h3>
                    </div>
                    <div class="box-body">


                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <asp:GridView runat="server" ID="gvw1" CssClass="table table-responsive table-striped table-bordered no-margin"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_vaga_submissao" DataSourceID="SqlDataSourcevaga" OnSelectedIndexChanged="gvw1_SelectedIndexChanged">
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="id_vaga_submissao" HeaderText="Cod" InsertVisible="False" ReadOnly="True" SortExpression="id_vaga_submissao" />
                                                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                                                    <asp:BoundField DataField="Data_inicio" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" HeaderText="Inicio" SortExpression="Data_inicio" />
                                                    <asp:BoundField DataField="Data_fim" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false" HeaderText="Fim" SortExpression="Data_fim" />
                                                    <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" Visible="False" />
                                                    <asp:BoundField DataField="idOwner" HeaderText="idOwner" SortExpression="idOwner" Visible="False" />
                                                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                                    <asp:BoundField DataField="Guidmap" HeaderText="Guidmap" SortExpression="Guidmap" Visible="False" />
                                                    <asp:BoundField DataField="Ano" HeaderText="Ano" SortExpression="Ano" />
                                                     
                                                </Columns>
                                                  <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSourcevaga" runat="server" ConnectionString="<%$ ConnectionStrings:sgdbConnectionString %>" DeleteCommand="DELETE FROM [Vagas_Submissao_tb] WHERE [id_vaga_submissao] = @id_vaga_submissao" InsertCommand="INSERT INTO [Vagas_Submissao_tb] ([Titulo], [Data_inicio], [Data_fim], [Descricao], [idOwner], [Estado], [Guidmap], [Ano]) VALUES (@Titulo, @Data_inicio, @Data_fim, @Descricao, @idOwner, @Estado, @Guidmap, @Ano)" SelectCommand="SELECT * FROM [Vagas_Submissao_tb]" UpdateCommand="UPDATE [Vagas_Submissao_tb] SET [Titulo] = @Titulo, [Data_inicio] = @Data_inicio, [Data_fim] = @Data_fim, [Descricao] = @Descricao, [idOwner] = @idOwner, [Estado] = @Estado, [Guidmap] = @Guidmap, [Ano] = @Ano WHERE [id_vaga_submissao] = @id_vaga_submissao">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="id_vaga_submissao" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="Titulo" Type="String" />
                                                    <asp:Parameter DbType="Date" Name="Data_inicio" />
                                                    <asp:Parameter DbType="Date" Name="Data_fim" />
                                                    <asp:Parameter Name="Descricao" Type="String" />
                                                    <asp:Parameter Name="idOwner" Type="Int32" />
                                                    <asp:Parameter Name="Estado" Type="String" />
                                                    <asp:Parameter Name="Guidmap" Type="String" />
                                                    <asp:Parameter Name="Ano" Type="Int32" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Titulo" Type="String" />
                                                    <asp:Parameter DbType="Date" Name="Data_inicio" />
                                                    <asp:Parameter DbType="Date" Name="Data_fim" />
                                                    <asp:Parameter Name="Descricao" Type="String" />
                                                    <asp:Parameter Name="idOwner" Type="Int32" />
                                                    <asp:Parameter Name="Estado" Type="String" />
                                                    <asp:Parameter Name="Guidmap" Type="String" />
                                                    <asp:Parameter Name="Ano" Type="Int32" />
                                                    <asp:Parameter Name="id_vaga_submissao" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                    </div>
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
