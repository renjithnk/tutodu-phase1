<%@ page title="" language="C#" masterpagefile="~/MasterPages/MainMasterNew.master" autoeventwireup="true" inherits="Student_CourseContent, App_Web_23o1pfoq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:HiddenField ID="HddnCrs" runat="server" />
    <asp:HiddenField ID="HddnCrsAccID" runat="server" />
    <asp:HiddenField ID="HddnCrsID" runat="server" />
    <asp:HiddenField ID="HddnWeekID" runat="server" />
    <asp:HiddenField ID="HddnCHapterID" runat="server" />
    <asp:HiddenField ID="HddnModuleID" runat="server" />
    <asp:HiddenField ID="HddnMarkID" runat="server" />

    <!--Profile page Begins-->
    <section id="" class="py-md-5 py-2">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-3">
                    <!--Profile Left Section Begins-->
                    <div class="course-overview-menu">
                        <ul>
                            <li><a href="../Student/CourseOverview.aspx">Course Overview</a></li>
                            <li><a href="../Student/CourseAnnouncements.aspx">Announcements</a></li>
                            <li><a class="active" href="../Student/CourseModules.aspx">Modules</a></li>
                            <li><a href="../Student/CourseAssignments.aspx">Assignments</a></li>
                            <li><a href="../Student/CourseQuizExam.aspx">Quiz/Exam</a></li>
                            <li><a href="../Student/CourseNotes.aspx">Notes</a></li>
                            <li><a href="../Student/CourseGrades.aspx">Grades</a></li>
                            <li><a href="../Student/CourseForum.aspx">Course Forum</a></li>
                            <li><a href="../Student/CourseAttendance.aspx">Attendance</a></li>
                            <li><a href="../Student/CourseCertificates.aspx">Certificates</a></li>
                            <li><a href="../Student/CourseShareboard.aspx">E-Meet/Share Board</a></li>
                            <li><a href="../Student/CourseMessages.aspx">Message</a></li>
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
                                    <div class="profile-icon-box">
                                        <a href="#">
                                            <img src="../Assets/img/profile-icon.png">
                                            <h6>Profile</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box active">
                                        <a href="#">
                                            <img src="../Assets/img/exams-icon.png">
                                            <h6>Courses</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="#">
                                            <img src="../Assets/img/organizations-icon.png">
                                            <h6>Organizations</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="#">
                                            <img src="../Assets/img/calendar-icon.png">
                                            <h6>Calendar</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="#">
                                            <img src="../Assets/img/timeline-icon.png">
                                            <h6>Timeline</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="#">
                                            <img src="../Assets/img/enrolled-icon.png">
                                            <h6>Exams</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="#">
                                            <img src="../Assets/img/notification-icon.png">
                                            <h6>Notifications</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--icon section ends-->

                        <!--courses section begins-->
                        <div class="overview-right">
                            <div class="overview-title">
                                <h4>Digital Communication</h4>
                            </div>
                            <div class="course-status-table mt-4">
                                <div class="course-status-row">
                                    <div class="course-status-title">
                                        <h3 runat="server" id="H3ContentHeading" class="section-heading">WEEK 1 - MACHINE 1 - MACHINE LEARNING 123 </h3>
                                    </div>
                                    <!--Module-->
                                    <div class="module-details">
                                        <p runat="server" id="TagPTextContent" visible="false">
                                            <asp:Label ID="LblCrsIntro" Text="crsintro" runat="server" />
                                        </p>
                                        <div class="video-responsive" runat="server" visible="false" id="DivVideo">
                                            <%--  <video width="320" height="240" controls runat="server" id="TagVideo">
                                <source src="movie.mp4" type="video/mp4" />
                                <source src="movie.ogg" type="video/ogg" />
                                Your browser does not support the video tag.
                            </video>--%>
                                            <iframe id="IframVideo" runat="server" frameborder="0" allowfullscreen></iframe>
                                        </div>
                                    </div>
                                    <div class="module-btn-holder">
                                        <asp:Button ID="BttnMarkAsComplt" OnClick="BttnMarkAsComplt_Click" Text="Mark as Completed" CssClass="gr-btn" runat="server" />
                                        <asp:Button ID="BttnNxtModule" Text="Next" OnClick="BttnNxtModule_Click" CssClass="bl-btn" runat="server" />
                                    </div>
                                    <!--Module-->
                                </div>
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

    <!--Our Tutors Begins-->
    <section id="academy-faq" class="py-md-5 py-2">
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
    </section>
    <!--Our Tutors Ends-->

</asp:Content>

