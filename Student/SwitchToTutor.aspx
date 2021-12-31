<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMasterNew.master" AutoEventWireup="true" CodeFile="SwitchToTutor.aspx.cs" Inherits="Student_SwitchToTutor" %>

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
                            <img src="https://via.placeholder.com/150x150.png" width="150" height="150">
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
                                                <li><a href="../Student/Profile.aspx">View Profile</a></li>
                                                <li><a href="../Student/Edit-Personal.aspx">Edit Profile</a></li>
                                                <li><a href="#">Password Reset</a></li>
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
                                                <a href="#">Reminder : Update Profile<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</span></a>
                                            </li>
                                            <li>
                                                <a href="#">New course launched<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</span></a>
                                            </li>
                                            <li>
                                                <a href="#">Attend Latest Exam<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</span></a>
                                            </li>
                                            <li>
                                                <a href="#">New course launched<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</span></a>
                                            </li>
                                            <li>
                                                <a href="#">Attend Latest Exam<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</span></a>
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
                                        <a href="../Student/Dashboard.aspx">
                                            <img src="../Assets/img/profile-icon.png">
                                            <h6>Dashboard</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="../Student/MyCourses.aspx">
                                            <img src="../Assets/img/exams-icon.png">
                                            <h6>Courses</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="../Student/MyOrgs.aspx">
                                            <img src="../Assets/img/organizations-icon.png">
                                            <h6>Organizations</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box active">
                                        <a href="../Student/Calendar.aspx">
                                            <img src="../Assets/img/calendar-icon.png">
                                            <h6>Calendar</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="../Student/ClassTimeline.aspx">
                                            <img src="../Assets/img/timeline-icon.png">
                                            <h6>Timeline</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="../Student/ExamTimeline.aspx">
                                            <img src="../Assets/img/enrolled-icon.png">
                                            <h6>Exams</h6>
                                        </a>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="profile-icon-box">
                                        <a href="../Student/Notifications.aspx">
                                            <img src="../Assets/img/notification-icon.png">
                                            <h6>Notifications</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--icon section ends-->

                        <!--switch tutor begins-->
                        <div class="myprofile-editedu">
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header" id="headingPersonal">
                                        <h5 class="mb-0">Switch to Tutor Request
                                        </h5>
                                    </div>

                                    <div class="card-body">
                                        <form>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Student Name : </label>
                                                <div class="col-sm-9">
                                                    <asp:Label ID="LblStuName" Text="" runat="server" CssClass="form-control formtextbox" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputPassword" class="col-sm-3 col-form-label">Remarks  :</label>
                                                <div class="col-sm-9">
                                                    <asp:TextBox runat="server" ID="TxtRemarks" CssClass="form-control formtextbox" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Request Status : </label>
                                                <div class="col-sm-9">
                                                    <p id="PTagErrMsg" runat="server" class="red-alert">*Request Pending</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col"></div>
                                                <div class="col-md-9">
                                                    <asp:LinkButton ID="LnkBttnSentLeaveRqst" OnClick="LnkBttnSentLeaveRqst_Click" Text="Send Request" runat="server" CssClass="btn btn-success" />
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--switch tutor ends-->
                    </div>
                    <!--Profile Right Section Ends-->
                </div>
            </div>
        </div>
    </section>
    <!--Profile page Ends-->

</asp:Content>

