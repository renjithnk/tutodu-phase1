<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMasterNew.master" AutoEventWireup="true" CodeFile="ExamTimeline.aspx.cs" Inherits="Student_ExamTimeline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Profile page Begins-->
    <section id="" class="py-md-5 py-2">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-3">
                    <!--Profile Left Section Begins-->
                    <div class="profile-left mt-5">
                        <div class="profile-img text-center">
                            <img src="../Assets/img/tutor.jpg" id="ImgProfile" runat="server" width="150" height="150" />
                        </div>
                        <div class="student-details">
                            <h5 runat="server" id="H5ProfileName">Micheal Jobin</h5>
                            <h6>Student</h6>
                            <p runat="server" id="PProfileEmail">michealjobin@gmail.com</p>
                            <p runat="server" id="PProfilePhone">+91 9876 543 210</p>
                        </div>
                        <div class="profile-menu-holder">
                            <div class="accordion" id="profile-toggle">
                                <div class="card">
                                    <div class="card-header" id="profiletogglelink">
                                        <a class="btn btn-link view-btn collapsed" type="button" data-toggle="collapse" data-target="#profiletoggleexpand" aria-expanded="false" aria-controls="collapseOne">My Profile<i class="fa fa-arrow-down"></i>
                                        </a>
                                    </div>

                                    <div id="profiletoggleexpand" class="collapse" aria-labelledby="profiletogglelink" data-parent="#profile-toggle" style="">
                                        <div class="card-body">
                                            <ul>
                                                <li><asp:HyperLink ID="HyLnkProfile" runat="server" >View Profile</asp:HyperLink></li>
                                                <li><asp:HyperLink ID="HyLnkEditProfile" runat="server" >Edit Profile</asp:HyperLink></li>
                                                <li><asp:HyperLink ID="HyLnkPwdReset" runat="server" >Password Reset</asp:HyperLink></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="profile-menu">
                                <ul>
                                    <li>
                                        <a href="#">Help / Contact Us</a>
                                    </li>
                                    <li>
                                        <a href="#">Messages</a>
                                        <ul class="profile-inner-menu">
                                           <li>
                                                <a href="#">Bootcamp:<span>Tutodu offers Bootcamp in Educational Institutions. Because we believe that everyone has the right to get quality work experience.</span></a>
                                            </li>
                                            <li>
                                                <a href="#">Resource library:<span>The Tutodu provide resource library which is help full for school and college students.</span></a>
                                            </li>
                                             <li>
                                                <a href="#">Tutodu Beta Release:<span>We are relase the Beta version. Discover and learn something absolutely new with us.</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--Profile Left Section Ends-->
                </div>
                <div class="col-md-8 col-lg-9">
                    <!--Profile Right Section Begins-->
                    <div class="profile-right">
                        <!--Profile intro begins-->
                        <div class="profile-intro">
                            <div class="d-md-flex align-items-center">
                                <h3 class="section-heading">My <span>Exam-Timeline</span></h3>
                            </div>
                            <p>The Dashboard is a fullfledged source of your personal information where you able to manage all your course and training related information. All your profile information will be confidential. </p>
                        </div>
                        <!--Profile intro ends-->

                        <!--icon section begins-->
                         <div class="profile-icon-section">
                              <div class="row">
                                <div class="col">
                                    <div class="profile-icon-box ">
                                        <asp:HyperLink ID="HyLnkDashboard" runat="server" >
                                        <img src="../Assets/img/profile-icon.png" />
                                         <h6>Dashboard</h6>
                                         </asp:HyperLink>
                                    </div>
                                </div>
                                  
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <asp:HyperLink ID="HyLnkCourses" runat="server" >
                                        <img src="../Assets/img/exams-icon.png" />
                                        <h6>Courses</h6></asp:HyperLink>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box"><asp:HyperLink ID="HyLnkOrg" runat="server" >
                                        <img src="../Assets/img/organizations-icon.png" />
                                        <h6>Organizations</h6></asp:HyperLink>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box"><asp:HyperLink ID="HyLnkCalendar" runat="server" >
                                        <img src="../Assets/img/calendar-icon.png" />
                                        <h6>Calendar</h6></asp:HyperLink>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box"><asp:HyperLink ID="HyLnkTimeline" runat="server"> 
                                        <img src="../Assets/img/timeline-icon.png" />
                                        <h6>Timeline</h6></asp:HyperLink>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box"><asp:HyperLink ID="HyLnkExams" runat="server" >
                                        <img src="../Assets/img/enrolled-icon.png" />
                                        <h6>Exams</h6></asp:HyperLink>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box"><asp:HyperLink ID="HyLnkNotif" runat="server" >
                                        <img src="../Assets/img/notification-icon.png" />
                                        <h6>Notifications</h6></asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--icon section ends-->

                        <!--my profile section begins-->
                        <div class="myprofile-editedu">
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header" id="headingPersonal">
                                        <h5 class="mb-0">Exam Timeline
                                        </h5>
                                    </div>

                                    <div class="card-body">
                                        <!--Timeline Begins-->
                                        <div class="tour_head1 udb-time-line days">
                                            <ul>

                                                <asp:Repeater runat="server" ID="RptrExamTimeline">
                                                    <ItemTemplate>
                                                        <li class="l-info-pack-plac"><i class="fa fa-clock-o" aria-hidden="true"></i>
                                                            <div class="sdb-cl-tim">
                                                                <div class="sdb-cl-day">
                                                                    <h5>Exam -
                                                            <asp:Label ID="lblRowNumber" CssClass="h5newstyleforlabel" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></h5>
                                                                    <span>Start date: <%#Eval("StartDate","{0: dd MMMM yyyy}")%></span>
                                                                </div>
                                                                <div class="sdb-cl-class">
                                                                    <ul>
                                                                        <li>
                                                                            <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Exam timing">
                                                                                <span><%#Eval("StartTime")%></span>
                                                                                <span><%#Eval("EndTime")%></span>
                                                                            </div>
                                                                            <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Exam name and status">
                                                                                <h5><%#Eval("Name")%> <span><%#Eval("PrimaryTutorName")%></span></h5>
                                                                                <span class="sdn-hall-na">Online</span>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>

                                            </ul>
                                        </div>
                                        <!--Timeline Ends-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--my profile section ends-->
                    </div>
                    <!--Profile Right Section Ends-->
                </div>
            </div>
        </div>
    </section>
    <!--Profile page Ends-->

</asp:Content>

