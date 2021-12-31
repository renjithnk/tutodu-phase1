<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMasterNew.master" AutoEventWireup="true" CodeFile="CourseModuleDet.aspx.cs" Inherits="Student_CourseModuleDet"  StylesheetTheme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="../CSS/CollapsePanelStyle.css" />
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
                        <div class="overview-right">
                            <div class="overview-title">
                                <h4 id="H4CrsName" runat="server">Digital Communication</h4>
                            </div>                         
                            <div class="course-status-table mt-4">
                                  <h3><asp:HyperLink ID="HyLnkBackTop" SkinID="HyLnkBtnBack" runat="server">Back</asp:HyperLink></h3>
                                <div class="course-status-row">
                                    <div class="course-status-title">
                                      <h3 class="section-heading" id="H3WeekName" runat="server">WEEK 1 </h3>
                                       <span id="SpnList" runat="server">..............</span>
                                    </div>
                                    <!--Module-->
                                     <div class="panel-group" id="accordion">
                                        <asp:Repeater runat="server" ID="RptrChapters" OnItemDataBound="RptrChapters_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="panel panel-default">
                                            <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse<%#Container.ItemIndex + 1 %>" style="color:white;" >
                                                   <%#Eval("CourseChapterName") %>
                                                </a>
                                            </h4>
                                            </div> 
                                            <div id="collapse<%#Container.ItemIndex + 1 %>" class="panel-collapse collapse in">
                                            <asp:Repeater runat="server" ID="RptrContents" OnItemDataBound="RptrContents_ItemDataBound">
                                            <ItemTemplate>
                                                <div class="panel-body">
                                                    <h5><%#Eval("Name") %> | <%#Eval("ModuleType") %></h5>
                                                    <p><%#Eval("Description") %></p>
                                                    <asp:HyperLink ID="HyLnkView" SkinID="HyLnkBtnView" runat="server">View</asp:HyperLink>
                                                </div>
                                            </ItemTemplate>
                                            </asp:Repeater>
                                            </div>
                                            </div>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                      </div>
                                    <!--Module-->
                                </div>
                                <h3> <asp:HyperLink ID="HyLnkBackBottom" SkinID="HyLnkBtnBack" runat="server">Back</asp:HyperLink></h3>
                            </div>
                        </div>
                        <!--courses section ends-->
                    </div>
                    <!--Profile Right Section Ends-->
                </div>
            </div>
            </div>
    </section>
    <!--Profile page Ends-->

</asp:Content>

