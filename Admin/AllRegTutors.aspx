<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Admin_AllRegTutors, App_Web_ybvgoxqu" %>

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
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - All Tutors</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">All Tutors</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <!-- Content area -->
    <div class="content">

        <!-- Basic datatable -->
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">All Tutors</h5>
            </div>
         <table class="table datatable-responsive">
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>Register Date</th>
                        <th>Group Name</th>
                        <th class="text-center">IsApprove</th>
                           <th class="text-center">IsActive</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>

                    <asp:Repeater ID="rptrUserDet" OnItemCommand="rptrUserDet_ItemCommand" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Email") %></td>
                                <td><%#Eval("UpdateDate") %></td>
                                 <td><%#Eval("GroupName") %></td> 
                                <td><%#Eval("IsApprove") %></td>                                                               
                                <td class="text-center"><%#Eval("Active") %></td>
                                <%-- <td class="">
                                    <asp:LinkButton ID="LinkButton1" Text="Approve" runat="server" CommandArgument='<%#Eval("Name") %>' CommandName="Approve" />/
                                    <asp:LinkButton ID="LinkButton2" Text="Reject" runat="server" CommandArgument='<%#Eval("Name") %>' CommandName="Reject" /></td>--%>
                                <td class="text-center">
                                    <asp:LinkButton runat="server" ID="LinkButton6" CommandArgument='<%#Eval("Id") %>' CommandName="Activate">ACTIVATE</asp:LinkButton>
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

