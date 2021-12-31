<%@ page title="" language="C#" masterpagefile="~/MasterPages/MainMasterNew.master" autoeventwireup="true" inherits="Student_Calendar, App_Web_23o1pfoq" %>

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
                                <h3 class="section-heading">My <span>Calendar</span></h3>
                            </div>
                            <p>The Dashboard is a fullfledged source of your personal information where you able to manage all your course and training related information. All your profile information will be confidential. </p>
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

                        <div class="dashboard-courses">
                            <div class="course-status-table mt-4">
                                <div class="course-status-row">
                                    <div class="course-status-title">
                                        <h3 class="section-heading">Notifications</h3>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div id="NewCalendar" style="width: 100%;"></div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="calendar-right">
                                                <form>
                                                    <div class="form-group row">
                                                        <label for="staticEmail" class="col-sm-3 col-form-label">From : </label>
                                                        <div class="col-sm-9">
                                                            <input name="" type="text" value="29 Jun 2021" id="ContentBody_TxtFrmDate" class="form-control formtextbox">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="inputPassword" class="col-sm-3 col-form-label">To :</label>
                                                        <div class="col-sm-9">
                                                            <input name="" type="text" value="28 Aug 2021" id="ContentBody_TxtToDate" class="form-control formtextbox">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col"></div>
                                                        <div class="col-md-9">
                                                            <input type="submit" name="" value="Get Data" id="ContentBody_BttnGetData" class="btn btn-success">
                                                        </div>
                                                    </div>
                                                </form>
                                                <div class="calendar-updates">
                                                    <h5>Calendar Updates</h5>
                                                    <div class="sel-date">Date : <span id="lblEventCalendar">[date]</span></div>
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">#</th>
                                                                <th scope="col">From</th>
                                                                <th scope="col">Remarks</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>cdssd</td>
                                                                <td>bfnsfhsd</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Profile Right Section Ends-->
                </div>
            </div>
        </div>
    </section>
    <!--Profile page Ends-->

</asp:Content>

