<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Tutor_TutorAddCourse, App_Web_hacr2tjf" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>
<%@ Register TagPrefix="cc" Namespace="Winthusiasm.HtmlEditor" Assembly="Winthusiasm.HtmlEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language="javascript" src="Script/TutorAddCourse.js" type="text/javascript"></script>
         <style>
        #ContentPlaceHolder1_TxtCourseIntro_ctl02 
        {
            width: 1100px !important;
            height: 1px !important;
            background-color: #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            margin-top: 1px;
            padding-bottom: 0px;
            padding-top: 3px;
            display: block;
        }
          #ContentPlaceHolder1_TxtCourseIntro_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TxtCourseIntro_contentHtml 
        {
            width: 1100px !important;
            height: 230px !important;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: block;
        }
                    /*---------------------- */

          #ContentPlaceHolder1_TxtCourseStyllabus_ctl02 
        {
            width: 1100px !important;
            height: 1px !important;
            background-color: #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            margin-top: 1px;
            padding-bottom: 0px;
            padding-top: 3px;
            display: block;
        }
          #ContentPlaceHolder1_TxtCourseStyllabus_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TxtCourseStyllabus_contentHtml 
        {
            width: 1100px !important;
            height: 230px !important;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: block;
        }
                        /*---------------------- */

          #ContentPlaceHolder1_TxtCourseExam_ctl02 
        {
            width: 1100px !important;
            height: 1px !important;
            background-color: #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            margin-top: 1px;
            padding-bottom: 0px;
            padding-top: 3px;
            display: block;
        }
          #ContentPlaceHolder1_TxtCourseExam_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TxtCourseExam_contentHtml 
        {
            width: 1100px !important;
            height: 230px !important;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: block;
        }

                /*---------------------- */

          #ContentPlaceHolder1_TxtCourseGrading_ctl02 
        {
            width: 1100px !important;
            height: 1px !important;
            background-color: #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            margin-top: 1px;
            padding-bottom: 0px;
            padding-top: 3px;
            display: block;
        }
          #ContentPlaceHolder1_TxtCourseGrading_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TxtCourseGrading_contentHtml 
        {
            width: 1100px !important;
            height: 230px !important;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: block;
        } 
          /*---------------------- */

          #ContentPlaceHolder1_TxtCourseCertificate_ctl02 
        {
            width: 1100px !important;
            height: 1px !important;
            background-color: #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            margin-top: 1px;
            padding-bottom: 0px;
            padding-top: 3px;
            display: block;
        }
          #ContentPlaceHolder1_TxtCourseCertificate_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TxtCourseCertificate_contentHtml 
        {
            width: 1100px !important;
            height: 230px !important;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: block;
        } 

    </style>
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
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Course Name</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtCourseName" runat="server" placeholder="Course Name" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                        <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Degree Awarded</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DdlDegreeAward" runat="server" SkinID="DdlDegreeAward" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Course Type</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DrpCourseType" runat="server" SkinID="DdlTutorCourseType">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Course Medium</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DdlCourseMedium" runat="server" SkinID="DdlList">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Course Category</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DdlCourseCat" runat="server" SkinID="DdlList">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Sub Category</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DdlCourseSubCat" runat="server" SkinID="DdlList">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Academic Level</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DdlAcadLevel" runat="server" SkinID="DdlList">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Pre. Requisitions</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server"  ID="TxtPreRqsts" SkinID="TxtForCtrlSngl"/>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Course Status</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DrpCourseStatus" runat="server" SkinID="DdlCourseStatus">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                      <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Course Batch#</b></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TxtCourseBatch" runat="server" placeholder="Course Batch#"  SkinID="TxtForCtrlSngl"/>
                                    </div>
                                </div>
                            </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Start Date </b></label>
                            <div class="input-group">
                                <uc1:ctrldate runat="server" ID="TxtStartDate" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label><b>End Date</b></label>
                            <div class="input-group">
                                <uc1:ctrldate runat="server" ID="TxtEndDate" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Time Zone</b></label>
                            <div class="input-group">
                                  <asp:DropDownList ID="DdlTimeZone" runat="server" SkinID="DdlTimeZoneList">
                                  </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Duration</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtDuration" runat="server" Text="0"  placeholder="Duration" SkinID="TxtForCtrlSngl"/>
                                <asp:RadioButtonList runat="server" ID="RdBtnDurationType" Width="150px" RepeatDirection="Horizontal" CssClass="form-control checkbox">
                                    <asp:ListItem Text="Weeks" Selected="True" />
                                    <asp:ListItem Text="Months" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>No of Seats</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtNoOfSeats"  Text="0" placeholder="No of seats" SkinID="TxtForCtrlSngl" />
                                <asp:CheckBox ID="ChkUnLimited" runat="server" CssClass="form-control checkbox" Text="Unlimited" AutoPostBack="true" OnCheckedChanged="ChkUnLimited_CheckedChanged"></asp:CheckBox>
                            </div>
                        </div>
                    </div>
                  </div>
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Fees</b></label>
                            <div class="input-group">
                                   <asp:TextBox runat="server"  Text="0.00" SkinID="TxtForCtrlSngl" placeholder="Fees" ID="TxtFee" />
                            </div>
                        </div>
                    </div>
                      <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Currency</b></label>
                            <div class="input-group">
                                  <asp:DropDownList ID="DdlCurrency" runat="server" SkinID="DdlList">
                                  </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Fee Mode</b></label>
                            <div class="input-group">
                                 <asp:DropDownList runat="server" ID="DdlFeeMode" SkinID="DdlFeeModeType">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Enrollment Start Date</b></label>
                            <div class="input-group">
                                <uc1:CtrlDate runat="server" ID="TxtEnrolStDate" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Enrollment End Date</b></label>
                            <div class="input-group">
                                <uc1:CtrlDate runat="server" ID="TxtEnrolEnDate" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label><b></b></label>
                            <div class="input-group">
                              <asp:CheckBox ID="ChkBxEnrolType" runat="server" SkinID="ChkNormal" Text="Anytime"></asp:CheckBox>
                            </div>
                        </div>
                    </div>
                  </div>
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
                            <label><b>Course Introduction</b></label>
                            <div class="" id="">
                              <cc:HtmlEditor ID="TxtCourseIntro" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Syllabus</b></label>
                            <div class="" id="Div1">
                                <cc:HtmlEditor ID="TxtCourseStyllabus" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Exam</b></label>
                            <div class="" id="Div2">
                                <cc:HtmlEditor ID="TxtCourseExam" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Grading</b></label>
                            <div class="" id="Div3">
                                <cc:HtmlEditor ID="TxtCourseGrading" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Course Certificate</b></label>
                            <div class="" id="Div4">
                             <cc:HtmlEditor ID="TxtCourseCertificate" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label><b>Cover Photo</b></label>
                             <div class="input-group">
                               <ajaxtoolkit:asyncfileupload ID="FileUpldImg" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldImg_UploadedComplete" />
                                <span class="input-group-text"><asp:LinkButton ID="LnkCrop" runat="server" Text="CROP" SkinID="LnkCrop" OnClick="LnkCrop_Click" ></asp:LinkButton></span>
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkImage" runat="server" Target="_blank" ></asp:HyperLink></span>
                          </div>
                        </div>
                    </div>
                </div>
                <br />
                <asp:Label runat="server" Text="" ID="LblErrMsg" CssClass="" />
                <div class="text-right">
                    <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />
                </div>

            </div>
        </div>

    </div>

</asp:Content>

