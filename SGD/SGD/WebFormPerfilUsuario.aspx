<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebFormPerfilUsuario.aspx.cs" Inherits="SGD.WebFormPerfilUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="page-header-title">
                            <h4>Perfil</h4>
                        </div>

                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="WebFormInicio.aspx">
                                        <i class="icofont icofont-home"></i>
                                        Inicio 
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Perfil do usuario 
                                </li>

                            </ul>
                        </div>

                    </div>

                          <div class="page-body">
             
                <div class="row">
                    <div class="col-lg-12 ">
                                    <div class="card b-l-success business-info services m-b-20">
                                                    <div class="card-header">
                                                        <div class="service-header">
                                                            <%
                                                                si = new SGD.Models.sgdbEntities();
                                                                var us = si.user.Where(d => d.idUser == idu).FirstOrDefault();
                                                                 %>
                                                            <a href="#"><h5 class="card-header-text"><%=us.NomeUsuario %> <i class="icofont icofont-user"></i></h5></a>
                                                        </div>
                                                    </div>
                                        <div class="card-block">
                                                        <div class="row col-lg-12">
                                                            <div class="col-lg-12 col-xl-6">
                                                                <table class="table m-0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="row">Nome Completo</th>
                                                                            <td><%=us.NomeUsuario %></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Sexo</th>
                                                                            <td><%=us.Sexo %></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Data Nascimento</th>
                                                                            <td><%=DateTime.Parse( us.Data_nascimento.ToString()).ToShortDateString() %></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Estado Civil</th>
                                                                            <td><%=us.Estado_civil %></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Residencia</th>
                                                                            <td><%=us.Local_residencia %></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Guid Map</th>
                                                                            <td><%=us.GuidMap %></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <!-- end of table col-lg-6 -->
                                                            <div class="col-lg-12 col-xl-6">
                                                                <table class="table">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="row">Tipo de documento</th>
                                                                            <td><%=us.Documento %></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Nº documento</th>
                                                                            <td><%=us.N_documento %></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Local de emissao</th>
                                                                            <td><%=us.Local_emissao%></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Data da emissao</th>
                                                                            <td><%=us.Data_emissao%></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Email</th>
                                                                            <td><a href="#!"><%=us.Email%></a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Departamento</th>
                                                                            <%var dep = si.departamento.Where(w => w.iddepartamento == us.idDepartamento).FirstOrDefault(); %>
                                                                            <td><%=dep.NomeDepartamento%></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <!-- end of table col-lg-6 -->
                                          
                                    <!-- end of card-block -->
                                 </div>
                                        <div class="row col-lg-12 ">
                                                            <div class="col-sm-12">
                                                               
                                                              <p></p>
                                               <div class="text-right">
                                                    <%--<button type="button" class="btn btn-primary m-r-10"><i class="icofont icofont-plus"></i> Follow</button>--%>
                                                   <button type="button" class="btn btn-primary"><i class="icofont icofont-ui-password"></i> Mudar Senha </button>
                                                </div>
                                                            </div>
                                                            <!-- end of col-sm-8 -->
                                                   <%--</div>    --%>
                                                        <!-- end of row -->
                                                    </div>
                                                    <!-- end of card-block -->
                                                </div>
                                    
                    </div>
                   
                        <!-- tab header start -->
<%--                        <div class="tab-header">
                            <ul class="nav nav-tabs md-tabs tab-timeline" role="tablist" id="mytab">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#personal" role="tab">Informacao Pessoal</a>
                                    <div class="slide"></div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#binfo" role="tab"> Contagem</a>
                                    <div class="slide"></div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#contacts" role="tab">Brevemente....</a>
                                    <div class="slide"></div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#review" role="tab">Brevemente....</a>
                                    <div class="slide"></div>
                                </li>
                            </ul>
                        </div>--%>
                        <!-- tab header end -->
                        <!-- tab content start -->
                        <div class="tab-content">
                            <!-- tab panel personal start -->
