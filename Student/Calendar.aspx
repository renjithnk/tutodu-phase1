<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMasterNew.master" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Student_Calendar1" StylesheetTheme="SkinFile" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>
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
                                <h3 class="section-heading">Calender <span>Notification</span></h3>
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

                        <!--courses section begins-->
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                        <div class="dashboard-courses">
                            <div class="course-status-table mt-4">
                                <div class="course-status-row">
                                    <div class="course-status-title">
                                        <h3 class="section-heading">Calender List </h3>
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
                                                    <label class="col-sm-3 col-form-label">From Date : </label>
                                                    <div class="col-sm-9">
                                                        <uc1:CtrlDate runat="server" ID="TxtFromDate" /></td>
                                                    </div>
                                                </div>
                                                 <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">To Date : </label>
                                                    <div class="col-sm-9">
                                                       <uc1:CtrlDate runat="server" ID="TxtToDate" /></td>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col"></div>
                                                    <div class="col-md-9">
                                                       <asp:Button ID="BtnSearch" runat="server" OnClick="ManiPulateDataEvent_Clicked" Text="Get Data" CommandName="FIND" SkinID="BtnCommandFind" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <div class="course-status-table mt-4">
                                <!--Module-->
                                     <div class="panel-group" id="accordion">
                                        <asp:Repeater runat="server" ID="RptrMainCalender" OnItemDataBound="RptrMainCalender_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="panel panel-default">
                                            <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse<%#Container.ItemIndex + 1 %>" style="color:white;" >
                                                 <%#Eval("TrDate","{0:dd MMM yyyy}") %> -  <%#Eval("Name") %>
                                                </a>
                                            </h4>
                                            </div> 
                                            <div id="collapse<%#Container.ItemIndex + 1 %>" class="panel-collapse collapse in">
                                                <div class="col-md-12">
                                                    <br />
                                                    <asp:Label ID="LblName" runat="server" ></asp:Label>
                                                    <asp:Label ID="LblTime" runat="server" ></asp:Label>
                                                    <p><asp:Label ID="LblDoc" runat="server" ></asp:Label><asp:HyperLink ID="HyLnkDoc" Text="" runat="server" /></p>
                                                     <%#Eval("Remarks") %>
                                                </a>
                                                </div>
                                            </div>
                                            </div>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                      </div>
                                    <!--Module-->
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

</asp:Content>

