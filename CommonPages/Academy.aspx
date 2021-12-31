<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" inherits="CommonPages_Academy, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Academy Introduction Begins-->
    <section id="academy-intro" class="py-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="page-title">Tutodu <span>Academy</span></h2>
                        <p class="p" id="pTagSec1" runat="server">Discover and learn something absolutely new with tutodu academy.
                            Every course begins with fundamentals and progresses from there. Our recognized certificates will help you stand out in the job market.</p>
                    </div>
                    <div class="col-md-6">
                        <img id="ImgSec1" runat="server" src="../Assets/img/home-section-4.png">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Academy Introduction Ends-->

    <!--Academy Courses Begins-->
    <section class="acourse-tab">
        <div class="container">
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <ul class="nav nav-tabs acourse-tab-nav" role="tablist">
                        <li id="litabhead1" class="nav-item active">
                            <a class="nav-link active" onclick="acttab1();" id="academy-courses-btn" data-toggle="tab" href="#academy-courses" role="tab" aria-controls="academy-courses" aria-selected="true">
                                <h3 class="section-heading">Academy <span>Courses</span></h3>
                            </a>
                            <div class="academy-searchform">
                                <div class="form-group d-flex">
                                    <input runat="server" id="TxtAcaCrsSearchKey" type="text" class="form-control pl-3" placeholder="Search" />
                                    <asp:LinkButton ID="LnkBttnAcdCrsSearch" OnClick="LnkBttnAcdCrsSearch_Click" runat="server" CssClass="form-control search"><span class="fa fa-search"></span></asp:LinkButton>
                                </div>
                            </div>
                        </li>
                        <li id="litabhead2" class="nav-item">
                            <a class="nav-link" onclick="acttab2();" id="organizations-btn" data-toggle="tab" href="#organizations" role="tab" aria-controls="organizations" aria-selected="true">
                                <h3 class="section-heading">Organizations</h3>
                            </a>
                            <div class="academy-searchform">
                                <div class="form-group d-flex">
                                    <input runat="server" id="TxtAcaSearchKey" type="text" class="form-control pl-3" placeholder="Search" />
                                    <asp:LinkButton ID="LnkBttnAcdSearch" OnClick="LnkBttnAcdSearch_Click" runat="server" CssClass="form-control search"><span class="fa fa-search"></span></asp:LinkButton>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="academy-courses" role="tabpanel" aria-labelledby="academy-courses-tab">
                            <div class="inner-container">
                                <p id="pTagSec2Acdm" runat="server" class="mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                            </div>
                            <div class="row">
                                <asp:Repeater runat="server" ID="RptrAcdmyCrss" OnItemDataBound="RptrAcdmyCrss_ItemDataBound">
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
                        <div class="tab-pane fade" id="organizations" role="tabpanel" aria-labelledby="organizations-tab">
                            <div class="inner-container">
                                <p id="pTagOrgSec2" runat="server" class="mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                            </div>
                            <div class="row">
                                <asp:Repeater runat="server" ID="RptrAcademy" OnItemDataBound="RptrAcademy_ItemDataBound">
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
                                                <div class="tuition-info yellowbox" style="height: 230px;">
                                                    <h5><asp:Label ID="LblName" runat="server" ></asp:Label></h5>
                                                    <h6>Reg. No : <%#Eval("CompanyRegNo")%></h6>
                                                     <p><%#Eval("SubCatName")%></p>
                                                     <p><%#Eval("Nationality")%> , <%#Eval("City")%></p>
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
                                    <asp:HyperLink ID="HyLnkViewAllOrg" CssClass="view-btn" runat="server">View all Organizations<i class="fa fa-long-arrow-right"></i></asp:HyperLink>
                                </div>
                                <div class="col"></div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </section>
    <!--Academy Courses Ends-->

    <!--Academy Section 2 Begins-->
    <section id="academy-sec2" class="py-5">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-5">
                        <img id="ImgSec3" runat="server" src="../Assets/img/home-section-4.png">
                    </div>
                    <div class="col-md-7">
                        <p id="pTagSec3" runat="server" class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Academy Section 2 Ends-->

    <!--Academy Section 3 Begins-->
    <section id="academy-sec3" class="py-5">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-8">
                        <p id="pTag1Sec4" runat="server" class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                        <p id="pTag2Sec4" runat="server" class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                    </div>
                    <div class="col-md-4">
                        <img id="ImgSec4" runat="server" src="../Assets/img/news.jpg"/>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Academy Section 3 Ends-->

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
            $('#Academy').addClass('active');
        });

        function acttab2() {

            $('#litabhead1').removeClass('active'),
                $('#litabhead2').addClass('active'),
                $('#academy-courses-btn').removeClass('active'),
                $('#organizations-btn').addClass('active'),
                $('#academy-courses').removeClass('show active'),
                $('#organizations').addClass('show active');
        }

        function acttab1() {

            $('#litabhead1').addClass('active'),
                $('#litabhead2').removeClass('active'),
                $('#academy-courses-btn').addClass('active'),
                $('#organizations-btn').removeClass('active'),
                $('#academy-courses').addClass('show active'),
                $('#organizations').removeClass('show active');
        }

    </script>

</asp:Content>