<%--                            <div class="tab-pane active" id="personal" role="tabpanel">
                                <!-- personal card start -->
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="card-header-text">Sobre mim</h5>
                                        <button id="edit-btn" type="button" class="btn btn-sm btn-primary waves-effect waves-light f-right">
                                            <i class="icofont icofont-edit"></i>
                                        </button>
                                    </div>
                                    <div class="card-block">
                                        <div class="view-info">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="general-info">
                                                        <div class="row">
                                                            <div class="col-lg-12 col-xl-6">
                                                                <table class="table m-0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="row">Full Name</th>
                                                                            <td>Josephine Villa</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Gender</th>
                                                                            <td>Female</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Birth Date</th>
                                                                            <td>October 25th, 1990</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Marital Status</th>
                                                                            <td>Single</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Location</th>
                                                                            <td>New York, USA</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <!-- end of table col-lg-6 -->
                                                            <div class="col-lg-12 col-xl-6">
                                                                <table class="table">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="row">Email</th>
                                                                            <td><a href="#!">Demo@phenix.com</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Mobile Number</th>
                                                                            <td>(0123) - 4567891</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Twitter</th>
                                                                            <td>@phoenixcoded</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Skype</th>
                                                                            <td>phoenixcoded.demo</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">Website</th>
                                                                            <td><a href="#!">www.demo.com</a></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <!-- end of table col-lg-6 -->
                                                        </div>
                                                        <!-- end of row -->
                                                    </div>
                                                    <!-- end of general info -->
                                                </div>
                                                <!-- end of col-lg-12 -->
                                            </div>
                                            <!-- end of row -->
                                        </div>
                                        <!-- end of view-info -->
                                       
                                    </div>
                                    <!-- end of card-block -->
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-header-text">Description About Me</h5>
                                                <button id="edit-info-btn" type="button" class="btn btn-sm btn-primary waves-effect waves-light f-right">
                                                    <i class="icofont icofont-edit"></i>
                                                </button>
                                            </div>
                                            <div class="card-block user-desc">
                                                <div class="view-desc">
                                                    <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?" "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able To Do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pain.</p>
                                                </div>
                                                <div class="edit-desc">
                                                    <div class="col-md-12">
                                                        <textarea id="description">
                                                            <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?" "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able To Do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pain.</p>
                                                        </textarea>
                                                    </div>
                                                    <div class="text-center">
                                                        <a href="#!" class="btn btn-primary waves-effect waves-light m-r-20 m-t-20">Save</a>
                                                        <a href="#!" id="edit-cancel-btn" class="btn btn-default waves-effect m-t-20">Cancel</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- personal card end-->
                            </div>--%>
                            <!-- tab pane personal end -->
                            <!-- tab pane info start -->
                             
                           
                            <div class="tab-pane " id="binfo" role="tabpanel">
                                <!-- personal card start -->
                                
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-header-text">Description About Me</h5>
                                               
                                            </div>
                                            <div class="card-block">
                                                               <div class="col-md-12 col-xl-4">
                                                <!-- table card start -->
                                                <div class="card table-card">
                                                    <div class="">
                                                        <div class="">
                                                            <div class="col-sm-6 card-block-big br">
                                                                <div class="">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-eye-alt text-success"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>10k</h5>
                                                                        <span>Visitors</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6 card-block-big">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-ui-music text-danger"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>100%</h5>
                                                                        <span>Volume</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="">
                                                        <div class="row-table">
                                                            <div class="col-sm-6 card-block-big br">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-files text-info"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>2000 +</h5>
                                                                        <span>Files</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6 card-block-big">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-envelope-open text-warning"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>120</h5>
                                                                        <span>Mails</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- table card end -->
                                            </div>
                                              
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- personal card end-->
                            </div>
                            <!-- tab pane info end -->
                            <!-- tab pane contact start -->
                            <div class="tab-pane" id="contacts" role="tabpanel">
                                <div class="row">
                                                                            <div class="col-lg-12">
                                                                                        <div class="card-block">
                                             <div class="col-md-12">
                                                <!-- table card start -->
                                                <div class="card table-card">
                                                    <div class="">
                                                        <div class="row-table">
                                                            <div class="col-sm-6  card-block-big br">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-eye-alt text-success"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>10k</h5>
                                                                        <span>Visitors</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6 card-block-big">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-ui-music text-danger"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>100%</h5>
                                                                        <span>Volume</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="">
                                                        <div class="row-table">
                                                            <div class="col-sm-6 card-block-big br">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-files text-info"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>2000 +</h5>
                                                                        <span>Files</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6 card-block-big">
                                                                <div class="row">
                                                                    <div class="col-sm-4">
                                                                        <i class="icofont icofont-envelope-open text-warning"></i>
                                                                    </div>
                                                                    <div class="col-sm-8 text-center">
                                                                        <h5>120</h5>
                                                                        <span>Mails</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- table card end -->
                                            </div>
                                            </div>
                                        </div>

                                    <div class="col-lg-3">
                                        <!-- user contact card left side start -->
                                        <div class="card">
                                            <div class="card-header contact-user">
                                                <img class="img-circle" src="assets/images/user-profile/contact-user.jpg" alt="contact-user">
                                                <h4>Angelica Ramos</h4>
                                            </div>
                                            <div class="card-block">
                                                <ul class="list-group list-contacts">
                                                    <li class="list-group-item active"><a href="#">All Contacts</a></li>
                                                    <li class="list-group-item"><a href="#">Recent Contacts</a></li>
                                                    <li class="list-group-item"><a href="#">Favourite Contacts</a></li>
                                                </ul>
                                            </div>
                                            <div class="card-block groups-contact">
                                                <h4>Groups</h4>
                                                <ul class="list-group">
                                                    <li class="list-group-item justify-content-between">
                                                        Project
                                                        <span class="badge badge-default badge-pill">30</span>
                                                    </li>
                                                    <li class="list-group-item justify-content-between">
                                                        Notes
                                                        <span class="badge badge-default badge-pill">20</span>
                                                    </li>
                                                    <li class="list-group-item justify-content-between">
                                                        Activity
                                                        <span class="badge badge-default badge-pill">100</span>
                                                    </li>
                                                    <li class="list-group-item justify-content-between">
                                                        Schedule
                                                        <span class="badge badge-default badge-pill">50</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="card-title">Contacts<span class="f-15"> (100)</span></h4>
                                            </div>
                                            <div class="card-block">
                                                <div class="connection-list">
                                                    <a href="#"><img class="img-fluid img-circle" src="assets/images/user-profile/follower/f-1.jpg" alt="f-1" data-toggle="tooltip" data-placement="top" data-original-title="Airi Satou">
                                                    </a>
                                                    <a href="#"><img class="img-fluid img-circle" src="assets/images/user-profile/follower/f-2.jpg" alt="f-2" data-toggle="tooltip" data-placement="top" data-original-title="Angelica Ramos">
                                                    </a>
                                                    <a href="#"><img class="img-fluid img-circle" src="assets/images/user-profile/follower/f-3.jpg" alt="f-3" data-toggle="tooltip" data-placement="top" data-original-title="Ashton Cox">
                                                    </a>
                                                    <a href="#"><img class="img-fluid img-circle" src="assets/images/user-profile/follower/f-4.jpg" alt="f-4" data-toggle="tooltip" data-placement="top" data-original-title="Cara Stevens">
                                                    </a>
                                                    <a href="#"><img class="img-fluid img-circle" src="assets/images/user-profile/follower/f-5.jpg" alt="f-5" data-toggle="tooltip" data-placement="top" data-original-title="Garrett Winters">
                                                    </a>
                                                    <a href="#"><img class="img-fluid img-circle" src="assets/images/user-profile/follower/f-1.jpg" alt="f-6" data-toggle="tooltip" data-placement="top" data-original-title="Cedric Kelly">
                                                    </a>
                                                    <a href="#"><img class="img-fluid img-circle" src="assets/images/user-profile/follower/f-3.jpg" alt="f-7" data-toggle="tooltip" data-placement="top" data-original-title="Brielle Williamson">
                                                    </a>
                                                    <a href="#"><img class="img-fluid img-circle" src="assets/images/user-profile/follower/f-5.jpg" alt="f-8" data-toggle="tooltip" data-placement="top" data-original-title="Jena Gaines">
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- user contact card left side end -->
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- contact data table card start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5 class="card-header-text">Contacts</h5></div>
                                                    <div class="card-block contact-details">
                                                        <div class="data_table_main table-responsive dt-responsive">
                                                            <table id="simpletable" class="table  table-striped table-bordered nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Name</th>
                                                                        <th>Email</th>
                                                                        <th>Mobileno.</th>
                                                                        <th>Favourite</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star-o" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star-o" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star-o" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star-o" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star-o" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star-o" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star-o" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Garrett Winters</td>
                                                                        <td>abc123@gmail.com</td>
                                                                        <td>9989988988</td>
                                                                        <td><i class="fa fa-star" aria-hidden="true"></i></td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                                                                            <div class="dropdown-menu dropdown-menu-right b-none contact-menu">
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-edit"></i>Edit</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-delete"></i>Delete</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye-alt"></i>View</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-tasks-alt"></i>Project</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-ui-note"></i>Notes</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-eye"></i>Activity</a>
                                                                                <a class="dropdown-item" href="#!"><i class="icofont icofont-badge"></i>Schedule</a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                        <th>Name</th>
                                                                        <th>Email</th>
                                                                        <th>Mobileno.</th>
                                                                        <th>Favourite</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </tfoot>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- contact data table card end -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- tab pane contact end -->
