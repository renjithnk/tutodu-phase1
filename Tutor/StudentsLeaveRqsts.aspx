<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Tutor_StudentsLeaveRqsts, App_Web_hacr2tjf" %>

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
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Students</span> - Leave Requests</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Students Leave Requests</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <!-- Content area -->
    <div class="content">
        <asp:HiddenField ID="HddnOrgAccID" runat="server" />
        <asp:HiddenField ID="HddnTutAccID" runat="server" />
        <asp:HiddenField ID="HddnCrsID" runat="server" />
        <!-- Basic datatable -->
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Leave Requests</h5>
            </div>
            <div class="card-body">

                <div class="row">
                    <div class="col-md-11">
                        <div class="form-group">
                            <label><b>Course</b></label>
                            <div class="input-group">
                                <asp:Label ID="LblCourseName" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <label><b>&nbsp;</b></label>
                            <div class="input-group">
                                <asp:LinkButton ID="Button1" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_CourseDet"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Course</th>
                                    <th>Status</th>
                                    <th>Remarks</th>
                                    <th>Date</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptrCourseLeaveRqsts" runat="server" OnItemCommand="rptrCourseLeaveRqsts_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("StudentName") %></td>
                                            <td><%#Eval("CourseMasterName") %></td>
                                            <td><%#Eval("AttendanceStatus") %></td>
                                            <td><%#Eval("Remarks") %></td>
                                            <td><%#Eval("TrDate","{0:dd-MMM-yyyy}") %></td>
                                            <td class="text-center">
                                                <asp:LinkButton runat="server" ID="LinkButton5" CommandArgument='<%#Eval("Id")+","+ Eval("StudentId")+","+ Eval("CourseMasterId") %>' CommandName="Reject">REJECT</asp:LinkButton>
                                                <asp:LinkButton runat="server" ID="LinkButton1" CommandArgument='<%#Eval("Id")+","+ Eval("StudentId")+","+ Eval("CourseMasterId")+","+ Eval("AttendanceStatus")+","+ Eval("Remarks")+","+ Eval("TrDate")  %>' CommandName="Approve">ACCEPT</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>


            </div>





        </div>
        <!-- /basic datatable -->

    </div>
    <!-- /content area -->


    <!-- Basic modal -->
    <div id="modal_CourseDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Courses</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="table-responsive">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Course</th>
                                    <th>Course Type</th>
                                    <th>Category</th>
                                    <th>Sub Category</th>
                                    <th>Medium</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RptrCourseDet" runat="server" OnItemCommand="RptrCourseDet_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("CourseTType") %></td>
                                            <td><%#Eval("CategoryName") %></td>
                                            <td><%#Eval("SubCategoryName") %></td>
                                            <td><%#Eval("CourseMedium")%></td>
                                            <td class="text-center">
                                                <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("ID")+","+ Eval("PrimaryTutorId")+","+ Eval("Name")+","+ Eval("AccId") %>' CommandName="Select">Select</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- /basic modal -->



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

