<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMasterNew.master" AutoEventWireup="true" CodeFile="Edit-Experience.aspx.cs" StylesheetTheme="SkinFile" Inherits="Student_Edit_Experience" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

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
                                <h3 class="section-heading">My <span>Profile</span></h3>
                                <!--<form action="#" class="academy-searchform ml-5">
                                    <div class="form-group d-flex">
                                        <input type="text" class="form-control pl-3" placeholder="Search">
                                        <button type="submit" placeholder="" class="form-control search"><span class="fa fa-search"></span></button>
                                    </div>
                                </form>-->
                            </div>
                            <p>The Dashboard is a fullfledged source of your personal information where you able to manage all your course and training related information. All your profile information will be confidential.</p>
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

                        <!--my profile section begins-->
                        <div class="myprofile-personal">
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header" id="headingEducation">
                                        <h5 class="mb-0">
                                            <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseEducation" aria-expanded="false" aria-controls="collapseEducation">Experience Details
                                            </a>
                                        </h5>
                                    </div>
                                    <div id="collapseEducation" class="collapse show" aria-labelledby="headingEducation" data-parent="#accordion">
                                        <div class="card-body">
                                            <asp:UpdatePanel ID="UpdtEduDet" UpdateMode="Conditional" runat="server">
                                                <ContentTemplate>
                                                    <table class="table table-borderless profile-table">
                                                        <tbody>

                                                            <tr>
                                                                <td>Title</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtTitle" CssClass="form-control formtextbox" Text="" runat="server" /></td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Company / Institution</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtCompany" CssClass="form-control formtextbox" Text="" runat="server" /></td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Dept / Section</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtDesg" CssClass="form-control formtextbox" Text="" runat="server" /></td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Start Date</td>
                                                                <td>:</td>
                                                                <td> 
                                                                    <uc1:CtrlDate runat="server" ID="TxtStDate" /></td>
                                                                <td>
                                                                    <asp:CheckBox ID="ChkbxEdu" runat="server" CssClass="checkbox" Text="Pursuing" />
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr >
                                                                <td>End Date</td>
                                                                <td>:</td>
                                                                <td>
                                                                     <uc1:CtrlDate runat="server" ID="TxtEnDate" /></td> 
                                                                <td></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <asp:Label Text="" ID="LblErrMsgExpInf" runat="server" />
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row mb-5">
                                                        <div class="col"></div>
                                                        <div class="col-md-6 col-lg-3">
                                                             <asp:Button ID="BtnSave" runat="server" CssClass="profile-edit-btn" CommandName="SAVE" OnClick="ManiPulateDataEvent_Clicked" Text="Add Personal Info" /> 
                                                        </div>
                                                        <div class="col-md-6 col-lg-3">
                                                            <asp:HyperLink ID="HyLnkProfilePage" runat="server"  class="profile-edit-btn">Profile</asp:HyperLink>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <asp:Repeater runat="server" ID="RptrExpDet" OnItemCommand="RptrExpDet_ItemCommand">
                                                            <ItemTemplate>
                                                                <div class="education-box">
                                                                    <div class="edbox-edit-title">
                                                                        <h6>Title : <%#Eval("Name")%></h6>
                                                                        <asp:LinkButton ID="LnkEdit" CssClass="profile-edit-btn" CommandArgument='<%#Eval("Id")%>' CommandName="EDIT" runat="server">Edit<i class="fa fa-pencil"></i></asp:LinkButton>
                                                                        <div class="clear"></div>
                                                                    </div>
                                                                    <ul>
                                                                        <li>Company / Institution : <%#Eval("OrganizationName")%></li>
                                                                        <li>Dept / Section : <%#Eval("Designation")%></li>
                                                                        <li>Start Date : <%#Eval("StartDob","{0:dd MMM yyyy}")%> - End Date : <%#FnIsNumeric(Eval("Remarks"))>0 ? "Pursuing" : Eval("EndDob","{0:dd MMM yyyy}")%></li>
                                                                    </ul>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                        <div class="clear"></div>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
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

