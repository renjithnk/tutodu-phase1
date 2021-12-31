<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMasterNew.master" AutoEventWireup="true" CodeFile="CourseAssignmentList.aspx.cs" Inherits="Student_CourseAssignmentList" StylesheetTheme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register TagPrefix="cc" Namespace="Winthusiasm.HtmlEditor" Assembly="Winthusiasm.HtmlEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <style>
        #ContentPlaceHolder1_FrmVwExamList_TxtContentDetails_ctl02 
        {
            width: 650px !important;
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
        #ContentPlaceHolder1_FrmVwExamList_TxtContentDetails_ctl27 
         {
            width: 650px!important;
            height: 50px!important;
            background-color: #7F9DB9;
            margin-top: 1px;
            padding-bottom: 0px;
            display: block;
         }
        #ContentPlaceHolder1_FrmVwExamList_TxtContentDetails_contentText 
        {
            width: 650px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_FrmVwExamList_TxtContentDetails_contentHtml 
        {
            width: 650px !important;
            height: 230px !important;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: block;
        }

    </style>
    <!--Profile page Begins-->
    <section id="" class="py-md-5 py-2">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-3">
                    <!--Profile Left Section Begins-->
                    <div class="course-overview-menu">
                        <ul>
                            <li><asp:HyperLink ID="HyLnkOverView" runat="server">Course Overview</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkInstTime" runat="server" >Instruction Time</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkAnnouncement" runat="server" >Announcements</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkModules" runat="server">Modules</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkAssignments" runat="server" >Assignments</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkQuiz" runat="server" >Quiz/Exam</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkNotes" runat="server" >Notes</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkGrades" runat="server" >Grades</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkCourseForum" runat="server">Course Forum</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkAttendance" runat="server">Attendance</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkCertificates" runat="server">Certificates</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkEMeet" runat="server">E-Meet/Share Board</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkMessage" runat="server">Message</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyLnkPractice" runat="server">Practice Test</asp:HyperLink></li>
                        </ul>
                    </div>
                    <!--Profile Left Section Ends-->
                </div>
                <div class="col-md-8 col-lg-9">
                    <!--Profile Right Section Begins-->
                    <div class="profile-right">

                        <!--icon section begins-->
                        <div class="profile-icon-section">
                              <div class="row">
                                <div class="col">
                                    <div class="profile-icon-box ">
                                        <img src="../Assets/img/profile-icon.png" />
                                        <h6><asp:HyperLink ID="HyLnkDashboard" runat="server" >Dashboard</asp:HyperLink></h6>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <img src="../Assets/img/exams-icon.png" />
                                        <h6><asp:HyperLink ID="HyLnkCourses" runat="server" >Courses</asp:HyperLink></h6>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <img src="../Assets/img/organizations-icon.png" />
                                        <h6><asp:HyperLink ID="HyLnkOrg" runat="server" >Organizations</asp:HyperLink></h6>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <img src="../Assets/img/calendar-icon.png" />
                                        <h6><asp:HyperLink ID="HyLnkCalendar" runat="server" >Calendar</asp:HyperLink></h6>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <img src="../Assets/img/timeline-icon.png" />
                                        <h6><asp:HyperLink ID="HyLnkTimeline" runat="server" >Timeline</asp:HyperLink></h6>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <img src="../Assets/img/enrolled-icon.png" />
                                        <h6><asp:HyperLink ID="HyLnkExams" runat="server" >Exams</asp:HyperLink></h6>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <img src="../Assets/img/notification-icon.png" />
                                        <h6><asp:HyperLink ID="HyLnkNotif" runat="server" >Notifications</asp:HyperLink></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--icon section ends-->

                        <!--courses section begins-->
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                        <div class="overview-right">
                            <div class="overview-title">
                                 <h4 id="H4CrsName" runat="server">Digital Communication</h4>
                            </div>
                            <div class="course-status-table mt-4">
                                 <h3><asp:HyperLink ID="HyLnkBackTop" SkinID="HyLnkBtnBack" runat="server">Back</asp:HyperLink></h3>
                                <div class="course-status-row">
                                    <div class="course-status-title">
                                        <h3 class="section-heading" id="H3CrsName" runat="server">Course Assignments </h3>
                                    </div>
                                     <asp:FormView ID="FrmVwExamList" runat="server" Height="73px" Width="100%" AllowPaging="True" BackColor="White" BorderColor="#eeeeef" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" OnPageIndexChanging="FrmVwExamList_PageIndexChanging" OnDataBound="FrmVwExamList_DataBound">
                                        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <FooterStyle BackColor="#FF9966" ForeColor="#003399" />
                                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                        <ItemTemplate>
                                         <div class="card-body">
                                            <table class="table table-borderless profile-table">
                                                <tbody>
                                                    <tr>
                                                        <td>Question</td>
                                                        <td colspan="2"><span>:</span><asp:Label Text='<%#Eval("Name") %>' ID="LblFName" runat="server" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Answer Type</td>
                                                        <td colspan="2"><span>:</span><asp:Label Text='<%#Eval("ExamType") %>' ID="LblExamType" runat="server" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mark</td>
                                                        <td colspan="2"><span>:</span><asp:Label Text='<%#Eval("Mark") %>' ID="LblDOB" runat="server" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="overviewRightTop"><asp:Label Text='Exam Details' ID="Label1" runat="server" Width="120px" /></td>
                                                        <td colspan="2" class="overviewRightTop"><span>:</span><asp:Label Text='<%#Eval("Remarks") %>' ID="LblParentName" runat="server" /></td>
                                                    </tr>
                                                    <tr class="SplitHeader">
                                                        <td>Answer</td>
                                                        <td colspan="2"></td>
                                                    </tr>
                                                    <div id="DivDocAsgn" runat="server">
                                                     <tr>
                                                        <td>Attach Document's</td>
                                                        <td class="overviewRightTop"><ajaxToolkit:AsyncFileUpload ID="FileUpDocument" OnUploadedComplete="FileUpDocument_UploadedComplete" runat="server" /></td>
                                                        <td><asp:HyperLink ID="HyLnkDoc" Text="" runat="server" /></td>
                                                    </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <cc:HtmlEditor ID="TxtContentDetails" runat="server" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" 
                                                                    DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" 
                                                                    DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" 
                                                                    EditorForeColor="Black" EditorInnerBorderColor="Gray" Height="300px" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" 
                                                                    TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" Width="650px" />
                                                            </td>
                                                        </tr>
                                                    </div>
                                                     <div id="DivOptionSingle" runat="server">
                                                         <tr>
                                                              <td>Single Choice</td>
                                                         </tr>
                                                        <tr>
                                                        <td colspan="3">
                                                            <asp:RadioButtonList ID="RadBtnQuestLst" runat="server">
                                                           
                                                            </asp:RadioButtonList>
                                                        </td>
                                                        </tr>
                                                     </div>
                                                     <div id="DivOptionMul" runat="server">
                                                          <tr>
                                                              <td>Multiple Choice</td>
                                                         </tr>
                                                        <tr>
                                                        <td colspan="3">
                                                            <asp:CheckBoxList ID="ChkBoxQuestLst" runat="server">
                                                            </asp:CheckBoxList>
                                                        </td>
                                                        </tr>
                                                     </div>
                                                     <tr> 
                                                        <td><asp:Button ID="BtnSave" runat="server" OnClick="ManiPulateDataEvent_Clicked" CommandName="SAVE" CommandArgument="NEW" Text="Submit" SkinID="BtnCommandSave" /></td>
                                                        <td><asp:HiddenField ID="HdnExamId" runat="server" Value='<%#Eval("Id") %>' />
                                                            <asp:HiddenField ID="HdnResultId" runat="server" />
                                                            <asp:HiddenField ID="HdnSubmitDate" runat="server" />
                                                            <asp:HiddenField ID="HdnTutorId" runat="server" /><asp:HiddenField ID="HdnMark" runat="server" /></td>
                                                    </tr>                                                   
                                                </tbody>
                                            </table>
                                        </div>
                                        </ItemTemplate>
                                        <PagerSettings Mode="NextPrevious" />
                                        <PagerStyle BackColor="#FFFBFB" Font-Bold="True" Font-Size="Medium" ForeColor="#003399" HorizontalAlign="Right" VerticalAlign="Middle" />
                                         <PagerTemplate>
                                             <asp:Label ID="LblAprv" runat="server" SkinID="LblAnswerAprv" Text="Score" Width="150px"></asp:Label>
                                             <asp:Label ID="LblCpt" runat="server" SkinID="LblQuestSubmit" Text="Submited by 10/11/2021 23:45:55" Width="250px"></asp:Label>
                                             <asp:Label ID="LblTotPage" runat="server" SkinID="LblQuestPager" Text="Total 10" Width="150px"></asp:Label>
                                             <asp:LinkButton ID="LnkNext" runat="server" SkinID="LnkBtnNext" CommandName="Page" CommandArgument="Next">Next</asp:LinkButton>
                                              <asp:LinkButton ID="LnkPrev" runat="server" SkinID="LnkBtnPrevious" CommandName="Page" CommandArgument="Prev">Previous</asp:LinkButton>
                                         </PagerTemplate>
                                        <RowStyle BackColor="White" ForeColor="#003399" />
                                    </asp:FormView>
                                    
                                </div>
                                <h3> <asp:HyperLink ID="HyLnkBackBottom" SkinID="HyLnkBtnBack" runat="server">Back</asp:HyperLink></h3>
                            </div>
                        </div>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                        <!--courses section ends-->
                    </div>
                    <!--Profile Right Section Ends-->
                </div>
            </div>
        </div>
    </section>
    <!--Profile page Ends-->

    <!--Our Tutors Begins-->
   <!--  <section id="academy-faq" class="py-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <h3 class="section-heading">Faq
                </h3>
                <div class="owl-carousel owl-theme acad-faq-carousel mb-4">
                    <div class="item">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum pendisse ultrices gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ?</p>
                    </div>
                    <div class="item">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum pendisse ultrices gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ?</p>
                    </div>
                    <div class="item">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum pendisse ultrices gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ?</p>
                    </div>
                </div>
            </div>
        </div>
    </section>-->
    <!--Our Tutors Ends-->

</asp:Content>

