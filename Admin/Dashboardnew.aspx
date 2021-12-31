<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Admin_Dashboardnew, App_Web_ybvgoxqu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Theme JS files -->
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/visualization/d3/d3.min.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/ui/moment/moment.min.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pickers/daterangepicker.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_pages/dashboard.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/streamgraph.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/sparklines.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/lines.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/areas.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/donuts.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/bars.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/progress.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/heatmaps.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/pies.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_charts/pages/dashboard/light/bullets.js"></script>
    <!-- /theme JS files -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <!-- Content area -->
    <div class="content">

        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1">
            <ajaxToolkit:TabPanel runat="server" HeaderText="ACTIVE" ID="TabPanel1">
                 <ContentTemplate>
                   <div class="row">

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image12" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                               
                           <li class="nav-item dropdown dropdown-user">
                        <a href="#" class="navbar-nav-link d-flex align-items-center dropdown-toggle" data-toggle="dropdown">
                          <asp:Label ID="Label4" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right">
                            <asp:LinkButton ID="LinkButton1" runat="server"  CssClass="dropdown-item"><i class="icon-user-plus"></i>NOTICE</asp:LinkButton>
                            <div class="dropdown-divider"></div>
                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="dropdown-item"><i class="icon-switch2"></i>GRADES</asp:LinkButton>
                        </div>
                    </li>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image13" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <asp:DropDownList ID="DropDownList1" runat="server" >
                                  <asp:ListItem Text="---" Value="0"></asp:ListItem>
                                <asp:ListItem Text="NOTICE" Value="NOTICE"></asp:ListItem>
                                <asp:ListItem Text="GRADE" Value="GRADE"></asp:ListItem>
                                <asp:ListItem Text="ANNOUCEMENT" Value="ANNOUCEMENT"></asp:ListItem>
                                <asp:ListItem Text="NOTIFICATTION" Value="NOTIFICATTION"></asp:ListItem>
                                <asp:ListItem Text="QUIZ" Value="QUIZ"></asp:ListItem>
                                <asp:ListItem Text="FORUM" Value="FORUM"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="Label5" Text="COMMUNICATION" CssClass="font-weight-semibold mb-0" runat="server" /></h3>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                          <div class="mr-3 align-self-center">
                          <asp:Image ID="Image14" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="Label6" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>

                      
                    </div>
                </div>
            </div>

        </div>

           <div class="row">

                 <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                          <div class="mr-3 align-self-center">
                          <asp:Image ID="Image15" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="Label7" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>

                      
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image16" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label8" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image17" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="Label9" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>          

        </div>

        <div class="row">

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image18" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label10" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image19" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="Label11" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                          <div class="mr-3 align-self-center">
                          <asp:Image ID="Image20" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="Label12" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>

                      
                    </div>
                </div>
            </div>

        </div>

        <div class="row">

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image21" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label13" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image22" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label14" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

           <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image23" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label15" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="INACTIVE">
                <ContentTemplate>
                   <div class="row">

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="ImgProfPicMod" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                               
                           <li class="nav-item dropdown dropdown-user">
                        <a href="#" class="navbar-nav-link d-flex align-items-center dropdown-toggle" data-toggle="dropdown">
                          <asp:Label ID="LblTotStudents" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right">
                            <asp:LinkButton ID="LnkBttnMyProfile" runat="server"  CssClass="dropdown-item"><i class="icon-user-plus"></i>NOTICE</asp:LinkButton>
                            <div class="dropdown-divider"></div>
                            <asp:LinkButton ID="LnkBttnLogout" runat="server" CssClass="dropdown-item"><i class="icon-switch2"></i>GRADES</asp:LinkButton>
                        </div>
                    </li>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image1" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <asp:DropDownList ID="DDL" runat="server" >
                                  <asp:ListItem Text="---" Value="0"></asp:ListItem>
                                <asp:ListItem Text="NOTICE" Value="NOTICE"></asp:ListItem>
                                <asp:ListItem Text="GRADE" Value="GRADE"></asp:ListItem>
                                <asp:ListItem Text="ANNOUCEMENT" Value="ANNOUCEMENT"></asp:ListItem>
                                <asp:ListItem Text="NOTIFICATTION" Value="NOTIFICATTION"></asp:ListItem>
                                <asp:ListItem Text="QUIZ" Value="QUIZ"></asp:ListItem>
                                <asp:ListItem Text="FORUM" Value="FORUM"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblActStudents" Text="DIGITAL COMMUNICATION" CssClass="font-weight-semibold mb-0" runat="server" /></h3>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                          <div class="mr-3 align-self-center">
                          <asp:Image ID="Image2" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblInactStudents" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>

                      
                    </div>
                </div>
            </div>

        </div>

           <div class="row">

                 <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                          <div class="mr-3 align-self-center">
                          <asp:Image ID="Image3" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblTotTutors" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>

                      
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image4" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="LblActTutors" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image5" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblInacTutors" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>          

        </div>

        <div class="row">

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image6" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="LblTotOrg" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image7" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblActOrg" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                          <div class="mr-3 align-self-center">
                          <asp:Image ID="Image8" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblInactOrg" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>

                      
                    </div>
                </div>
            </div>

        </div>

        <div class="row">

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image9" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label1" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image10" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label2" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

           <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                          <asp:Image ID="Image11" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src="../Assets/UploadedFiles/ProfilePics/PRF10074280721.jpg" alt="icon" />
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label3" Text="MORE" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">...</span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>

    </div>
    <!-- /content area -->
</asp:Content>

