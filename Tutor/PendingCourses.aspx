<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Tutor_PendingCourses, App_Web_hacr2tjf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">

        <link href="../Assets/Dashboard/Global_Assets/summernote-0.8.18-dist/summernote.min.css" rel="stylesheet" />
    <script src="../Assets/Dashboard/Global_Assets/summernote-0.8.18-dist/summernote.min.js"></script>
    
    <link href="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.css" rel="stylesheet" />
    <style>
        div.dataTables_wrapper {
            width: 100%;
            margin: 0 auto;
        }

        .modal-header {
            padding: 10px 1.25rem !important;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.nonblock.js"></script>

    <asp:HiddenField ID="HddnAccID" runat="server" />
    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - Pending Courses</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Pending Courses</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->


    <!-- Content area -->
    <div class="content">



        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Pending Courses</h5>
            </div>

            <div class="table-responsive">
                <table id="example" class="table display nowrap" style="width: 100%">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th></th>
                            <th>Name</th>
                            <th>Type</th>
                            <th>Category</th>
                            <th>Sub Category</th>
                            <th>Medium</th>
                            <th>St.Date</th>
                            <th>En.Date</th>
                            <th>Status</th>
                            <th>Status</th>
                            <th class="text-center">View</th>
                             <th class="text-center">Edit</th>
<%--                            <th class="text-center">Actions</th>--%>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptrCourseDet" OnItemCommand="rptrCourseDet_ItemCommand" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                    <td>
                                        <asp:Image ID="Image1" Width="60px" Height="60px" ImageAlign="Middle" ImageUrl='<%# Eval("ImagePath").ToString() != "No Photo" ? "../Assets/UploadedFiles/CourseImgs/"+Eval("ImagePath") : "../Assets/Index/images/user/NoPhoto.png" %>' runat="server" /></td>
                                    <td><%#Eval("Name") %></td>
                                    <td><%#Eval("CourseTType") %></td>
                                    <td><%#Eval("CategoryName") %></td>
                                    <td><%#Eval("SubCategoryName") %></td>
                                    <td><%#Eval("CourseMedium") %></td>
                                    <td><%#Eval("StartDate","{0:dd MMM yyyy}") %></td>
                                    <td><%#Eval("EndDate","{0:dd MMM yyyy}") %></td>
                                    <td><%#Eval("CourseStatus") %></td>
                                    <td><%# Convert.ToInt32( Eval("IsApprove")) >= 0 ? "Enabled" : "Disabled" %></td>
                                    <td class="text-center">
                                        <asp:LinkButton runat="server" ID="LinkButton1" CommandArgument='<%#Eval("Id")+","+Eval("Name") %>' CommandName="View">VIEW</asp:LinkButton>
                                    </td>
                                       <td class="text-center">
                                        <asp:LinkButton runat="server" ID="LinkButton2" CommandArgument='<%#Eval("Id")+","+Eval("Name") %>' CommandName="Edit">EDIT</asp:LinkButton>
                                    </td>
                                 <%--   <td class="text-center">
                                        <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("Id") %>' CommandName="Approve">ENABLE</asp:LinkButton>&nbsp;/&nbsp; 
                                            <asp:LinkButton runat="server" ID="LinkButton5" CommandArgument='<%#Eval("Id") %>' CommandName="Reject">DISABLE</asp:LinkButton>
                                    </td>--%>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>

        </div>

    </div>
    <!-- /content area -->

    <!-- Basic modal -->
    <div id="modal_CourseDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <h5 class="modal-title">Course Overview</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <asp:UpdatePanel ID="UpdtCourses" runat="server">
                        <ContentTemplate>
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label><b>Course Name</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblCourseNameMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <asp:Image ID="ImgProfPicMod" ImageAlign="Right" runat="server" Height="100px" Width="100px" CssClass="" />
                                </div>
                            </div>

                            <br />

                            <div class="row" style="margin-top: -10px;">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label><b>Course Type</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblCourseTypeMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label><b>Course Medium</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblCourseMedMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label><b>Category</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblCourseCatMod" Text="" runat="server" CssClass="form-control" />
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
                                            <asp:Label ID="LblCourseSubCatMod" Text="" runat="server" CssClass="form-control" />
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
                                            <asp:Label ID="LblAcademicLevelMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><b>Pre Requisites</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblPreRqstsMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>St Date</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblStDateMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>En Date</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblEnDateMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>Duration</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblDurationMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label><b>Enrolment Window</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblEnrolWindowMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>Course Status</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblCourseStatusMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><b>Instruction day/time</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblInstDayTimeMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label><b>No of Seats</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblNoOfSeatsMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label><b>Fees</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblFeeMod" Text="" runat="server" CssClass="form-control" />
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

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
    <!-- /basic modal -->


        <script>
            $(document).ready(function () {
                $('.summernote').summernote();
            });
    </script>

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
        $(document).ready(function () {
            $('#example').DataTable({
                "scrollX": true
            });
        });
    </script>

    <script>

        function SuccessAlert() {
            $('#modal_CourseDet').modal('show');
        }
    </script>

</asp:Content>

