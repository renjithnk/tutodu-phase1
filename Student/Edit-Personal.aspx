<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMasterNew.master" AutoEventWireup="true" CodeFile="Edit-Personal.aspx.cs" StylesheetTheme="SkinFile" Inherits="Student_Edit_Personal" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
    <script>
        var $x = jQuery.noConflict();
        //alert("Version: " + $x.fn.jquery);
    </script>
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
                                <h3 class="section-heading">My <span>Profile</span></h3>
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

                        <!--my profile section begins-->
                        <div class="myprofile-personal">
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header" id="headingPersonal">
                                        <h5 class="mb-0">
                                            <a class="btn btn-link" data-toggle="collapse" data-target="#collapsePersonal" aria-expanded="true" aria-controls="collapsePersonal">Personal Details
                                            </a>
                                        </h5>
                                    </div>
                                    <div id="collapsePersonal" class="collapse show" aria-labelledby="headingPersonal" data-parent="#accordion">
                                        <div class="card-body">
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <table class="table table-borderless profile-table">
                                                        <tbody>
                                                            <tr>
                                                                <td style="width: 25%">First Name</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtFname" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Last Name</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtLName" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>DOB</td>
                                                                <td>:</td>
                                                                <td>
                                                                   <uc1:CtrlDate runat="server" ID="TxtDate" /></td>
                                                            </tr>
                                                            <tr class="parentlbl">
                                                                <td>Parent Name</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtParentName" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Email</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtEmail" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Address Line 1</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtAdd1" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Address Line 2</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtAdd2" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Country</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:DropDownList ID="DrpCountry" runat="server" OnSelectedIndexChanged="DrpCountry_SelectedIndexChanged" AutoPostBack="true" CssClass="browser-default form-control">
                                                                    </asp:DropDownList></td>
                                                            </tr>
                                                            <tr>
                                                                <td>State</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:DropDownList ID="DrpState" runat="server" CssClass="browser-default form-control">
                                                                    </asp:DropDownList></td>
                                                            </tr>
                                                            <tr>
                                                                <td>City</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtCity" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zip</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtZip" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Phone</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtPhone1" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Alternate Phone</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <asp:TextBox ID="TxtPhone2" CssClass="form-control" Text="" runat="server" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Profile Image (150x150)</td>
                                                                <td>:</td>
                                                                <td>
                                                                    <ajaxToolkit:AsyncFileUpload ID="FileUpProfPic" OnUploadedComplete="FileUpProfPic_UploadedComplete" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <asp:HyperLink ID="HyLnkImage" Text="" runat="server"  /> 
                                                                </td>
                                                                <td>
                                                                    <asp:LinkButton ID="LnkCrop" OnClick="LnkCrop_Click" Text="Crop" runat="server" /> 
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Resume (Doc or PDF)</td>
                                                                <td>:</td>
                                                                <td>
                                                                      <ajaxToolkit:AsyncFileUpload ID="FileUpResume" OnUploadedComplete="FileUpResume_UploadedComplete" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <asp:HyperLink ID="HyLnkDoc" Text="" runat="server" /> 
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <asp:Label Text="" ID="LblErrMsgPerInf" runat="server" />
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row mb-5">
                                                        <div class="col"></div>
                                                        <div class="col-md-6 col-lg-4">
                                                            <asp:Button ID="BtnSave" runat="server" CssClass="profile-edit-btn" CommandName="SAVE" OnClick="ManiPulateDataEvent_Clicked" Text="Update Personal Info" /> 
                                                        </div>
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

    <!--Login Modal Begins-->
    <div class="modal fade" id="imgcrpmod" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <div class="form-login">
                            <div class="form-submit-1 text-center">
                                <asp:LinkButton ID="LnkBttnLogMod" runat="server" CssClass="btn btn-primary blue-btn">Login</asp:LinkButton>
                            </div>
                            <div class="error-msg text-center" runat="server" visible="false" id="DivErrMsgLogMod">
                                <div class="alert alert-info fade in alert-dismissible show">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true" style="font-size: 20px">×</span>
                                    </button>
                                    <strong>
                                        <asp:Label Text="" ID="LblErrMsgCapLogMod" runat="server" /></strong>
                                    <asp:Label Text="" ID="LblErrMsgDetLogMod" runat="server" />
                                </div>
                            </div>
                            <div class="form-submit-1 text-center">
                                <asp:LinkButton Text="Click here to resend activation email" Visible="false" CssClass="" ID="LnkBttnResendEmail" runat="server" />
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <!--Login Modal Ends-->
</asp:Content>

