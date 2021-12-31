<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_CourseRqstsPending, App_Web_3j03txs0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.nonblock.js"></script>

    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Course Requests</span> - Pending Courses</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Course Requests</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <!-- Content area -->
    <div class="content">
        <asp:HiddenField ID="HddnOrgAccID" runat="server" />
        <!-- Basic datatable -->
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Pending Courses</h5>
            </div>

            <table class="table datatable-responsive">
                <thead>
                    <tr>
                        <th>Course</th>
                        <th>Group</th>
                        <th>Sub Group</th>
                         <th>Category</th>
                         <th>Medium</th>
                         <th>Tutor</th>
                        <th class="text-center">Approve</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>

                    <asp:Repeater ID="rptrCourseRqsts" runat="server" OnItemCommand="rptrCourseRqsts_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Name") %></td>
                                <td><%#Eval("GroupName") %></td>
                                <td><%#Eval("SubGroupName") %></td>
                                  <td><%#Eval("Category") %></td>
                                 <td><%#Eval("CourseMedium") %></td>
                                 <td><%#Eval("AccAName") %></td>
                                <td class="text-center"><%#Eval("IsApprove") %></td>
                                <td class="text-center">
                                    <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("ID")+","+ Eval("Name")+","+ Eval("AccId") %>' CommandName="Approve">ACCEPT</asp:LinkButton>&nbsp;&nbsp;/ 
                                            <asp:LinkButton runat="server" ID="LinkButton5" CommandArgument='<%#Eval("ID")+","+ Eval("Name")+","+ Eval("AccId") %>' CommandName="Reject">REJECT</asp:LinkButton>
                                </td>

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>

                </tbody>
            </table>

        </div>
        <!-- /basic datatable -->

    </div>
    <!-- /content area -->


    <script>
        function Notify(title, text, icon, type) {
            new PNotify({
                title: title,
                text: text,
                icon: icon,
                type: type,
                hide: true
            });
        }
    </script>


</asp:Content>

