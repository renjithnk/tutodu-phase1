<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" inherits="CommonPages_OnDemand, App_Web_c3bvm4en" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Academy Introduction Begins-->
    <section id="academy-intro" class="py-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-7"> 
                        <h2 class="h2 section-heading">On Demand <span>Courses</span></h2>
                        <p id="pTagSec1" runat="server" class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                    </div>
                    <div class="col-md-5">
                        <img id="ImgSec1" runat="server" src="../Assets/img/home-section-4.png"/>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Academy Introduction Ends-->

    <!--On demand Courses Begins-->
    <section class="acourse-tab">
        <div class="container">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <ul class="nav nav-tabs acourse-tab-nav" role="tablist">
                        <li id="litabhead1" class="nav-item active">
                            <a class="nav-link active" id="academy-courses-btn" onclick="acttab1();" data-toggle="tab" href="#academy-courses" role="tab" aria-controls="academy-courses" aria-selected="true">
                                <h3 class="section-heading">On demand <span>Courses</span></h3>
                            </a>
                            <div class="academy-searchform">
                                <div class="form-group d-flex">
                                    <input runat="server" id="TxtOndemdCrsSearchKey" type="text" class="form-control pl-3" placeholder="Search" />
                                    <asp:LinkButton ID="LnkBttnOndemdCrsSearch" OnClick="LnkBttnOndemdCrsSearch_Click" runat="server" CssClass="form-control search"><span class="fa fa-search"></span></asp:LinkButton>
                                </div>
                            </div>
                        </li>
                        <li id="litabhead2" class="nav-item">
                            <a class="nav-link" onclick="acttab2();" id="ondemand-courses-btn" data-toggle="tab" href="#ondemand-courses" role="tab" aria-controls="ondemand-courses" aria-selected="true">
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
                        <div class="tab-pane fade show active" id="academy-courses" role="tabpanel" aria-labelledby="academy-courses-tab">
                            <div class="inner-container">
                                <p id="pTagOndemandDesc" runat="server" class="mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                            </div>
                            <div class="row">
                                <asp:Repeater runat="server" ID="RptrOnDemandCrss" OnItemDataBound="RptrOnDemandCrss_ItemDataBound">
                                    <ItemTemplate>
                                        <div class="col-10 offset-1 offset-sm-0 col-sm-6 col-md-4 px-sm-2 mb-4">
                                            <div class="tuition-single d-flex align-items-end">
                                                <div class="tuition-img">
                                                    <img src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' width="219px" height="219px">
                                                </div>
                                                <div class="tuition-info yellowbox" style="height: 230px;">
                                                    <h5><asp:Label ID="LblName" runat="server" ></asp:Label></h5>
                                                    <h6>Quick support for your needs</h6>
                                                    <p><%#Convert.ToInt32( Eval("Duration"))+" "+Eval("DurationType")+" | "+Eval("StartDate", "{0: dd MMMM yyyy}")%></p>
                                                    <p><%#Eval("AccAName")%></p>
                                                    <p><%#Eval("AcaedemicLevel")%></p>
                                                     <asp:HyperLink ID="HyLnkView" CssClass="view-new-btn" runat="server">View<i class="fa fa-long-arrow-right"></i></asp:HyperLink>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <div class="col-10 offset-1 offset-sm-0 col-sm-6 col-md-4 px-sm-2 mb-4">
                                            <div class="tuition-single d-flex align-items-end">
                                                <div class="tuition-img">
                                                    <img src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' width="219px" height="219px">
                                                </div>
                                                <div class="tuition-info greenbox" style="height: 230px;">
                                                    <h5><asp:Label ID="LblName" runat="server" ></asp:Label></h5>
                                                    <h6>Quick support for your needs</h6>
                                                    <p><%#Convert.ToInt32( Eval("Duration"))+" "+Eval("DurationType")+" | "+Eval("StartDate", "{0: dd MMMM yyyy}")%></p>
                                                    <p><%#Eval("AccAName")%></p>
                                                    <p><%#Eval("AcaedemicLevel")%></p>
                                                     <asp:HyperLink ID="HyLnkView" CssClass="view-new-btn" runat="server">View<i class="fa fa-long-arrow-right"></i></asp:HyperLink>
                                                </div>
                                            </div>
                                        </div>
                                    </AlternatingItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="row">
                                <div class="col"></div>
                                <div class="col-md-3">
                                    <asp:LinkButton CssClass="view-btn" ID="LnkBttnViewAllCrss" OnClick="LnkBttnViewAllCrss_Click" runat="server">View all Courses<i class="fa fa-long-arrow-right"></i></asp:LinkButton>
                                </div>
                                <div class="col"></div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="ondemand-courses" role="tabpanel" aria-labelledby="ondemand-courses-tab">
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
                                                        <img src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>'>
                                                    </figure>
                                                    <figcaption>
                                                       <h6><asp:Label ID="LblName" runat="server" ></asp:Label></h6>
                                                        <p>Mathematics</p>
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
                                    <asp:LinkButton ID="LnkBttnViewAllTut" OnClick="LnkBttnViewAllTut_Click" CssClass="view-btn" runat="server">View all Tutors<i class="fa fa-long-arrow-right"></i></asp:LinkButton>
                                </div>
                                <div class="col"></div>
                            </div>
                        </div>

                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </section>
    <!--On demand Courses Ends-->

    <!--On demand Section 2 Begins-->
    <section id="academy-sec2" class="py-4">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-6">
                        <img id="ImgSec3" runat="server" src="../Assets/img/home-section-4.png"/>
                    </div>
                    <div class="col-md-6">
                        <p id="pTagSec3" runat="server" class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--On demand Section 2 Ends-->

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
                            <p id="pTagTutDet" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
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


    <script>
        $(document).ready(function () {
            $('#Ondemand').addClass('active');
        });

        function acttab2() {

            $('#litabhead1').removeClass('active'),
                $('#litabhead2').addClass('active'),
                $('#academy-courses-btn').removeClass('active'),
                $('#ondemand-courses-btn').addClass('active'),
                $('#academy-courses').removeClass('show active'),
                $('#ondemand-courses').addClass('show active');
        }

        function acttab1() {

            $('#litabhead1').addClass('active'),
                $('#litabhead2').removeClass('active'),
                $('#academy-courses-btn').addClass('active'),
                $('#ondemand-courses-btn').removeClass('active'),
                $('#academy-courses').addClass('show active'),
                $('#ondemand-courses').removeClass('show active');
        }

    </script>

</asp:Content>




