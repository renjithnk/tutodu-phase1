<%@ page language="C#" autoeventwireup="true" inherits="AdminHome, App_Web_iymzdvn4" stylesheettheme="SkinFile" theme="SkinFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Tutodu Academy</title>

    <!-- Global stylesheets -->
    <link href="CSS/StyleSheetButton.css" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css" />
    <link href="Assets/Dashboard/Global_Assets/css/icons/icomoon/styles.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/Dashboard/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/Dashboard/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/Dashboard/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/Dashboard/css/components.min.css" rel="stylesheet" type="text/css" />
    <link href="Assets/Dashboard/css/colors.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css" type="text/css" />

    <script type="text/javascript" src="Assets/Dashboard/Global_Assets/js/main/jquery.min.js"></script>
    <script type="text/javascript" src="Assets/Dashboard/Global_Assets/js/main/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="Assets/Dashboard/Global_Assets/js/plugins/loaders/blockui.min.js"></script>
    <!-- /core JS files -->

    <script type="text/javascript" src="Assets/Dashboard/Global_Assets/js/plugins/notifications/bootbox.min.js"></script>
   <!-- <script type="text/javascript" src="../Assets/Dashboard/Global_Assets/js/plugins/forms/selects/select2.min.js"></script> -->
    <script type="text/javascript" src="Assets/Dashboard/Global_Assets/js/plugins/notifications/jgrowl.min.js"></script>
    <script type="text/javascript" src="Assets/Dashboard/Global_Assets/js/plugins/notifications/noty.min.js"></script>
    <script type="text/javascript" src="Assets/Dashboard/js/app.js"></script>

    <!-- DHTML WIDOW FILES -->
    <link href="DhtmlWindow/dhtmlwindow.css" rel="stylesheet" type="text/css" />
    <script src="DhtmlWindow/dhtmlReportwindowNew.js" type="text/javascript" ></script>
    <script src="JavaScript/General.js" type="text/javascript"></script>
