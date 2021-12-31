<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Tutor_Dashboard, App_Web_hacr2tjf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">

    <!-- Theme JS files -->
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/visualization/d3/d3.min.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/forms/styling/switchery.min.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/ui/moment/moment.min.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pickers/daterangepicker.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_pages/dashboard.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/demo_pages/widgets_stats.js"></script>
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
                            <i class="icon-users4 icon-3x text-success-400"></i>
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">100</h3>
                            <span class="text-uppercase font-size-sm text-muted">total Students</span>
                        </div>
                    </div>
                </div>
            </div>

          

            <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                    <div class="media">
                         <div class="mr-3 align-self-center">
                            <i class="icon-office icon-3x text-blue-400"></i>
                        </div>
                        <div class="media-body text-right">
                            <h3 class="font-weight-semibold mb-0">390</h3>
                            <span class="text-uppercase font-size-sm text-muted">total Organizations</span>
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
                            <h3 class="font-weight-semibold mb-0">438</h3>
                            <span class="text-uppercase font-size-sm text-muted">total Courses</span>
                        </div>

                    
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /content area -->


       <script>
           $(document).ready(function () {
               var urlParams = new URLSearchParams(window.location.search);
               if (urlParams.has('newuser')) {
                   sweetAlert("Welcome!", "Please update your profile", "warning");
                   var uri = window.location.href.toString();
                   if (uri.indexOf("?") > 0) {
                       var clean_uri = uri.substring(0, uri.indexOf("?"));
                       window.history.replaceState({}, document.title, clean_uri);
                   }
               }

           });

       </script>

</asp:Content>

