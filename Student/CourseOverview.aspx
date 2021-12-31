<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMasterNew.master" AutoEventWireup="true" CodeFile="CourseOverview.aspx.cs" Inherits="Student_CourseOverview" StylesheetTheme="SkinFile"%>

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
                        <div class="overview-right">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="overview-box">
                                        <h4 id="H4CrsName" runat="server">Digital Communication</h4>
                                        <div class="overview-white">
                                            <div class="course-rating">
                                                <div class="stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <span>| rated 5 star by students</span>
                                            </div>
                                            <h6>Total Duration : <span id="SpnDuration" runat="server">3 Months</span></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <img runat="server" id="ImgCourse" class="overview-top-img" src="../Assets/img/overview-right.jpg" />
                                </div>
                            </div>
                            <div class="mt-3">
                                <p runat="server" id="SpnCourseDesc">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices and in tgravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Quis ipsum suspendisse ultrices gravida. Risus commodo commodo viverra maecenas accumsan lacus vel facilisis. Quis ipsum suspendisse ultrices gravida. Risus commodo Quis ipsum suspendisse ultrices</p>
                            </div>
                            <!--course dashboard begins-->
                            <div class="overview-course-dboard">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="cd-piechart">
                                            <div class="left-progress-bar" data-percent="70"><span>70%</span></div>
                                            <h6 class="text-center">you’ve sucessfully completed 70% of this course</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text-center">
                                            <h5>Course Dashboard</h5>
                                        </div>
                                        <div class="d-flex">
                                            <div class="cd-icon">
                                                <span>
                                                    <img src="../Assets/img/course-db-icon1.png">
                                                </span>
                                                <p>Link 1</p>
                                            </div>
                                            <div class="cd-icon">
                                                <span>
                                                    <img src="../Assets/img/course-db-icon2.png">
                                                </span>
                                                <p>Link 2</p>
                                            </div>
                                            <div class="cd-icon">
                                                <span>
                                                    <img src="../Assets/img/course-db-icon1.png">
                                                </span>
                                                <p>Link 3</p>
                                            </div>
                                            <div class="cd-icon">
                                                <span>
                                                    <img src="../Assets/img/course-db-icon2.png">
                                                </span>
                                                <p>Link 4</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="cd-piechart">
                                            <div class="left-progress-bar" data-percent="90"><span>90%</span></div>
                                            <h6 class="text-center">you’ve got 90% attendence for this course</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--course dashboard ends-->

                            <!--tab section begins-->
                            <div class="mt-3">
                                <div class="overview-tab">
                                    <nav>
                                        <div class="nav nav-tabs" role="tablist">
                                            <a class="nav-item nav-link active" id="nav-course-desc" data-toggle="tab" href="#course-desc-tab" role="tab" aria-controls="course-desc-tab" aria-selected="true">Course Grading</a>
                                            <a class="nav-item nav-link" id="nav-syllabus" data-toggle="tab" href="#syllabus-tab" role="tab" aria-controls="syllabus-tab" aria-selected="false">Syllabus</a>
                                            <a class="nav-item nav-link" id="nav-exams-cert" data-toggle="tab" href="#exam-cert-tab" role="tab" aria-controls="exam-cert-tab" aria-selected="false">Exams & Certificates</a>
                                            <a class="nav-item nav-link" id="nav-instruct" data-toggle="tab" href="#instruct-tab" role="tab" aria-controls="instruct-tab" aria-selected="false">Instructor Info</a>
                                        </div>
                                    </nav>
                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="course-desc-tab" role="tabpanel" aria-labelledby="nav-course-desc">
                                            <asp:Label ID="LblGrade" runat="server"></asp:Label>
                                        </div>
                                        <div class="tab-pane fade" id="syllabus-tab" role="tabpanel" aria-labelledby="nav-syllabus">
                                            <asp:Label ID="LblSylabus" runat="server"></asp:Label>
                                        </div>
                                        <div class="tab-pane fade" id="exam-cert-tab" role="tabpanel" aria-labelledby="nav-exams-cert">
                                            <asp:Label ID="LblCertificate" runat="server"></asp:Label>                                        </div>
                                        <div class="tab-pane fade" id="instruct-tab" role="tabpanel" aria-labelledby="nav-instruct">
                                            <div class="row">
                                                <div class="col-md-9">
                                                    <p class="i-info"><span>Skills :</span> 
                                                    <asp:Repeater runat="server" ID="RptrPriTutExpDet">
                                                        <ItemTemplate>
                                                            <%#Eval("Name")%>|
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    </p>
                                                    <p class="i-info"><span>Qualification :</span><asp:Repeater runat="server" ID="RptrPriTutEduDet">
                                                        <ItemTemplate>
                                                            <%#Eval("Name")%>,
                                                        </ItemTemplate>
                                                    </asp:Repeater>,</p>
                                                    <p class="i-info"><span>Tutor Bio :</span><h runat="server" id="SpnTutorDesc">ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h> </p>
                                                    <div class="i-info-footer">
                                                        <a class="gr-btn" href="#">Contact</a>
                                                        <a class="bl-btn" href="#">Get Help</a>
                                                        <div class="course-rating">
                                                            <div class="stars">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                            </div>
                                                            <span>| rate this tutor</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="i-image">
                                                        <img id="ImgTutor" runat="server" src="~/UploadedFiles/ProfilePics/image-placeholder.jpg"  />
                                                        <h6  id="HdrTutorName" runat="server">James Fedrick</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <p class="disclaimer">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor </p>
                            </div>
                            <!--tab section ends-->

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
    <%--<section id="academy-faq" class="py-md-5 py-2">
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
    </section>--%>
    <!--Our Tutors Ends-->

</asp:Content>

