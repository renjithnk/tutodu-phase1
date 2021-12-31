<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_JoinRqstsApprovedSt, App_Web_3j03txs0" %>

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
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Academy Join Requests - Students</span> - Approved Requests</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Academy Join Requests</span>
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
                <h5 class="card-title">Students Approved Requests</h5>
            </div>

            <table class="table datatable-responsive">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Organization</th>
                        <th>Reg.No</th>
                         <th>Active</th>
                         <th>Date</th>
                        <th class="text-center">Approve</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>

                    <asp:Repeater ID="rptrJoinRqsts" runat="server" OnItemCommand="rptrJoinRqsts_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("StudentName") %></td>
                                <td><%#Eval("OrganizationName") %></td>
                                <td><%#Eval("OrgRegNo") %></td>
                                <td><%#Eval("Active") %></td>
                                <td><%#Eval("UpdateDate","{0:dd MMM yyyy}") %></td>
                                <td class="text-center"><%#Eval("IsApprove") %></td>
                                <td class="text-center">
                                    <asp:LinkButton runat="server" ID="LinkButton5" CommandArgument='<%#Eval("Id")+","+ Eval("OrgRegNo")+","+ Eval("StudentId") %>' CommandName="Reject">REJECT</asp:LinkButton>
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

