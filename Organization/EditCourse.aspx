<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_EditCourse, App_Web_3j03txs0" %>

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
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <asp:HiddenField ID="HddnOrgAccID" runat="server" />
    <asp:HiddenField ID="HddnCrsID" runat="server" />
    <asp:HiddenField ID="HddnCrsName" runat="server" />
    <asp:HiddenField ID="HddnImgPath" runat="server" />
    <asp:HiddenField ID="HddnCrsDetID" runat="server" />

    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Course</span> - Edit Course</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Edit Course</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <div class="content">

        <div class="card">
            <%-- <div class="card-header header-elements-inline">
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

                <div class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend class="font-weight-semibold"><i class="icon-reading mr-2"></i>Course Details</legend>
                        </fieldset>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Course Type</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:DropDownList ID="DrpCourseType" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="--Choose--" Selected="True" />
                                    <asp:ListItem Text="Public" />
                                    <asp:ListItem Text="Private" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Course Medium</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:DropDownList ID="DrpCourseMedium" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Course Category</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                </div>
                                <asp:DropDownList ID="DrpCourseCat" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Sub Category</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                </div>
                                <asp:DropDownList ID="DrpCourseSubCat" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Academic Level</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                </div>
                                <asp:DropDownList ID="DrpAcadLevel" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Pre. Requisitions</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                </div>
                                <asp:TextBox runat="server" CssClass="form-control" ID="TxtPreRqsts" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Start Date</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                </div>
                                <asp:TextBox ID="TxtStDate" runat="server" placeholder="" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>End Date</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                </div>
                                <asp:TextBox ID="TxtEnDate" runat="server" placeholder="" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Duration</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                </div>
                                <asp:TextBox ID="TxtDuration" runat="server" placeholder="" CssClass="form-control" />
                                <asp:RadioButtonList runat="server" ID="RdBttnDurationType" RepeatDirection="Horizontal" CssClass="form-control checkbox">
                                    <asp:ListItem Text="Weeks" Selected="True" />
                                    <asp:ListItem Text="Months" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Degree Awarded</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                </div>
                                <asp:TextBox ID="TxtDegreeAward" runat="server" placeholder="Degree Awarded" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Enrollment Window</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                </div>
                                <asp:TextBox ID="TxtEnrolStDate" runat="server" placeholder="" CssClass="form-control" />&nbsp;
                                <asp:Label ID="Label2" Text="-" runat="server" placeholder="" CssClass="" />&nbsp;
                                <asp:TextBox ID="TxtEnrolEnDate" runat="server" placeholder="" CssClass="form-control" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="ChkBxEnrolType" runat="server" CssClass="form-control checkbox" Text="Anytime"></asp:CheckBox>
                            </div>
                        </div>
                    </div>

                </div>


                <asp:UpdatePanel ID="upItemInsert" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Course Status</b></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                        </div>
                                        <asp:DropDownList ID="DrpCourseStatus" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="--Choose--" Selected="True" />
                                            <asp:ListItem Text="Up Coming" />
                                            <asp:ListItem Text="Active" />
                                            <asp:ListItem Text="On Going" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Course Batch#</b></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                        </div>
                                        <asp:TextBox ID="TxtCourseBatch" runat="server" placeholder="Course Batch#" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Instruction Day/Time</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="DrpWeekDay">
                                            <asp:ListItem Text="--Day--" Selected="True" />
                                        <asp:ListItem Text="Sun" />
                                            <asp:ListItem Text="Mon" />
                                            <asp:ListItem Text="Tue" />
                                            <asp:ListItem Text="Wed" />
                                            <asp:ListItem Text="Thu" />
                                            <asp:ListItem Text="Fri" />
                                            <asp:ListItem Text="Sat" />
                                        </asp:DropDownList>&nbsp;
                                <asp:Label ID="Label4" Text="-" runat="server" placeholder="" CssClass="" />&nbsp;
                                <asp:DropDownList ID="DrpFrmTime" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="--From--" Selected="True" />
                                     <asp:ListItem Text="00.00" />
                                    <asp:ListItem Text="01.00" />
                                    <asp:ListItem Text="02.00" />
                                    <asp:ListItem Text="03.00" />
                                    <asp:ListItem Text="04.00" />
                                    <asp:ListItem Text="05.00" />
                                    <asp:ListItem Text="06.00" />
                                    <asp:ListItem Text="07.00" />
                                    <asp:ListItem Text="08.00" />
                                    <asp:ListItem Text="09.00" />
                                    <asp:ListItem Text="10.00" />
                                    <asp:ListItem Text="11.00" />
                                    <asp:ListItem Text="12.00" />
                                    <asp:ListItem Text="13.00" />
                                    <asp:ListItem Text="14.00" />
                                    <asp:ListItem Text="15.00" />
                                    <asp:ListItem Text="16.00" />
                                    <asp:ListItem Text="17.00" />
                                    <asp:ListItem Text="18.00" />
                                    <asp:ListItem Text="19.00" />
                                    <asp:ListItem Text="20.00" />
                                    <asp:ListItem Text="21.00" />
                                    <asp:ListItem Text="22.00" />
                                    <asp:ListItem Text="23.00" />
                                </asp:DropDownList>&nbsp;
                                <asp:Label ID="Label5" Text="-" runat="server" placeholder="" CssClass="" />&nbsp;
                                  <asp:DropDownList ID="DrpToTime" runat="server" CssClass="form-control">
                                      <asp:ListItem Text="--To--" Selected="True" />
                                            <asp:ListItem Text="00.00" />
                                    <asp:ListItem Text="01.00" />
                                    <asp:ListItem Text="02.00" />
                                    <asp:ListItem Text="03.00" />
                                    <asp:ListItem Text="04.00" />
                                    <asp:ListItem Text="05.00" />
                                    <asp:ListItem Text="06.00" />
                                    <asp:ListItem Text="07.00" />
                                    <asp:ListItem Text="08.00" />
                                    <asp:ListItem Text="09.00" />
                                    <asp:ListItem Text="10.00" />
                                    <asp:ListItem Text="11.00" />
                                    <asp:ListItem Text="12.00" />
                                    <asp:ListItem Text="13.00" />
                                    <asp:ListItem Text="14.00" />
                                    <asp:ListItem Text="15.00" />
                                    <asp:ListItem Text="16.00" />
                                    <asp:ListItem Text="17.00" />
                                    <asp:ListItem Text="18.00" />
                                    <asp:ListItem Text="19.00" />
                                    <asp:ListItem Text="20.00" />
                                    <asp:ListItem Text="21.00" />
                                    <asp:ListItem Text="22.00" />
                                    <asp:ListItem Text="23.00" />
                                  </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                              <div class="col-md-1">
                                <div class="form-group">
                                    <label for="fullname">&nbsp;</label><br />
                                    <asp:Button ID="btnAdd" class="btn btn-success" OnClick="btnAdd_Click" Style="float: right;" runat="server" Text="Add" />
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label for="fullname">&nbsp;</label><br />
                                    <asp:Label ID="Label3" Text="" runat="server" />
                                </div>
                            </div>                          
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="upDataList" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="fullname">&nbsp;</label><br />
                                    <table class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Day</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:HiddenField ID="hddnID" runat="server" />
                                                <asp:Repeater ID="RptrUpdate" OnItemCommand="RptrUpdate_ItemCommand" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="LblDay" runat="server" Text='<%# Eval("DayVal") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="LblFrmTime" runat="server" Text='<%# Eval("StartTime") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="LblToTime" runat="server" Text='<%# Eval("EndTime") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:LinkButton ID="lnkBttnDlt" Text="Delete" CommandArgument='<%# Eval("ID") %>' runat="server" />
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <asp:Repeater ID="rptrQout" OnItemCommand="rptrQout_ItemCommand" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="LblDay" runat="server" Text='<%# Eval("Day") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="LblFrmTime" runat="server" Text='<%# Eval("FrmTime") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="LblToTime" runat="server" Text='<%# Eval("ToTime") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:LinkButton ID="lnkBttnDlt" Text="Delete" CommandArgument='<%# Eval("Id") %>' runat="server" />
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />

                <div class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend class="font-weight-semibold"><i class="icon-reading mr-2"></i>Course Desciption</legend>
                        </fieldset>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Name</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox ID="TxtCourseName" runat="server" placeholder="Course Name" CssClass="form-control" />

                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Introduction</b></label>
                            <div class="" id="">
                                <asp:TextBox ID="TxtCourseIntro" runat="server" TextMode="MultiLine" placeholder="Course Description" CssClass="form-control summernote" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Syllabus</b></label>
                            <div class="" id="Div1">
                                <asp:TextBox ID="TxtCourseStyllabus" runat="server" TextMode="MultiLine" placeholder="Course Description" CssClass="form-control summernote" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Exam</b></label>
                            <div class="" id="Div2">
                                <asp:TextBox ID="TxtCourseExam" runat="server" TextMode="MultiLine" placeholder="Course Description" CssClass="form-control summernote" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Grading</b></label>
                            <div class="" id="Div3">
                                <asp:TextBox ID="TxtCourseGrading" runat="server" TextMode="MultiLine" placeholder="Course Description" CssClass="form-control summernote" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Certificate</b></label>
                            <div class="" id="Div4">
                                <asp:TextBox ID="TxtCourseCertificate" runat="server" TextMode="MultiLine" placeholder="Course Description" CssClass="form-control summernote" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label><b>Cover Photo</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpldCourseImg" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label><b>No of Seats</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox runat="server" ID="TxtNoOfSeats" placeholder="No of seats" CssClass="form-control" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="CheckBox2" runat="server" CssClass="form-control checkbox" Text="Unlimited"></asp:CheckBox>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Fees</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox runat="server" CssClass="form-control" ID="TxtFee" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label><b>Fees Mode</b></label>
                            <div class="input-group">
                                <asp:RadioButtonList ID="RdBttnFeeMode" runat="server" RepeatDirection="Horizontal" CssClass="form-control checkbox">
                                    <asp:ListItem Text="None" Selected="True" />
                                    <asp:ListItem Text="Hourly" />
                                    <asp:ListItem Text="Weekly" />
                                    <asp:ListItem Text="Monthly" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label><b>Primary Tutor</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:DropDownList runat="server" ID="DrpPriTutor" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Additional Tutors</b></label>
                            <div class="input-group">
                                <asp:CheckBoxList runat="server" ID="ChkbxTutors" CssClass="form-control checkbox">
                                </asp:CheckBoxList>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <asp:Label runat="server" Text="" ID="LblErrMsg" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnSaveCourse" Text="Update Course" OnClick="BttnSaveCourse_Click" class="btn btn-primary" runat="server" />
                </div>

            </div>
        </div>

    </div>

    <script>
        $(document).ready(function () {
            $('.summernote').summernote();
        });
    </script>

    <script type="text/javascript">

        $('[id*=TxtStDate]').datepicker({
            changeMonth: true,
            changeYear: true,
            format: "dd M yyyy",
            language: "tr"

        })

        $('[id*=TxtEnDate]').datepicker({
            changeMonth: true,
            changeYear: true,
            format: "dd M yyyy",
            language: "tr"

        })

        $('[id*=TxtEnrolStDate]').datepicker({
            changeMonth: true,
            changeYear: true,
            format: "dd M yyyy",
            language: "tr"

        })

        $('[id*=TxtEnrolEnDate]').datepicker({
            changeMonth: true,
            changeYear: true,
            format: "dd M yyyy",
            language: "tr"

        })

    </script>

    <%--<script type="text/javascript">



        $(function DateSDate() {
            $('[id*=TxtStartDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"

            })
            .change(dateChangedSdate)
.on('changeDate', dateChangedSdate);


        });


        $(function DateEDate() {
            $('[id*=TxtEndDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"

            })
            .change(dateChangedEdate)
.on('changeDate', dateChangedEdate);


        });

        function dateChangedSdate(ev) {


            var sqlformateddate = moment($('[id*=TxtStartDate]').val(), "DD/MM/YYYY").format("YYYY/MM/DD");

            $('[id*=hddnStartDate]').val(sqlformateddate);
        }

        function dateChangedEdate(ev) {

            var sqlformateddate = moment($('[id*=TxtEndDate]').val(), "DD/MM/YYYY").format("YYYY/MM/DD");

            $('[id*=hddnEndDate]').val(sqlformateddate);
        }

        $(document).ready(function () {
            dateChangedSdate("ready!");
            dateChangedEdate("ready!");
        });

    </script>--%>
</asp:Content>

