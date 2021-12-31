<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" inherits="CommonPages_Tuition, App_Web_wy5ggddp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Tuition Introduction Begins-->
    <section id="academy-intro" class="py-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-6">
                        <img id="ImgSec1" runat="server" src="../Assets/img/home-section-4.png" />
                    </div>
                    <div class="col-md-6">
                        <h2 class="h2 section-heading text-left">Tution<span> Center</span></h2>
                        <p id="pTagSec1" runat="server" class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Tuition Introduction Ends-->

    <!--Tuition Courses Begins-->
    <section class="acourse-tab">
        <div class="container">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <ul class="nav nav-tabs acourse-tab-nav" role="tablist">
                        <li id="litabhead1" class="nav-item active">
                            <a class="nav-link active" id="tuition-courses-btn" onclick="acttab1();" data-toggle="tab" href="#tuition-courses" role="tab" aria-controls="tuition-courses" aria-selected="true">
                                <h3 class="section-heading">Tuition <span>Courses</span></h3>
                            </a>
                            <div class="academy-searchform">
                                <div class="form-group d-flex">
                                    <input runat="server" id="TxtTuitionCrsSearchKey" type="text" class="form-control pl-3" placeholder="Search" />
                                    <asp:LinkButton ID="LnkBttnTuitionCrsSearch" OnClick="LnkBttnTuitionCrsSearch_Click" runat="server" CssClass="form-control search"><span class="fa fa-search"></span></asp:LinkButton>
                                </div>
                            </div>
                        </li>
                        <li id="litabhead2" class="nav-item">
                            <a class="nav-link" onclick="acttab2();" id="tuition-tutor-btn" data-toggle="tab" href="#tuition-tutor" role="tab" aria-controls="tuition-tutor" aria-selected="true">
                                <h3 class="section-heading">Tutors</h3>
                            </a>
                            <div class="academy-searchform">
                                <div class="form-group d-flex">
                                    <input runat="server" id="TxtTutorSearchKey" type="text" class="form-control pl-3" placeholder="Search" />
                                    <asp:LinkButton ID="LnkBttnTutorSearch" OnClick="LnkBttnTutorSearch_Click" runat="server" CssClass="form-control search"><span class="fa fa-search"></span></asp:LinkButton>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tuition-courses" role="tabpanel" aria-labelledby="tuition-courses-tab">
                            <div class="inner-container">
                                <p id="pTagTutionDesc" runat="server" class="mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                            </div>
                            <div class="row">
                                <asp:Repeater runat="server" ID="RptrTuitionCrss" OnItemDataBound="RptrTuitionCrss_ItemDataBound">
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
                                            <li><%#FnIsNumeric( Eval("Duration"))+" "+Eval("DurationType")+" | Starts: "+Eval("StartDate", "{0: dd MMMM yyyy}")%></li>
                                            <li><%#Eval("AccAName")%></li>
                                            <li><%#Eval("AcaedemicLevel")%></li>
                                            <li>100K Students</li>
                                            <li>4.2</li>
                                        </ul>
                                        </div>
                                        <div class="pp-course-link text-center px-2">
                                        <asp:HyperLink ID="HyLnkView" CssClass="primary__button primary__button-bgPrimary" runat="server">View</asp:HyperLink>
                                        </div>
                                        </div>
                                        </div>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
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
                                            <li><%#FnIsNumeric( Eval("Duration"))+" "+Eval("DurationType")+" | Starts: "+Eval("StartDate", "{0: dd MMMM yyyy}")%></li>
                                            <li><%#Eval("AccAName")%></li>
                                            <li><%#Eval("AcaedemicLevel")%></li>
                                            <li>100K Students</li>
                                            <li>4.2</li>
                                        </ul>
                                        </div>
                                        <div class="pp-course-link text-center px-2">
                                        <asp:HyperLink ID="HyLnkView" CssClass="primary__button primary__button-bgPrimary" runat="server">View</asp:HyperLink>
                                        </div>
                                        </div>
                                        </div>
                                    </AlternatingItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="row">
                                <div class="col"></div>
                                <div class="col-md-3">
                                    <asp:HyperLink ID="HylnkViewAllCoures"  CssClass="view-btnNew" runat="server">View all Courses</asp:HyperLink>
                                </div>
                                <div class="col"></div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tuition-tutor" role="tabpanel" aria-labelledby="tuition-tutor-tab">
                            <div class="inner-container">
                                <p id="pTagTutDesc" runat="server" class="mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                            </div>
                            <div class="tutionpage-tutors">
                                <div class="row">
                                    <asp:Repeater runat="server" ID="RptrTutors" OnItemDataBound="RptrTutors_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-10 offset-1 offset-sm-0 col-sm-6 col-md-4 px-sm-4 mb-4">
                                                <div class="d-flex align-items-center justify-content-center">
                                                    <figure>
                                                        <img id="ImgTutrView" src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' style="width:90px;height:90px;cursor:pointer;" data-toggle="modal" data-target="#View-TutorModal" onclick="return FnTutorPage(<%#Eval("Id")%>,<%# Container.ItemIndex %>);"/>
                                                    </figure>
                                                    <figcaption>
                                                        <h6><asp:Label ID="LblName" runat="server" ></asp:Label></h6>
                                                         <p><%#Eval("Nationality")%>,<%#Eval("City")%></p>
                                                        <asp:HiddenField ID="HdnInfo" runat="server" Value='<%#Eval("OtherInformations") %>' />
                                                        <asp:HiddenField ID="HdnEdu" runat="server"/>
                                                        <asp:HiddenField ID="HdnExp" runat="server"/>
                                                    </figcaption>
                                                </div>
                                            </div>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col"></div>
                                <div class="col-md-3">
                                     <asp:HyperLink ID="HylnkViewAllTutors"  CssClass="view-btnNew" runat="server">View all Tutors</asp:HyperLink>
                                </div>
                                <div class="col"></div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </section>
    <!--Tuition Courses Ends-->

    <!--Tuition Section 2 Begins-->
    <section id="academy-sec2" class="py-4">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-5">
                        <img id="ImgSec3" runat="server" src="../Assets/img/home-section-4.png"/>
                    </div>
                    <div class="col-md-7">
                        <p id="pTagSec3" runat="server" class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Tuition Section 2 Ends-->

    <!--tutor of the month section begins-->
    <section id="tutor-testimonial" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mb-4">
                    <h3 class="section-heading mb-4">Tutor of  <span>the month</span></h3>
                    <div class="tutor-month d-flex">
                        <img id="ImgTut" runat="server" src="../Assets/img/tutor.jpg"/>
                        <figcaption>
                            <h5 id="H5TutName" runat="server">Tutor Name</h5>
                            <p id="pTagTutDet" runat="server" >Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                        </figcaption>
                    </div>
                </div>
                <div class="col-md-6">
                    <h3 class="section-heading mb-4"><span>Testimonials</span></h3>
                    <div class="tutor-testim">
                        <figcaption>
                            <h5>Best teacher</h5>
                            <p id="pTagTestimonial" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                        </figcaption>
                       <!-- <a class="view-new-btn ml-0">Read nore</a>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--tutor of the month section ends-->

      <!--FAQ Begins-->
    <section id="academy-faq" class="py-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="section-heading">Faq
                        </h3>
                        <div class="owl-carousel owl-theme acad-faq-carousel mb-4">
                            <div class="item">
                                <p>Can I Take A Demo Lecture?</p>
                                <p>Yes, We allow you to take a demo lecture once you sign up on our website. You will
