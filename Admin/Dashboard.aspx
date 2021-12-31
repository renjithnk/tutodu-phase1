<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Admin_Dashboard, App_Web_ybvgoxqu" %>

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

        <div class="row">

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                            <i class="icon-users4 icon-3x text-primary-400"></i>
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="LblTotStudents" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">total Students</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                            <i class="icon-user-check icon-3x text-success-400"></i>
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblActStudents" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">Active Students</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                          <div class="mr-3 align-self-center">
                            <i class="icon-user-lock icon-3x text-danger-400"></i>
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblInactStudents" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">inactive Students</span>
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
                            <i class="icon-user-tie icon-3x text-primary-400"></i>
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblTotTutors" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">Total Tutors</span>
                        </div>

                      
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                            <i class="icon-user-tie icon-3x text-success-400"></i>
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="LblActTutors" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">Active Tutors</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                            <i class="icon-user-tie icon-3x text-danger-400"></i>
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblInacTutors" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">inActive Tutors</span>
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
                            <i class="icon-city icon-3x text-primary-400"></i>
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="LblTotOrg" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">total Organizations</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                            <i class="icon-city icon-3x text-success-400"></i>
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblActOrg" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">Active Organizations</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                          <div class="mr-3 align-self-center">
                            <i class="icon-city icon-3x text-danger-400"></i>
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0"><asp:Label ID="LblInactOrg" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">inactive Organizations</span>
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
                            <i class="icon-book icon-3x text-primary-400"></i>
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label1" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">total Courses</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                            <i class="icon-book icon-3x text-success-400"></i>
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label2" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">Active Courses</span>
                        </div>
                    </div>
                </div>
            </div>

           <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                        <div class="mr-3 align-self-center">
                            <i class="icon-book icon-3x text-danger-400"></i>
                        </div>

                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">
                                <asp:Label ID="Label3" Text="0" CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                            <span class="text-uppercase font-size-sm text-muted">inactive Courses</span>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <!-- /content area -->
</asp:Content>

