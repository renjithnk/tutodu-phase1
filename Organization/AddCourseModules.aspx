<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_AddCourseModules, App_Web_3j03txs0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">

    <link href="../Assets/Dashboard/Global_Assets/summernote-0.8.18-dist/summernote.min.css" rel="stylesheet" />
    <script src="../Assets/Dashboard/Global_Assets/summernote-0.8.18-dist/summernote.min.js"></script>

    <style>
        div.dataTables_wrapper {
            width: 100%;
            margin: 0 auto;
        }


        .checkbox .btn, .checkbox-inline .btn {
            padding-left: 2em;
            min-width: 8em;
            margin-top: 11px;
            margin-bottom: 8px;
        }

        .checkbox label, .checkbox-inline label {
            text-align: left;
            padding-left: 0.5em;
            padding-right: 1.5em;
            margin-top: 11px;
            margin-bottom: 8px;
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
    <asp:HiddenField ID="HddnWeekID" runat="server" />
    <asp:HiddenField ID="HddnChapterID" runat="server" />
    <asp:HiddenField ID="HddnPriTutID" runat="server" />
    <asp:HiddenField ID="HddnOrgAccID" runat="server" />
    <asp:HiddenField ID="HddnExamID" runat="server" />
    <asp:HiddenField ID="HddnCrsidforQstn" runat="server" />
    <asp:HiddenField ID="HddnExamQstnID" runat="server" />
        <asp:HiddenField ID="HddnContentID" runat="server" />
       <asp:HiddenField ID="HddnVideoFileName" runat="server" />
       <asp:HiddenField ID="HddnDocFileName" runat="server" />


    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Course</span> - Modules</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Course</a>
                    <span class="breadcrumb-item active">Modules</span>
                </div>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <div class="content">
        <div class="card">
            <div class="card-body">
                <asp:UpdatePanel runat="server" ID="UpdtCourseDet" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="row">
                            <div class="col-md-11">
                                <div class="form-group">
                                    <label><b>Course</b></label>
                                    <div class="input-group">
                                        <asp:Label ID="LblCourseName" runat="server" CssClass="form-control">
                                        </asp:Label>
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
                                    <label><b>Week</b></label>
                                    <div class="input-group">
                                        <%--  <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-vcard"></i></span>
                                        </div>--%>
                                        <asp:TextBox ID="TxtWeekName" runat="server" placeholder="Week 1" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
                <asp:Label runat="server" Text="" ID="LblErrMsgExam" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnAddWeek" Text="Add Week" OnClick="BttnAddWeek_Click" class="btn btn-primary" runat="server" />
                </div>


                <%--                <br />
                <asp:Label runat="server" Text="" ID="Label1" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="Button1" Text="Sent Notification" class="btn btn-primary" runat="server" />
                </div>--%>
            </div>
        </div>

        <div class="card">
            <div class="card-body">
                <%--  <asp:UpdatePanel runat="server" ID="UpdtWeekDet" UpdateMode="Conditional">
                    <ContentTemplate>--%>
                <div class="row">
                    <div class="col-md-11">
                        <div class="form-group">
                            <label><b>Week</b></label>
                            <div class="input-group">
                                <asp:Label ID="LblWeekName" runat="server" CssClass="form-control">
                                </asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <label><b>&nbsp;</b></label>
                            <div class="input-group">
                                <asp:LinkButton ID="LinkButton2" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_WeekDet"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Chapter</b></label>
                            <div class="input-group">
                                <%--  <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-vcard"></i></span>
                                        </div>--%>
                                <asp:TextBox ID="TxtChapterName" runat="server" placeholder="Chapter 1" CssClass="form-control">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <%--    </ContentTemplate>
                </asp:UpdatePanel>--%>
                <br />
                <asp:Label runat="server" Text="" ID="Label1" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnAddChapter" Text="Add Chapter" OnClick="BttnAddChapter_Click" class="btn btn-primary" runat="server" />
                </div>


                <%--                <br />
                <asp:Label runat="server" Text="" ID="Label1" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="Button1" Text="Sent Notification" class="btn btn-primary" runat="server" />
                </div>--%>
            </div>
        </div>

        <div class="card">
            <div class="card-body">
                <%--    <asp:UpdatePanel runat="server" ID="UpdtChapterDet" UpdateMode="Conditional">
                    <ContentTemplate>--%>
                <div class="row">
                    <div class="col-md-9">
                        <div class="form-group">
                            <label><b>Chapter</b></label>
                            <div class="input-group">
                                <%--  <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-vcard"></i></span>
                                        </div>--%>
                                <asp:Label ID="LblChapterName" runat="server" CssClass="form-control">
                                </asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <label><b>&nbsp;</b></label>
                            <div class="input-group">
                                <asp:LinkButton ID="Button1" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_ChapterDet"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-9">
                        <div class="form-group">
                            <label><b>Content Name</b></label>
                            <div class="input-group">
                                <%--  <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-vcard"></i></span>
                                        </div>--%>
                                <asp:TextBox ID="TxtContentName" runat="server" placeholder="Content Name" CssClass="form-control">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Type</b></label>
                            <div class="input-group">
                                <asp:DropDownList runat="server" CssClass="form-control" ID="DrpSubModuleType" OnSelectedIndexChanged="DrpSubModuleType_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Text="READING" Selected="True" />
                                    <asp:ListItem Text="VIDEO-URL" />
                                    <asp:ListItem Text="VIDEO" />
                                    <asp:ListItem Text="PDF" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" id="divReading" runat="server">
                        <div class="form-group">
                            <label><b>Content Detail</b></label>
                            <div class="" id="">
                                <asp:TextBox ID="TxtContent" runat="server" TextMode="MultiLine" placeholder="Content" CssClass="form-control summernote" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12" id="divVideoURL" visible="false" runat="server">
                        <div class="form-group">
                            <label><b>Video URL</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtVideoURL" placeholder="Video URL" runat="server" CssClass="form-control">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12" id="divVideoFile" visible="false" runat="server">
                        <div class="form-group">
                            <label><b>Video File</b></label>
                            <div class="input-group">
                                <asp:FileUpload ID="FileUpVideoFile" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12" id="divPDF" visible="false" runat="server">
                        <div class="form-group">
                            <label><b>PDF File</b></label>
                            <div class="input-group">
                                <asp:FileUpload ID="FileUPPDF" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>

                <%--   </ContentTemplate>
                </asp:UpdatePanel>--%>
                <asp:Label runat="server" Text="" ID="LblErrMsg" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnAddContent" Text="Add Content" OnClick="BttnAddContent_Click" class="btn btn-primary" runat="server" />
                </div>
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <%--  <asp:UpdatePanel runat="server" ID="UpdtCourseModules" UpdateMode="Conditional">
                            <ContentTemplate>--%>
                        <div class="table-responsive">
                            <table id="example" class="table display nowrap" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>Week</th>
                                        <th>Chapter</th>
                                        <th>Content</th>
                                        <th>Type</th>
                                           <th>Date</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptrCourseModules" OnItemCommand="rptrCourseModules_ItemCommand" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("CourseWeekName") %></td>
                                                <td><%#Eval("CourseChapterName") %></td>
                                                <td><%#Eval("Name") %></td>
                                                <td><%#Eval("ModuleType") %></td>
                                                  <td><%#Eval("UpdateDate") %></td>
                                                <td class="text-center">
                                                    <asp:LinkButton runat="server" ID="LinkButton2" CommandArgument='<%#Eval("ID") %>' CommandName="Edit">EDIT</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </div>
                        <%--        </ContentTemplate>
                        </asp:UpdatePanel>--%>
                    </div>
                </div>

            </div>
        </div>

    </div>

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
                                <asp:Repeater ID="RptrCourseDet" runat="server" OnItemCommand="RptrCourseDet_ItemCommand">
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


    <!-- Basic modal -->
    <div id="modal_WeekDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Weeks</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">

                    <div class="table-responsive">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Week</th>
                                    <th>Course</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RptrWeekDet" OnItemCommand="RptrWeekDet_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("CourseMaster") %></td>
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

    <!-- Basic modal -->
    <div id="modal_ChapterDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Chapters</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">

                    <div class="table-responsive">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Chapter</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RptrChapters" OnItemCommand="RptrChapters_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("CourseMaster") %></td>
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
        $(document).ready(function () {
            $('#example').DataTable({
                "scrollX": true
            });
        });
    </script>


    <script>
        $(document).ready(function () {
            $('.summernote').summernote();
        });

        function LoadSummerNote() {
            $('.summernote').summernote();
        }

        function TableVisibilityHidden() {
            $('#TblOptions').addClass('hidden');
        }

        function TableVisibility() {
            $('#TblOptions').removeClass('hidden');
        }





    </script>

    <script type="text/javascript">

        $('[id*=TxtDate]').datepicker({
            changeMonth: true,
            changeYear: true,
            format: "dd M yyyy",
            language: "tr"

        })

    </script>

</asp:Content>

