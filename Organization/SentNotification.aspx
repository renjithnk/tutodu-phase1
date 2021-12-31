<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_SentNotification, App_Web_3j03txs0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">

    <link href="../Assets/Dashboard/Global_Assets/summernote-0.8.18-dist/summernote.min.css" rel="stylesheet" />
    <script src="../Assets/Dashboard/Global_Assets/summernote-0.8.18-dist/summernote.min.js"></script>

    <style>
        .checkbox .btn, .checkbox-inline .btn {
            padding-left: 2em;
            min-width: 8em;
        }

        .checkbox label, .checkbox-inline label {
            text-align: left;
            padding-left: 0.5em;
            padding-right: 1.5em;
        }

        .checkbox input[type="checkbox"] {
            float: none;
        }

        .hidden {
            display: none;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <asp:HiddenField ID="HddnStudentID" runat="server" />
    <asp:HiddenField ID="HddnCrsID" runat="server" />
    <asp:HiddenField ID="HddnPriTutID" runat="server" />
    <asp:HiddenField ID="HddnOrgAccID" runat="server" />


    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Notifications</span> - Compose Notification</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Organization/Inbox.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Notifications</a>
                    <span class="breadcrumb-item active">Compose Notification</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <div class="content">

        <div class="card">
            <div class="card-body">
                <asp:UpdatePanel runat="server" ID="UpdtNotification" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="row">
                                <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>Date</b></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TxtAlertDate"  runat="server" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label><b>To</b></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TxtToAddress" placeholder="To" runat="server" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <label><b>&nbsp;</b></label>
                                    <div class="input-group">
                                        <asp:LinkButton ID="Button1" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_UserDet"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-11">
                                <div class="form-group">
                                    <label><b>Course</b></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TxtCourseName" placeholder="Course Name" runat="server" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <label><b>&nbsp;</b></label>
                                    <div class="input-group">
                                        <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_CourseDet"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Message Type</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="DrpMsgType" OnSelectedIndexChanged="DrpMsgType_SelectedIndexChanged" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Subject</b></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TxtSubject" placeholder="" runat="server" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div id="divnote" class="col-md-12 " runat="server">
                                <div class="form-group">
                                    <label><b>Messages</b></label>
                                    <div class="">
                                        <asp:TextBox ID="TxtNote" TextMode="MultiLine" runat="server" placeholder="Notification" CssClass="form-control summernote">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>


                <asp:Label runat="server" Text="" ID="LblErrMsg" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnSentNotification" OnClick="BttnSentNotification_Click" Text="Sent Notification" class="btn btn-primary" runat="server" />
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>From</th>
                                    <th>To</th>
                                    <th>Type</th>
                                    <th>Notification</th>
                                            <th>Update Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptrNotifications" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                           <td><%#Eval("TrDate","{0:dd MMM yyyy}") %></td>
                                            <td><%#Eval("FrmAccName") %></td>
                                            <td><%#Eval("ToAccName") %></td>
                                            <td><%#Eval("NotificationGrpName") %></td>
                                            <td><%#Eval("Name") %></td>
                                               <td><%#Eval("UpdateDate","{0:dd MMM yyyy HH:mm:ss}") %></td>                                            
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



    <!-- Basic modal -->
    <div id="modal_UserDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Organization Students</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">

                    <div class="table-responsive">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Org Reg No.</th>
                                    <th>Org Class No.</th>
                                    <th>University Reg No.</th>
                                    <th>Join By</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptrStudentDet" OnItemCommand="rptrStudentDet_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("StudentName") %></td>
                                            <td><%#Eval("OrgRegNo") %></td>
                                            <td><%#Eval("OrgClassNo") %></td>
                                            <td><%#Eval("UniversityRegNo")%></td>
                                            <td><%#Eval("UpdateDate","{0:dd MMM yyyy HH:mm:ss}") %></td>
                                            <td class="text-center">
                                                <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("StudentId")+","+ Eval("StudentName") %>' CommandName="Select">Select</asp:LinkButton>
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

    <!-- Basic modal -->
    <div id="modal_CourseDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Organization Courses</h5>
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
                                    <th>Medium</th>
                                    <th>Pri. Tutor</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RptrCourseDet" OnItemCommand="RptrCourseDet_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("CourseTType") %></td>
                                            <td><%#Eval("CategoryName") %></td>
                                            <td><%#Eval("CourseMedium")%></td>
                                            <td><%#Eval("PrimaryTutorName") %></td>
                                            <td class="text-center">
                                                <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("ID")+","+ Eval("PrimaryTutorId")+","+ Eval("Name") %>' CommandName="Select">Select</asp:LinkButton>
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
        $(document).ready(function () {
            $('.summernote').summernote();
        });

        function LoadSummerNote() {
            $('.summernote').summernote();
        }




        $(function DateLeave() {
            $('[id*=TxtAlertDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd M yyyy",
                language: "tr"

            })


        });

    </script>

</asp:Content>

