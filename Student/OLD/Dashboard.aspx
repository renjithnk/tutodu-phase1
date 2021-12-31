<%@ page title="" language="C#" masterpagefile="~/MasterPages/MainMasterNew.master" autoeventwireup="true" inherits="Student_Dashboard, App_Web_23o1pfoq" %>

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
                            <img src="https://via.placeholder.com/150x150.png" id="ImgProfile" runat="server" width="150" height="150" />
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
                                <h3 class="section-heading">My <span>Dashboard</span></h3>
                                <!--<form action="#" class="academy-searchform ml-5">
                                    <div class="form-group d-flex">
                                        <input type="text" class="form-control pl-3" placeholder="Search">
                                        <button type="submit" placeholder="" class="form-control search"><span class="fa fa-search"></span></button>
                                    </div>
                                </form>-->
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                        </div>
                        <!--Profile intro ends-->

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
                        <div class="dashboard-courses">
                            <div class="card-header dashboard-title">
                                <a href="#">
                                    <h5 class="mb-0">Enrolled Courses
                                    </h5>
                                </a>
                            </div>
                            <div class="row">
                            <asp:Repeater runat="server" ID="RptrEnrldCrss" OnItemDataBound="RptrEnrldCrss_ItemDataBound">
                            <ItemTemplate>
                            <div class="col-10 offset-1 offset-sm-0 col-lg-3 col-sm-6 mb-5 px-md-4">
                                <div class="popular-course-box" style="height: 325px">
                                    <div class="pp-course-img text-center mb-20">
                                        <img class="image-placeholder" width="300px" height="150px" src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' alt="icon">
                                    </div>
                                    <div class="pp-course-title text-center mb-35 px-2">
                                        <h6 style="margin-top: 10px;"><asp:Label ID="LblName" runat="server" ></asp:Label></h6>
                                    </div>
                                    <div class="pp-course-body px-2">
                                        <ul>
                                            <li><%#Convert.ToInt32( Eval("Duration"))+" "+Eval("DurationType")+" | Starts: "+Eval("StartDate", "{0: dd MMMM yyyy}")%></li>
                                            <li><%#Eval("PrimaryTutorName")%></li>
                                            <li></li>
                                        </ul>
                                    </div>
                                    <div class="pp-course-link text-center px-2">
                                        <asp:HyperLink ID="HyLnkView" CssClass="primary__button primary__button-bgPrimary" runat="server">View</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                            </div>
                            <div class="row mt-3">
                                <div class="col"></div>
                                <div class="col-lg-3 order-last">
                                    <asp:HyperLink ID="HyLnkAllCourse" CssClass="view-btn" runat="server">All Courses</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                        <!--courses section ends-->

                        <!--organization section begins-->
                        <div class="dashboard-courses">
                            <div class="card-header dashboard-title">
                                <a href="#">
                                    <h5 class="mb-0">Enrolled Organizations
                                    </h5>
                                </a>
                            </div>
                            <div class="row">
                                <asp:Repeater runat="server" ID="RptrEnrldOrgs" OnItemDataBound="RptrEnrldOrgs_ItemDataBound">
                                    <ItemTemplate>
                                        <div class="col-10 offset-1 offset-sm-0 col-sm-6 col-md-4 px-sm-2 mb-4">
                                            <div class="tuition-single d-flex align-items-end">
                                                <div class="tuition-img">
                                                    <img src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' width="219px" height="219px">
                                                </div>
                                                <div class="tuition-info greenbox" style="height: 230px;">
                                                  <h5><asp:Label ID="LblName" runat="server" ></asp:Label></h5>
                                                    <h6>Reg. No : <%#Eval("CompanyRegNo")%></h6>
                                                    <p><%#Eval("SubCatName")%></p>
                                                    <p><%#Eval("Nationality")%> , <%#Eval("City")%></p>
                                                    <asp:HyperLink ID="HyLnkView" CssClass="view-new-btn" runat="server">View</asp:HyperLink>
                                           </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="row mt-3">
                                <div class="col"></div>
                                <div class="col-lg-3 order-last">
                                    <asp:HyperLink ID="HyLnkAllOrg" CssClass="view-btn" runat="server">All Organizations</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                        <!--organization section ends-->

                        <!--class timeline section begins-->
                        <div class="myprofile-editedu">
                            <div id="Div1">
                                <div class="card">
                                    <div class="card-header" id="Div2">
                                        <a href="#">
                                            <h5 class="mb-0">Class Timeline
                                            </h5>
                                        </a>
                                    </div>

                                    <div class="card-body">
                                        <!--Timeline Begins-->
                                        <div class="tour_head1 udb-time-line days">
                                            <ul>
                                                <asp:Repeater runat="server" ID="RptrClassTimeline">
                                                    <ItemTemplate>
                                                        <li class="l-info-pack-plac"><i class="fa fa-clock-o" aria-hidden="true"></i>
                                                            <div class="sdb-cl-tim">
                                                                <div class="sdb-cl-day">
                                                                    <h5><%#Eval("DayVal")%></h5>
                                                                    <span>Start date: <%#Eval("StartDate","{0: dd MMMM yyyy}")%></span>
                                                                </div>
                                                                <div class="sdb-cl-class">
                                                                    <ul>
                                                                        <li>
                                                                            <div class="sdb-cl-class-tim tooltipped" data-position="top" data-delay="50" data-tooltip="Class timing">
                                                                                <span><%#Eval("StartTime")%></span>
                                                                                <span><%#Eval("EndTime")%></span>
                                                                            </div>
                                                                            <div class="sdb-cl-class-name tooltipped" data-position="top" data-delay="50" data-tooltip="Class name and status">
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
                        <!--class timeline section ends-->

                        <!--exams section begins-->
                        <div class="myprofile-editedu">
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header" id="headingPersonal">
                                        <a href="#">
                                            <h5 class="mb-0">Exam Details
                                            </h5>
                                        </a>
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
                        <!--exams section ends-->

                    </div>
                    <!--Profile Right Section Ends-->
                </div>
            </div>
        </div>
    </section>
    <!--Profile page Ends-->

</asp:Content>

