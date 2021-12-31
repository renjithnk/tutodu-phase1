<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_CourseJoinRqstsPendingOrg, App_Web_3j03txs0" %>

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
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Course Join Requests</span> - Pending Requests</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Course Join Requests</span>
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
        <!-- Basic datatable -->
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Pending Requests</h5>
            </div>

            <table class="table datatable-responsive">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Organization</th>
                        <th>Course</th>
                        <th>Active</th>
                        <th>Date</th>
                        <th class="text-center">Approve</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptrCourseJoinRqsts" runat="server" OnItemCommand="rptrCourseJoinRqsts_ItemCommand">
                        <ItemTemplate>

                            <tr>
                                <td><%#Eval("StudentName") %></td>
                                <td><%#Eval("OrganizationName") %></td>
                                <td><%#Eval("CourseMasterName") %></td>
                                <td><%#Eval("Active") %></td>
                                <td><%#Eval("UpdateDate","{0:dd MMM yyyy}") %></td>
                                <td class="text-center"><%#Eval("IsApprove") %></td>
                                <td class="text-center">
                                    <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("Id")+","+ Eval("StudentId")+","+ Eval("OrganizationId")+","+ Eval("CourseMasterId") %>' CommandName="Approve">ACCEPT</asp:LinkButton>&nbsp;&nbsp;/ 
                                            <asp:LinkButton runat="server" ID="LinkButton5" CommandArgument='<%#Eval("Id")+","+ Eval("StudentId")+","+ Eval("OrganizationId")+","+ Eval("CourseMasterId") %>' CommandName="Reject">REJECT</asp:LinkButton>
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

    <!-- Basic modal -->
    <div id="modal_CourseDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <h5 class="modal-title">Accept Course Join Request</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label><b>Course Name</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="LblCourseNameMod" Text="Course Name" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><b>Start Date</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="Label6" Text="10 March 2021" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><b>End Date</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="Label7" Text="20 March 2021" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><b>Primary Tutor</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="Label1" Text="Asif Rahiman" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><b>Student</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="Label2" Text="Sahal" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="text-right">
                                <asp:LinkButton ID="BttnAccept" Text="Accept" OnClick="BttnAccept_Click" class="btn btn-primary" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p style="color: red;">
                                Note:-<br />
                                Course info will be added to Primary Tutor Calendar.<br />
                                Course will be added to Student Calendar.
                                Notification will be sent to Primary Tutor, Student.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /basic modal -->

    <!-- Basic modal -->
    <div id="modal_CourseDetRej" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <h5 class="modal-title">Reject Course Join Request</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label><b>Course Name</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="Label3" Text="Course Name" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><b>Start Date</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="Label8" Text="10 March 2021" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><b>End Date</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="Label9" Text="20 March 2021" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><b>Primary Tutor</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="Label4" Text="Asif Rahiman" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><b>Student</b></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                    </div>
                                    <asp:Label ID="Label5" Text="Sahal" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label><b>Reason for Reject</b></label>
                                <div class="input-group">
                                    <asp:TextBox ID="TxtRejectReason" Text="Payment" TextMode="MultiLine" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="text-right">
                                <asp:LinkButton ID="BttnReject" Text="Reject" OnClick="BttnReject_Click" class="btn btn-primary" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p style="color: red;">
                                Note:-<br />
                                Course info will be added to Primary Tutor Calendar.<br />
                                Course will be added to Student Calendar.
                                Notification will be sent to Primary Tutor, Student.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /basic modal -->

    <asp:HiddenField ID="HddnRqstID" runat="server" />
    <asp:HiddenField ID="HddnStID" runat="server" />
    <asp:HiddenField ID="HddnOrgID" runat="server" />
    <asp:HiddenField ID="HddnCrsMasterID" runat="server" />

    <asp:HiddenField ID="HddnRqstIDRej" runat="server" />
    <asp:HiddenField ID="HddnStIDRej" runat="server" />
    <asp:HiddenField ID="HddnOrgIDRej" runat="server" />
    <asp:HiddenField ID="HddnCrsMasterIDRej" runat="server" />

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

    <script>

        function SuccessAlert() {
            $('#modal_CourseDet').modal('show');
        }

        function SuccessAlertRej() {
            $('#modal_CourseDetRej').modal('show');
        }

    </script>


</asp:Content>