</head>
<body>
    <form id="Form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>       
        <!-- Main navbar -->
        <div class="navbar navbar-expand-md navbar-dark">
            <div class="navbar-brand">
              <img src="images/logo.png" alt=""/>
            </div>

            <div class="d-md-none">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mobile">
                    <i class="icon-tree5"></i>
                </button>
                <button class="navbar-toggler sidebar-mobile-main-toggle" type="button" style="height: 38px">
                    <i class="icon-paragraph-justify3"></i>
                </button>
            </div>

            <div class="collapse navbar-collapse" id="navbar-mobile">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="#" class="navbar-nav-link sidebar-control sidebar-main-toggle d-none d-md-block">
                            <i class="icon-paragraph-justify3"></i>
                        </a>
                    </li>

                    <li class="nav-item dropdown">
                     
                    </li>
                </ul>
                <h1 style="padding: 10px;">
                <asp:DropDownList ID="DdlOrgList" runat="server" SkinID="DdlListRed" AutoPostBack="true" OnSelectedIndexChanged="DdlOrgList_SelectedIndexChanged" ></asp:DropDownList></h1>
                <span style="font-size: 100%;" class="badge bg-success ml-md-3 mr-md-auto">
                <asp:HyperLink ID="HyLnkTutoduHome" Text="TUTODU HOME" NavigateUrl="~/CommonPages/Index.aspx" ForeColor="White" runat="server" /></span>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                    </li>

                    <li class="nav-item dropdown">
                        <a href="#" class="navbar-nav-link dropdown-toggle caret-0" data-toggle="dropdown">
                            <i class="icon-bubbles4"></i>
                            <span class="d-md-none ml-2">Messages</span>
                            <span class="badge badge-pill bg-warning-400 ml-auto ml-md-0" id="spannotbadge">
                                <asp:Label ID="LblNotificationNo" Text="0" runat="server" /></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right dropdown-content wmin-md-350">
                            <div class="dropdown-content-header">
                                <span class="font-weight-semibold">Notifications</span>
                                <%--  <a href="#" class="text-default"><i class="icon-compose"></i></a>--%>
                            </div>

                            <div class="dropdown-content-body dropdown-scrollable">
                                <ul class="media-list">
                                    <asp:Repeater runat="server" ID="RptrNotification">
                                        <ItemTemplate>
                                            <li class="media">
                                                <div class="mr-3 position-relative">
                                                    <img src="../Assets/UploadedFiles/OrgImgs/OrgImg211012021132311.png" width="36" height="36" class="rounded-circle" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <div class="media-title">
                                                        <a href="../Organization/inbox.aspx">
                                                            <span class="font-weight-semibold"><%#Eval("FrmAccName") %></span>
                                                            <span class="text-muted float-right font-size-sm"><%#Eval("UpdateDate", "{0:MMMM d}") %></span>
                                                        </a>
                                                    </div>
                                                    <a href="../CommonPages/InboxChanger.aspx">
                                                        <span class="text-muted"><%#Eval("Name")%></span>
                                                    </a>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </ul>
                            </div>

                            <div class="dropdown-content-footer justify-content-center p-0">
                                <a href="#" class="bg-light text-grey w-100 py-2" data-popup="tooltip" title="Load more"><i class="icon-menu7 d-block top-0"></i></a>
                            </div>
                        </div>
                    </li>

                    <li class="nav-item dropdown dropdown-user">
                        <a href="#" class="navbar-nav-link d-flex align-items-center dropdown-toggle" data-toggle="dropdown">
                            <img runat="server" id="ImgProfPic2" class="rounded-circle mr-2" height="34" alt="">
                            <span runat="server" id="SpanProfileName"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right">
                            <asp:HyperLink ID="HyLnkMyProfile" runat="server" Target="FrmContent" CssClass="dropdown-item"><i class="icon-user-plus"></i>My profile</asp:HyperLink>
                            <div class="dropdown-divider"></div>
                            <asp:HyperLink ID="HyLnkAccount"  runat="server" CssClass="dropdown-item"><i class="icon-credit-card"></i>Account Settings</asp:HyperLink>
                             <div class="dropdown-divider"></div>
                            <asp:HyperLink ID="HyLnkCalender"  runat="server" CssClass="dropdown-item"><i class="icon-calendar52"></i>Calender</asp:HyperLink>
                            <div class="dropdown-divider"></div>
                            <asp:LinkButton ID="LnkBttnLogout"  runat="server" CssClass="dropdown-item" OnClick="LnkBttnLogout_Click"><i class="icon-switch2"></i>Logout</asp:LinkButton>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /main navbar -->

        <!-- Page content -->
        <div class="page-content">


            <!-- Main sidebar -->
            <div  class="sidebar sidebar-dark sidebar-main sidebar-expand-md">

                <!-- Sidebar mobile toggler -->
                <div class="sidebar-mobile-toggler text-center">
                    <a href="#" class="sidebar-mobile-main-toggle">
                        <i class="icon-arrow-left8"></i>
                    </a>
                    Navigation
			
                <a href="#" class="sidebar-mobile-expand">
                    <i class="icon-screen-full"></i>
                    <i class="icon-screen-normal"></i>
                </a>
                </div>
                <!-- /sidebar mobile toggler -->


                <!-- Sidebar content -->
                <div class="sidebar-content">

                    <!-- User menu -->
                    <div class="sidebar-user">
                        <div class="card-body">
                            <div class="media">
                                <div class="mr-3">
                                   <img id="ImgProfilePic" runat="server" width="38" height="38" class="rounded-circle" alt="" />
                                </div>
                                <div class="media-body">
                                    <div class="media-title font-weight-semibold">
                                        <asp:Label ID="LblProfileName" Text="Tutor" runat="server" />
                                    </div>
                                    <div class="font-size-xs opacity-50">
                                        <i class="icon-pin font-size-sm"></i><asp:Label Text="USA" ID="LblProfileCountry" runat="server" />

                                    </div>
                                </div>

                                <div class="ml-3 align-self-center">
                                    <asp:LinkButton ID="LnkBttnCog"  runat="server" CssClass="text-white"><i class="icon-cog3"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /user menu -->


                    <!-- Main navigation -->
                    <div class="card card-sidebar-mobile">
                        <ul class="nav nav-sidebar" data-nav-type="accordion">
                            <!-- Main -->
                            <li class="nav-item-header">
                               <!--  <div class="text-uppercase font-size-xs line-height-xs">Main</div>-->
                                <i class="icon-menu" title="Main"></i></li>
                            <li class="nav-item">
                                <asp:HyperLink ID="HyLnkDashboard" runat="server" Target="FrmContent" CssClass="nav-link"> <i class="icon-home4"></i>
                                    <span>Dashboard
								</span></asp:HyperLink>
                            </li>
                             <li class="nav-item">
                                <asp:HyperLink ID="HyLnkNot" runat="server" Target="FrmContent" CssClass="nav-link"> <i class="icon-compose"></i>
                                    <span>Notification
								</span></asp:HyperLink>
                            </li>
                             <li class="nav-item">
                                <asp:HyperLink ID="HyLnkClndr" runat="server" Target="FrmContent" CssClass="nav-link"> <i class="icon-calendar52"></i>
                                    <span>Calender
								</span></asp:HyperLink>
                            </li>
                             <li class="nav-item">
                                  <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                                <asp:LinkButton ID="LnkBtnMeeting" runat="server" CssClass="nav-link"> <i class="icon-windows2"></i>
                                    <span>Meeting
								</span></asp:LinkButton></ContentTemplate></asp:UpdatePanel>
                            </li>
                           <!-- <div style="overflow: auto;height: 60vh;"> -->
                                <asp:Label id="LblMenu" runat="server"></asp:Label>
                                       <asp:Repeater runat="server" OnItemDataBound="RptrMainMenu_ItemDataBound" ID="RptrMainMenu">
                                        <ItemTemplate>
                                            <li class="nav-item nav-item-submenu">
                                                 <a href="#" class="nav-link"><i class="<%#Eval("cDescription") %>"></i><span><%#Eval("cInterfaceName") %></span></a>                                                
                                                <ul class="nav nav-group-sub">
                                                    <asp:HiddenField ID="HdnMenuId" Value='<%#Eval("nMenuId")%>' runat="server" />
                                                    <asp:Repeater runat="server" ID="RptrSubMenu" OnItemDataBound="RptrSubMenu_ItemDataBound" >
                                                        <ItemTemplate>
                                                            <li class="nav-item"><asp:HyperLink ID="HyLnkMenu" runat="server" class="nav-link" Text="dkgjdk"></asp:HyperLink></li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                         <!--   </div> -->
                                    <li class="nav-item-header">
                                        <div class="text-uppercase font-size-xs line-height-xs"></div>
                                        <i class="icon-menu" title="Main"></i></li>
                        </ul>
                        <asp:HiddenField ID="HddnImgUrl" runat="server" />
                    </div>
                    <!-- /main navigation -->

                </div>
                <!-- /sidebar content -->

            </div>
            <!-- /main sidebar -->

            <!-- Main content -->
            <div class="content-wrapper">
                   <!--  <div class="content" > 100vh -->
                         <iframe style="width: 100%;height:  85vh;" id="FrmContent" runat="server" name="FrmContent" frameBorder="0" scrolling="yes"></iframe>

                <div class="navbar navbar-expand-lg navbar-light">
                    <div class="text-center d-lg-none w-100">
                        <button type="button" class="navbar-toggler dropdown-toggle" data-toggle="collapse" data-target="#navbar-footer">
                            <i class="icon-unfold mr-2"></i>
                            Footer</button>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar-footer">
                        <span class="navbar-text">Copyrights © 2021 <a href="#">Tutodu Academy</a> by <a href="#" target="_blank">JJ Global Services LLC</a>
                        </span>
                    </div>  
                </div>
                <!-- /footer -->
           <!-- </div> -->
            <!-- /main content -->
        </div>
        <!-- /page content -->
                <asp:HiddenField ID="HddnUserID" runat="server" />
    </form>
</body>
</html>