<%--                            <div class="tab-pane" id="review" role="tabpanel">
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="card-header-text">Review</h5>
                                    </div>
                                    <div class="card-block">
                                        <ul class="media-list">
                                            <li class="media">
                                                <div class="media-left">
                                                    <a href="#">
                                                        <img class="media-object img-circle comment-img" src="assets/images/avatar-1.png" alt="Generic placeholder image">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h6 class="media-heading">Sortino media<span class="f-12 text-muted m-l-5">Just now</span></h6>
                                                    <div class="stars-example-css review-star">
                                                        <i class="icofont icofont-star"></i>
                                                        <i class="icofont icofont-star"></i>
                                                        <i class="icofont icofont-star"></i>
                                                        <i class="icofont icofont-star"></i>
                                                        <i class="icofont icofont-star"></i>
                                                    </div>
                                                    <p class="m-b-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                                    <div class="m-b-25">
                                                        <span><a href="#!" class="m-r-10 f-12">Reply</a></span><span><a href="#!" class="f-12">Edit</a> </span>
                                                    </div>
                                                    <hr>
                                                    <!-- Nested media object -->
                                                    <div class="media mt-2">
                                                        <a class="media-left" href="#">
                                                            <img class="media-object img-circle comment-img" src="assets/images/avatar-2.png" alt="Generic placeholder image">
                                                        </a>
                                                        <div class="media-body">
                                                            <h6 class="media-heading">Larry heading <span class="f-12 text-muted m-l-5">Just now</span></h6>
                                                            <div class="stars-example-css review-star">
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                            </div>
                                                            <p class="m-b-0"> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                                            <div class="m-b-25">
                                                                <span><a href="#!" class="m-r-10 f-12">Reply</a></span><span><a href="#!" class="f-12">Edit</a> </span>
                                                            </div>
                                                            <hr>
                                                            <!-- Nested media object -->
                                                            <div class="media mt-2">
                                                                <div class="media-left">
                                                                    <a href="#">
                                                                        <img class="media-object img-circle comment-img" src="assets/images/avatar-3.png" alt="Generic placeholder image">
                                                                    </a>
                                                                </div>
                                                                <div class="media-body">
                                                                    <h6 class="media-heading">Colleen Hurst <span class="f-12 text-muted m-l-5">Just now</span></h6>
                                                                    <div class="stars-example-css review-star">
                                                                        <i class="icofont icofont-star"></i>
                                                                        <i class="icofont icofont-star"></i>
                                                                        <i class="icofont icofont-star"></i>
                                                                        <i class="icofont icofont-star"></i>
                                                                        <i class="icofont icofont-star"></i>
                                                                    </div>
                                                                    <p class="m-b-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                                                    <div class="m-b-25">
                                                                        <span><a href="#!" class="m-r-10 f-12">Reply</a></span><span><a href="#!" class="f-12">Edit</a> </span>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Nested media object -->
                                                    <div class="media mt-2">
                                                        <div class="media-left">
                                                            <a href="#">
                                                                <img class="media-object img-circle comment-img" src="assets/images/avatar-1.png" alt="Generic placeholder image">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="media-heading">Cedric Kelly<span class="f-12 text-muted m-l-5">Just now</span></h6>
                                                            <div class="stars-example-css review-star">
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                            </div>
                                                            <p class="m-b-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                                            <div class="m-b-25">
                                                                <span><a href="#!" class="m-r-10 f-12">Reply</a></span><span><a href="#!" class="f-12">Edit</a> </span>
                                                            </div>
                                                            <hr>
                                                        </div>
                                                    </div>
                                                    <div class="media mt-2">
                                                        <a class="media-left" href="#">
                                                            <img class="media-object img-circle comment-img" src="assets/images/avatar-4.png" alt="Generic placeholder image">
                                                        </a>
                                                        <div class="media-body">
                                                            <h6 class="media-heading">Larry heading <span class="f-12 text-muted m-l-5">Just now</span></h6>
                                                            <div class="stars-example-css review-star">
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                            </div>
                                                            <p class="m-b-0"> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                                            <div class="m-b-25">
                                                                <span><a href="#!" class="m-r-10 f-12">Reply</a></span><span><a href="#!" class="f-12">Edit</a> </span>
                                                            </div>
                                                            <hr>
                                                            <!-- Nested media object -->
                                                            <div class="media mt-2">
                                                                <div class="media-left">
                                                                    <a href="#">
                                                                        <img class="media-object img-circle comment-img" src="assets/images/avatar-3.png" alt="Generic placeholder image">
                                                                    </a>
                                                                </div>
                                                                <div class="media-body">
                                                                    <h6 class="media-heading">Colleen Hurst <span class="f-12 text-muted m-l-5">Just now</span></h6>
                                                                    <div class="stars-example-css review-star">
                                                                        <i class="icofont icofont-star"></i>
                                                                        <i class="icofont icofont-star"></i>
                                                                        <i class="icofont icofont-star"></i>
                                                                        <i class="icofont icofont-star"></i>
                                                                        <i class="icofont icofont-star"></i>
                                                                    </div>
                                                                    <p class="m-b-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                                                    <div class="m-b-25">
                                                                        <span><a href="#!" class="m-r-10 f-12">Reply</a></span><span><a href="#!" class="f-12">Edit</a> </span>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="media mt-2">
                                                        <div class="media-left">
                                                            <a href="#">
                                                                <img class="media-object img-circle comment-img" src="assets/images/avatar-2.png" alt="Generic placeholder image">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="media-heading">Mark Doe<span class="f-12 text-muted m-l-5">Just now</span></h6>
                                                            <div class="stars-example-css review-star">
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                                <i class="icofont icofont-star"></i>
                                                            </div>
                                                            <p class="m-b-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                                            <div class="m-b-25">
                                                                <span><a href="#!" class="m-r-10 f-12">Reply</a></span><span><a href="#!" class="f-12">Edit</a> </span>
                                                            </div>
                                                            <hr>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="md-float-material d-flex">
                                            <div class="md-group-add-on p-relative col-lg-12">
                                                <div class="input-group input-group-button input-group-primary">
                                                    <span class="input-group-addon"><i class="icofont icofont-comment"></i></span>
                                                    <input type="text" class="form-control" placeholder="Write Comment">
                                                    <span class="input-group-addon">
                                       <button class="btn btn-primary"><i class="icofont icofont-plus"></i>Add Comment</button>
                                       </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                        <!-- tab content end -->
                    </div>
                 <div class="col-sm-12">
                                <div class="card borderless-card">
                                    <div class="card-block">
                                  <div class="row">
                                      <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-facebook">
                                                    <% 
                                                        si = new SGD.Models.sgdbEntities();
                                                        var contaexpe = si.EnviarDocumentos.Where(a => a.idUsuario == idu).Count();
                                                         %>
                                                    <h3><%=contaexpe %> +</h3>
                                                    <span class="m-t-10">Total expedientes</span>
                                                    <i class="icofont icofont-file"></i>
                                                </div>
                                            </div>
                                        </div>
                                      <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-twitter">
                                                      <% 
                                                        si = new SGD.Models.sgdbEntities();
                                                        var contacart = si.DocumentoUsuario_tb.Where(a => a.idUserSender == idu).Count();
                                                         %>
                                                    <h3><%=contacart %> +</h3>
                                                    <span class="m-t-10">Total emails enviados</span>
                                                    <i class="icofont icofont-send-mail"></i>
                                                </div>
                                            </div>
                                        </div>
                                      <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-linkein">
                                                    <%--<h3><%=dep.NomeDepartamento %></h3>--%>
                                                    <span class="m-t-10"></span>
                                                    <i class=""></i>
                                                </div>
                                            </div>
                                        </div>
                                      <div class="col-md-6 col-xl-3">
                                            <div class="card social-widget-card">
                                                <div class="card-block-big bg-google-plus">
                                                    <h3>650 +</h3>
                                                    <span class="m-t-10">Google Plus Users</span>
                                                    <i class="icofont icofont-social-google-plus"></i>
                                                </div>
                                            </div>
                                        </div>
                                  </div>
                                    </div>
                                </div>
                            </div>
                            <!-- System clock end -->
            </div>
            <!-- Page-body end -->
        </div>
    </div>

                    </div>
                    </div>
                </div>
            
</asp:Content>
