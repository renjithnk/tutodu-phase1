<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Tutor_ExamReview, App_Web_hacr2tjf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">


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
    <asp:HiddenField ID="HddnExamID" runat="server" />
    <asp:HiddenField ID="HddnExamName" runat="server" />
        <asp:HiddenField ID="HddnCrsAccID" runat="server" />


    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Exam</span> - Exam Review</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Exam</a>
                    <span class="breadcrumb-item active">Exam Review</span>
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
                            <div class="col-md-11">
                                <div class="form-group">
                                    <label><b>Exam</b></label>
                                    <div class="input-group">
                                        <asp:Label ID="LblExamName" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <label><b>&nbsp;</b></label>
                                    <div class="input-group">
                                        <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_ExamDet"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Student</b></label>
                                    <div class="input-group">
                                        <%--   <asp:Label ID="LblStudentName" runat="server" CssClass="form-control" />--%>
                                        <asp:DropDownList ID="DrpStudents" OnSelectedIndexChanged="DrpStudents_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <%--   <div class="col-md-1">
                                <div class="form-group">
                                    <label><b>&nbsp;</b></label>
                                    <div class="input-group">
                                        <asp:LinkButton ID="LinkButton2" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_examAttendStudents"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <%--   <div class="row">
                    <table>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="Label5" Text="Section 1 - Short Answer Questions" Font-Bold="true" runat="server" />
                            </td>
                        </tr>
                    </table>
                </div>--%>




                <%--                <br />
                <asp:Label runat="server" Text="" ID="LblErrMsg" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnSentNotification" Text="Sent Notification" class="btn btn-primary" runat="server" />
                </div>--%>
            </div>
        </div>

        <div class="card">
            <%--    <div class="card-header header-elements-inline">
                <h5 class="card-title"><b>New Course</b></h5>
                <div class="header-elements">
                    <div class="list-icons">
                        <a class="list-icons-item" data-action="collapse"></a>
                        <a class="list-icons-item" data-action="reload"></a>
                        <a class="list-icons-item" data-action="remove"></a>
                    </div>
                </div>
            </div>--%>
            <div class="card-body">
                <asp:UpdatePanel runat="server" ID="UpdtExamAnswerAll" UpdateMode="Conditional" ChildrenAsTriggers="true">
                    <ContentTemplate>

                        <div class="row">
                            <div class="col-md-12">
                                <fieldset>
                                    <legend class="font-weight-semibold"><i class="icon-reading mr-2"></i>Exam Review</legend>
                                </fieldset>
                            </div>
                        </div>

                        <table>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="LblSec1" Visible="false" Text="Section 1 - Short Answer Questions" Font-Bold="true" runat="server" />
                                </td>
                            </tr>
                        </table>

                        <br />

                        <table style="width: 100%">
                            <asp:Repeater runat="server" ID="RptrExamQstnsShortAnswer">
                                <ItemTemplate>
                                    <tr>
                                        <td style="text-align: left" colspan="2">
                                            <asp:Label Text='<%#Eval("ID")%>' ID="LblAnswerID" runat="server" Visible="false" />
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" />. <%#Eval("CourseExamQuestion") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 80%">
                                            <asp:Label ID="LblShortAnswer" Text='<%#Eval("Answer") %>' CssClass="form-control" runat="server" />
                                        </td>
                                        <td style="width: 10%">
                                            <asp:Label ID="TextBox2" runat="server" readonly placeholder="Mark" CssClass="form-control" Text='<%#Eval("ActualMark") %>' />
                                        </td>
                                        <td style="width: 10%">
                                            <asp:TextBox ID="TxtMarkShortAnswer" OnTextChanged="TxtMarkShortAnswer_TextChanged" AutoPostBack="true"  runat="server" placeholder="Mark" CssClass="form-control txtmark" Text='<%#Eval("ObtainMark") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>

                        <br />

                        <table>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="LblSec2" Visible="false" Text="Section 2 - Objective Questions" Font-Bold="true" runat="server" />
                                </td>
                            </tr>
                        </table>

                        <br />

                        <%--<table style="width: 100%">
                            <asp:Repeater runat="server" ID="RptrExamQstnsObjectiveAnswer">
                                <ItemTemplate>
                                    <tr>
                                        <td style="text-align: left" colspan="2">
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" />. <%#Eval("CourseExamQuestion") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 80%">
                                            <asp:Label ID="LblShortAnswer" Text='<%#Eval("Answer") %>' CssClass="form-control" runat="server" />
                                        </td>
                                        <td style="width: 10%">
                                            <asp:Label ID="TextBox2" runat="server" placeholder="Mark" CssClass="form-control" Text='<%#Eval("ActualMark") %>' />
                                        </td>
                                        <td style="width: 10%">
                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Mark" CssClass="form-control" Text='<%#Eval("ObtainMark") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>--%>

                        <br />

                        <table>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="LblSec3" Visible="false" Text="Section 3 - Multiple Answer Questions" Font-Bold="true" runat="server" />
                                </td>
                            </tr>
                        </table>

                        <br />

                        <%--<table style="width: 100%">
                            <asp:Repeater runat="server" ID="RptrExamQstnsMultipleAnswer">
                                <ItemTemplate>
                                    <tr>
                                        <td style="text-align: left" colspan="2">
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" />. <%#Eval("CourseExamQuestion") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 80%">
                                            <asp:Label ID="LblShortAnswer" Text='<%#Eval("Answer") %>' CssClass="form-control" runat="server" />
                                        </td>
                                        <td style="width: 10%">
                                            <asp:Label ID="TextBox2" runat="server" placeholder="Mark" CssClass="form-control" Text='<%#Eval("ActualMark") %>' />
                                        </td>
                                        <td style="width: 10%">
                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Mark" CssClass="form-control" Text='<%#Eval("ObtainMark") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>--%>

                        <br />

                        <table>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="LblSec4" Visible="false" Text="Section 4 - Long Answer Questions" Font-Bold="true" runat="server" />
                                </td>
                            </tr>
                        </table>

                        <br />

                        <%--<table style="width: 100%">
                            <asp:Repeater runat="server" ID="RptrExamQstnsLongAnswer">
                                <ItemTemplate>
                                    <tr>
                                        <td style="text-align: left" colspan="3">
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" />. <%#Eval("CourseExamQuestion") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 80%">
                                            <asp:Label ID="LblShortAnswer" Text='<%#Eval("Answer") %>' CssClass="form-control" runat="server" />
                                        </td>
                                        <td style="width: 10%">
                                            <asp:Label ID="TextBox2" runat="server" placeholder="Mark" CssClass="form-control" Text='<%#Eval("ActualMark") %>' />
                                        </td>
                                        <td style="width: 10%">
                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Mark" CssClass="form-control" Text='<%#Eval("ObtainMark") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>--%>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <br />
                <asp:UpdatePanel runat="server" ID="UpdtGrading" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table style="width: 100%; border: 1px solid black;">
                            <tr style="border: 1px solid black;">
                                <td style="text-align: left; border: 1px solid black;">&nbsp;&nbsp;&nbsp;Exam Total Marks:
                                    <asp:Label ID="LblExamTotalMarks" Text="0" runat="server" />
                                </td>
                                <td style="text-align: left; border: 1px solid black;">&nbsp;&nbsp;&nbsp;Total Marks Obtained:
                                    <asp:Label ID="LblExamMarkObtained" Text="0" CssClass="lblmarkfinal" runat="server" />
                                </td>
                                <td style="text-align: left; border: 1px solid black;">&nbsp;&nbsp;&nbsp;Pass Mark:
                                    <asp:Label ID="LblExamPassMark" Text="0" runat="server" />
                                </td>
                            </tr>
                            <tr style="border: 1px solid black;">
                                <td style="text-align: left; border: 1px solid black;">&nbsp;&nbsp;&nbsp;Grade:
                                    <asp:Label ID="LblExamGrade" Text="D" runat="server" />
                                </td>
                                <td style="text-align: center" colspan="2">
                                    <asp:Label ID="LblExamPassFail" Text="Fail" Font-Bold="true" Font-Size="Medium" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <br />
                <asp:Label runat="server" Text="" ID="Label6" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnSubmitReview" OnClick="BttnSubmitReview_Click" Text="Submit" class="btn btn-primary" runat="server" />
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
                                <asp:Repeater ID="RptrCourseDet" OnItemCommand="RptrCourseDet_ItemCommand" runat="server">
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
                                <asp:Repeater ID="RptrExamDet" OnItemCommand="rptrExamDet_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("CourseMaster") %></td>
                                            <td><%#Eval("Duration")+"-"+Eval("DurationType") %></td>
                                            <td><%#Eval("StartDate")%></td>
                                            <td><%#Eval("EndDate") %></td>
                                            <td><%#Eval("LateSubmitDate")%></td>
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


    <script>

        //$(document).ready(function () {
        //    $('[id*=TxtMarkShortAnswer]').keyup(function () {
        //        alert(0);
        //        calculatetotal();
        //    });
        //});


        function calculatetotal() {

            var totalmarks = 0.00;


            $(".txtmark").each(function (index) {
                totalmarks = totalmarks + parseFloat($(this).val());
            });

            $(".lblmarkfinal").text(totalmarks.toFixed(2));
            $(".lblmarkfinal").val(totalmarks.toFixed(2));


        }

    </script>


</asp:Content>

