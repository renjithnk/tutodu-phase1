<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_StudentsAttendance, App_Web_3j03txs0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">


    <style>
        div.dataTables_wrapper {
            width: 100%;
            margin: 0 auto;
        }

        .checkbox .btn, .checkbox-inline .btn {
            padding-left: 2em;
            min-width: 8em;
        }

        .checkbox label, .checkbox-inline label {
            /*text-align: left;*/
            padding-left: 0.5em;
            padding-right: 0px;
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
    <asp:HiddenField ID="HddnExamID" runat="server" />
    <asp:HiddenField ID="HddnExamName" runat="server" />
    <asp:HiddenField ID="HddnCrsAccID" runat="server" />
      <asp:HiddenField ID="HddnDate" runat="server" />


    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Students</span> - Attendance</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Students</a>
                    <span class="breadcrumb-item active">Attendance</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <div class="content">

        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title"><b>Students Attendance</b></h5>
            </div>
            <div class="card-body">
                <%--     <asp:UpdatePanel runat="server" ID="UpdtNotification" >
                    <ContentTemplate>--%>
                <div class="row">
                    <div class="col-md-8">
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
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Date</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtDate" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <%--     </ContentTemplate>
                </asp:UpdatePanel>--%>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table id="example" class="table display nowrap" style="width: 100%">
                                <thead>
                                    <tr>

                                        <th>#</th>
                                        <th>Student</th>
                                        <th>Tutor</th>
                                        <th style="text-align: center">Join</th>
                                        <th style="text-align: center">Present / Absent</th>
                                        <th style="text-align: center">Remarks</th>
                                    </tr>
                                </thead>
                                <asp:Repeater runat="server" ID="RptrStudents">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr>

                                                <td>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                                <td><%#Eval("StudentName") %></td>
                                                <td><%#Eval("TutorName") %></td>
                                                <td><%#Eval("UpdateDate","{0:dd-MMM-yyyy HH:mm:ss}") %></td>
                                                <td style="text-align: center">
                                                    <asp:RadioButtonList ID="RdBttnPresentAbsent" runat="server" RepeatDirection="Horizontal" CssClass="checkbox">
                                                        <asp:ListItem Text="Present" Selected="True" />
                                                        <asp:ListItem Text="Absent" />
                                                    </asp:RadioButtonList>
                                                    <asp:Label Text='<%#Eval("StudentId") %>' ID="LblStudentID" Visible="false" runat="server" />
                                                </td>
                                                <td style="width: 25%">
                                                    <asp:TextBox ID="TxtRemarks" runat="server" CssClass="form-control" /></td>
                                            </tr>
                                        </tbody>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="text-right">
                    <asp:Button ID="BttnSaveAttendance" Text="Save Attendance" OnClick="BttnSaveAttendance_Click" class="btn btn-success" runat="server" />
                </div>


            </div>
        </div>
    </div>

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


    <!-- Basic modal -->
    <div id="modal_ExamDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Organization Exams</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">

                    <div class="table-responsive">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Exam</th>
                                    <th>Course</th>
                                    <th>Duration</th>
                                    <th>St. Date</th>
                                    <th>En. Date</th>
                                    <th>Due Date</th>
                                    <th>Type</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RptrExamDet" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("CourseMaster") %></td>
                                            <td><%#Eval("Duration")+"-"+Eval("DurationType") %></td>
                                            <td><%#Eval("StartDate","{0:dd MMM yyyy}")%></td>
                                            <td><%#Eval("EndDate","{0:dd MMM yyyy}") %></td>
                                            <td><%#Eval("LateSubmitDate","{0:dd MMM yyyy}")%></td>
                                            <td><%#Eval("ExamType") %></td>
                                            <td class="text-center">
                                                <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("ID")+","+ Eval("Name")+","+ Eval("CourseMasterId") %>' CommandName="Select">Select</asp:LinkButton>
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

    <script type="text/javascript">

        $('[id*=TxtDate]').datepicker({
            changeMonth: true,
            changeYear: true,
            format: "dd M yyyy",
            language: "tr"

        })



    </script>



    <script>



        $(document).ready(function () {
            $('#example').DataTable({
                "scrollX": true
            });
        });

        $(document).ready(function () {
            $(".chkall").click(function () {

                if ($('#chkSelAll').prop('checked')) {
                    $('input[type=checkbox]').prop('checked', true);
                }
                else {
                    $('input[type=checkbox]').prop('checked', false);
                }


            });
        });


    </script>

    <script>

        //$(document).ready(function () {
        //    $('[id*=TxtMarkShortAnswer]').keyup(function () {
        //        alert(0);
        //        calculatetotal();
        //    });
        //});



    </script>


</asp:Content>

