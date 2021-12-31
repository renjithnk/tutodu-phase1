<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMasterNew.master" AutoEventWireup="true" CodeFile="CourseAttendance.aspx.cs" Inherits="Student_CourseAttendance" StylesheetTheme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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
                                 <h4 id="H4CrsName"  runat="server">Digital Communication</h4>
                            </div>
                            <div class="course-status-table mt-4">
                                <div class="course-status-row">
                                    <div class="course-status-title">
                                        <h3 class="section-heading">Course Attendance</h3>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:Calendar ID="ClndrAtt" runat="server" Height="250px" Width="350px" OnSelectionChanged="ClndrAtt_SelectionChanged">
                                                <DayHeaderStyle BackColor="#F7F7F7" />
                                                <NextPrevStyle Font-Bold="True" ForeColor="White" />
                                                <SelectedDayStyle BackColor="#BA8314" />
                                                <TitleStyle BackColor="#007BFF" Font-Bold="True" ForeColor="White" />
                                                <TodayDayStyle BackColor="#0066FF" Font-Bold="True" ForeColor="White" />
                                            </asp:Calendar>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="calendar-right">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Date : </label>
                                                    <div class="col-sm-9">
                                                        <asp:TextBox id="TxtDateLeave" runat="server" SkinID="TxtForCtrlDisable150" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                 <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Status : </label>
                                                    <div class="col-sm-9">
                                                        <asp:DropDownList id="DdlStatus" runat="server" SkinID="DdlAttendace" ></asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Reason  :</label>
                                                    <div class="col-sm-9">
                                                        <asp:TextBox id="TxtLeaveReason" runat="server" SkinID="TxtForCtrlMulNew" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col"></div>
                                                    <div class="col-md-9">
                                                       <asp:Button ID="BtnSave" runat="server" OnClick="ManiPulateDataEvent_Clicked" Text="Save" SkinID="BtnCommandSave" />
                                                       <asp:Button ID="BtnClear" runat="server" OnClick="ManiPulateDataEvent_Clicked" Text="Clear" CommandName="CLEAR" SkinID="BtnCommandClear" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="course-status-table mt-4">
                                <div class="course-status-row">
                                    <div class="course-status-title">
                                        <h3 class="section-heading">Attendance History </h3>
                                    </div>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">No</th>
                                                <th scope="col">Date</th>
                                                <th scope="col">Status</th>
                                                <th scope="col">Reason / Remarks</th>
                                                <th scope="col">Leave Staus</th>
                                                <th scope="col">Edit</th>
                                                <th scope="col">Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>  
                                            <asp:Repeater runat="server" ID="RptrAttendance" OnItemCommand="RptrAttendance_ItemCommand" OnItemDataBound="RptrAttendance_ItemDataBound">
                                            <ItemTemplate>
                                            <tr>
                                                <td><asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                                <td><%#Eval("TrDate","{0:dd MMM yyyy}") %></td>
                                                <td><%#Eval("AttendanceStatus") %></td>
                                                <td><%#Eval("Remarks") %></td>
                                                <td><%#Eval("LeaveStatus") %></td>
                                                <td><asp:LinkButton runat="server" ID="LnkEdit" SkinID="LnkBtnEdit" CommandArgument='<%#Eval("Id") %>' CommandName="EDIT">Edit</asp:LinkButton></td>
                                                <td><asp:LinkButton runat="server" ID="LnkDelete" SkinID="LnkBtnDelete" CommandArgument='<%#Eval("Id") %>' CommandName="DELETE" OnClientClick="return confirm('Do you want to delete this record');">Delete</asp:LinkButton></td>
                                            </tr>
                                            </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>
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
    <!--<section id="academy-faq" class="py-md-5 py-2">
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