be able to take a demo lecture from any course that you want.</p>
                            </div>
                            <div class="item">
                                <p>How do I contact my Instructor?</p>
                                <p>You can get in touch and communicate with your instructors in more than one way. The easiest way is to use our communication dashboard that you will get once you enroll in a course. You can also use other means like email or WhatsApp depending upon the availability of your instructor.</p>
                            </div>
                            <div class="item">
                                <p>What Is The Average Course Duration?</p>
                                <p>The duration of each course varies depending upon the number of lectures and course contents. Also, this is a learn at your own pace platform; therefore, the course completion time totally depends upon the students.</p>
                            </div>
                            <div class="item">
                                <p>What Payment Options Do You Have?</p>
                                <p>For the ease of our students, Tutodu Academy supports more than one payment
option. You can use our website’s online payment option, where you can pay using your debit card, or there are multiple wallet options where you pay using an e-wallet. Once your payment is confirmed, you will be granted immediate access to your desire course. Once you have paid for a course, you can have it for a lifetime and
watch it wherever you want.</p>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!--FAQ Ends-->
<!--View Tutor Details -->
<div class="modal fade" id="View-TutorModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
<div class="modal-content">
<div class="form-login">
<div>
<h5  style="color: orangered;" id="HdrPopUpName" runat="server">Tutor Details</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
<div class="clear"></div>
</div>
<p class="i-info"><span>Skills :</span></p>
<h6  style="color: black;" id="HdrSkills" runat="server"></h6>
<p class="i-info"><span>Qualification :</span></p>
<h6  style="color: black;" id="HdrQualification" runat="server"></h6>
<p class="i-info"><span>Tutor Bio :</span></p>
<h6  style="color: black;" id="HdrOtherInfo" runat="server"></h6>
<!--<iframe id="FrmeTutorView" runat="server" style="border:0px;height:400px;width:100%;" ></iframe>-->
</div>
</div>
</div>
</div>
<!--View Tutor Details  Ends-->
    <script>
        $(document).ready(function () {
            $('#Tuition').addClass('active');
        });

        function acttab2() {

            $('#litabhead1').removeClass('active'),
                $('#litabhead2').addClass('active'),
                $('#tuition-courses-btn').removeClass('active'),
                $('#tuition-tutor-btn').addClass('active'),
                $('#tuition-courses').removeClass('show active'),
                $('#tuition-tutor').addClass('show active');
        }

        function acttab1() {

            $('#litabhead1').addClass('active'),
                $('#litabhead2').removeClass('active'),
                $('#tuition-courses-btn').addClass('active'),
                $('#tuition-tutor-btn').removeClass('active'),
                $('#tuition-courses').addClass('show active'),
                $('#tuition-tutor').removeClass('show active');
        }


        function FnTutorPage(PrmVal, PrmIndex) {
            document.getElementById("ContentPlaceHolder1_HdrPopUpName").innerText = document.getElementById("ContentPlaceHolder1_RptrTutors_LblName_" + PrmIndex).innerText;
            document.getElementById("ContentPlaceHolder1_HdrSkills").innerText =document.getElementById("ContentPlaceHolder1_RptrTutors_HdnExp_" + PrmIndex).value;
            document.getElementById("ContentPlaceHolder1_HdrQualification").innerText = document.getElementById("ContentPlaceHolder1_RptrTutors_HdnEdu_" + PrmIndex).value;
            document.getElementById("ContentPlaceHolder1_HdrOtherInfo").innerText = document.getElementById("ContentPlaceHolder1_RptrTutors_HdnInfo_" + PrmIndex).value;
           /* document.getElementById("ContentPlaceHolder1_FrmeTutorView").setAttribute("src", "ViewTutor.aspx?TUTRID=" + PrmVal);*/
        }
    </script>

</asp:Content>

