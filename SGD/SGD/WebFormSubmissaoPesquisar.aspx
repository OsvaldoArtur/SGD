<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSub.Master" AutoEventWireup="true" CodeBehind="WebFormSubmissaoPesquisar.aspx.cs" Inherits="SGD.WebFormSubmissaoPesquisar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                            <div>
                            <asp:UpdatePanel runat="server">
                                <ContentTemplate>

                                    <div class="form-group">
                                        <div class="box box-solid">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Pesquiar Submissao</h3>
                                                                                        <div class="pull-right"><a href="WebFormSubmissao.aspx?idsub=<%=id%>">Voltar</a></div>
                                            </div>
                                            <div class="box-body">
                                                <div class="form-horizontal">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <div class="col-sm-12">
                                                                Codigo da Submissao:
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-sm-6">
                                                                <div class="input-group input-group-md">
                                                                    <asp:TextBox ID="Text1" runat="server" CssClass="form-control" ValidateRequestMode="Enabled" ValidationGroup="a" placeholder="Procurar por codigo"></asp:TextBox>
                                                                    <span class="input-group-btn">
                                                                        <asp:Button ID="Button2" OnClick="Button2_Click" CssClass="btn btn-info" ValidationGroup="a" runat="server" Text="Procurar" />

                                                                    </span>
                                                                </div>
                                                            </div>


                                                            <div class="col-sm-6">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="label label-danger" ControlToValidate="Text1" runat="server" ErrorMessage="*Codigo" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>

                                                            </div>

                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-sm-12">
                                                                <div class="table-responsive">
                                                                    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered nowrap" runat="server" >
                                                                        <Columns>
                                                                            <asp:CommandField ShowSelectButton="True" />
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
</asp:Content>
