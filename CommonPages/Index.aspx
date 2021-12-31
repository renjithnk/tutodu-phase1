<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.Master" autoeventwireup="true" inherits="CommonPages_Default, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .owl-carousel .owl-nav button.owl-next, .owl-carousel .owl-nav button.owl-prev, .owl-carousel button.owl-dot {
            display: none;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <!--Slider Begins-->
    <section id="slider-section">
        <div id="layerslider_1_1y0mo1tioxocw" class="ls-wp-container fitvidsignore" style="width: 1280px; height: 600px; margin: 0 auto; margin-bottom: 0px; margin-top: -35px; z-index: 0;">
            <!--slide 1-->
            <div class="ls-slide" data-ls="duration:4000;">
                <img
                    width="1920"
                    height="960"
                    src=""
                    class="ls-bg"
                    alt="White Table"
                    loading="lazy"
                    srcset=""
                    sizes="(max-width: 1920px) 100vw, 1920px" runat="server" id="Img1MainSlider" />
                <div
                    style=" font-weight: 700; font-size: 40px; line-height: 62px; color: #000; top: 135px; left: 100px;"
                    class="ls-l slider-heading1"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    We Provide an
                </div>
                <div
                    style=" font-weight: 700; font-size: 40px; line-height: 62px; color: #f36b3b; top: 180px; left: 100px;"
                    class="ls-l slider-heading"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    Easy Learning solution
                </div>
                <div
                    style="width: 300px; text-transform: none; font-weight: normal; font-size: 16px; line-height: 20px; color: #000; top: 250px; left: 100px;"
                    class="ls-l slider-text"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    <p>
                        Our courses are designed to make
                        <br>
                          your learning easy and efficient<br>
                          with latest learning resources
                    </p>
                </div>
                <div
                    style="width: 300px; text-transform: none; font-weight: normal; font-size: 16px; line-height: 20px; color: #000; top: 360px; left: 100px;"
                    class="ls-l slider-btn-holder"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    <asp:HyperLink ID="HyLnkAllCourses" CssClass="slider-button" runat="server">All Courses</asp:HyperLink>
                </div>
                <div
                    style="width: 300px; text-transform: none; font-weight: normal; font-size: 16px; line-height: 20px; color: #000; top: 360px; left: 270px;"
                    class="ls-l slider-btn-holder2"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    <asp:HyperLink ID="HyLnkAllOrg" CssClass="slider-button" runat="server">All Organizations</asp:HyperLink>
                </div>
            </div>
            <!--//end of slide 1-->

            <!--slide 2-->
            <div class="ls-slide" data-ls="duration:4000;">
                <img
                    width="1920"
                    height="960"
                    src=""
                    class="ls-bg"
                    alt="White Table"
                    loading="lazy"
                    srcset=""
                    sizes="(max-width: 1920px) 100vw, 1920px" runat="server" id="Img2MainSlider" />
                <div
                    style=" font-weight: 700; font-size: 40px; line-height: 62px; color: #000; top: 135px; left: 100px;"
                    class="ls-l slider-heading1"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    Discover and Learn 
                </div>
                <div
                    style=" font-weight: 700; font-size: 40px; line-height: 62px; color: #f36b3b; top: 180px; left: 100px;"
                    class="ls-l slider-heading"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    Best Training
                </div>
                <div
                    style="width: 300px; text-transform: none; font-weight: normal; font-size: 16px; line-height: 20px; color: #000; top: 250px; left: 100px;"
                    class="ls-l slider-text"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    <p>
                        We provide best training
                        <br>
                        which is led by industry experts
                        <br>
                        that help you to build 
                        <br>
                        your better career
                    </p>
                </div>
                <div
                    style="width: 300px; text-transform: none; font-weight: normal; font-size: 16px; line-height: 20px; color: #000; top: 360px; left: 100px;"
                    class="ls-l slider-btn-holder"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                     <asp:HyperLink ID="HyLnkAllCourses1" CssClass="slider-button" runat="server">All Courses</asp:HyperLink>
                </div>
                <div
                    style="width: 300px; text-transform: none; font-weight: normal; font-size: 16px; line-height: 20px; color: #000; top: 360px; left: 270px;"
                    class="ls-l slider-btn-holder2"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    <asp:HyperLink ID="HyLnkAllOrg1" CssClass="slider-button" runat="server">All Organizations</asp:HyperLink>
                </div>
            </div>
            <!--//end of slide 2-->

            <!--slide 3-->
            <div class="ls-slide" data-ls="duration:4000;">
                <img
                    width="1920"
                    height="960"
                    src=""
                    class="ls-bg"
                    alt="White Table"
                    loading="lazy"
                    srcset=""
                    sizes="(max-width: 1920px) 100vw, 1920px" runat="server" id="Img3MainSlider" />
                <div
                    style="font-weight: 700; font-size: 40px; line-height: 62px; color: #000; top: 135px; left: 100px;"
                    class="ls-l slider-heading1"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    We offer Comprehensive
                </div>
                <div
                    style=" font-weight: 700; font-size: 40px; line-height: 62px; color: #f36b3b; top: 180px; left: 100px;"
                    class="ls-l slider-heading"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                   Learning Experience
                </div>
                <div
                    style="width: 300px; text-transform: none; font-weight: normal; font-size: 16px; line-height: 20px; color: #000; top: 250px; left: 100px;"
                    class="ls-l slider-text"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                    <p>
                        Tutodu is to provide
                        <br>
                        comprehensive Education
                        <br>
                        resources in one single platform
                    </p>
                </div>
                <div
                    style="width: 300px; text-transform: none; font-weight: normal; font-size: 16px; line-height: 20px; color: #000; top: 360px; left: 100px;"
                    class="ls-l slider-btn-holder"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                     <asp:HyperLink ID="HyLnkAllCourses2" CssClass="slider-button" runat="server">All Courses</asp:HyperLink>
                </div>
                <div
                    style="width: 300px; text-transform: none; font-weight: normal; font-size: 16px; line-height: 20px; color: #000; top: 360px; left: 270px;"
                    class="ls-l slider-btn-holder2"
                    data-ls="offsetyin:-200;durationin:1500;delayin:0;offsetyout:200;durationout:400;parallaxlevel:0;">
                     <asp:HyperLink ID="HyLnkAllOrg2" CssClass="slider-button" runat="server">All Organizations</asp:HyperLink>
                </div>
            </div>
            <!--//end of slide 3-->
            <a class="ls-nav-prev" href="#" style="visibility: visible;"></a>
            <a class="ls-nav-next" href="#" style="visibility: visible;"></a>
        </div>
    </section>
    <!--Slider Ends-->

    <!--Popular Courses Begins-->

    <section id="popular-courses">
        <div class="container">
            <div class="inner-container mb-5">
                <h3 class="section-heading">Popular <span>Courses</span>
                </h3>
                <p id="pTagPopularCourseDesc" runat="server"></p>
            </div>
            <!--Popular Courses Desktop Begins-->
            <div class="popular-courses-desktop">
                <div class="row">
                    <asp:Repeater runat="server" ID="RptrPopularCourses" OnItemDataBound="RptrPopularCourses_ItemDataBound">
                        <ItemTemplate>
                            <div class="col-10 offset-1 offset-sm-0 col-lg-3 col-sm-6 mb-5 px-md-4">
                                <div class="popular-course-box" style="height: 325px">
                                    <div class="pp-course-img text-center mb-20">
                                        <img class="image-placeholder" width="300px" height="150px" src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' alt="icon" />
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
            </div>
            <!--Popular Courses Desktop Ends-->

            <!--Popular Courses Mobile Begins-->
            <div class="row popular-courses-mobile" style="display: none;">
                <div class="col-10 offset-1">
                    <div class="owl-carousel owl-theme popular-carousel">
                        <asp:Repeater runat="server" ID="RptrPopularCoursesMob" OnItemDataBound="RptrPopularCoursesMob_ItemDataBound">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="popular-course-box">
                                        <div class="pp-course-img text-center mb-20">
                                            <img class="image-placeholder" width="300px" height="150px" src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' alt="icon" />
                                        </div>
                                        <div class="pp-course-title text-center mb-35 px-2">
                                            <h6 style="margin-top: 10px;"><asp:Label ID="LblName" runat="server" ></asp:Label></h6>
                                        </div>
                                        <div class="pp-course-body px-2">
                                            <ul>
                                                <li><%#Convert.ToInt32( Eval("Duration"))+" "+Eval("DurationType")+" | "+Eval("StartDate", "{0: dd MMMM yyyy}")%></li>
                                                <li><%#Eval("AccAName")%></li>
                                                <li>4.2</li>
                                                <li>100K Students</li>
                                                <li><%#Eval("AcaedemicLevel")%></li>
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
                </div>
            </div>
            <!--Popular Courses Mobile Ends-->


            <!--Popular Courses Mobile Begins-->
            <div class="row popular-courses-mobile" style="display: none;">
                <div class="col-10 offset-1">
                    <div class="owl-carousel owl-theme popular-carousel">
                        <asp:Repeater runat="server" ID="RptrPopularCoursesMob2" OnItemDataBound="RptrPopularCoursesMob2_ItemDataBound">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="popular-course-box">
                                        <div class="pp-course-img text-center mb-20">
                                            <img class="image-placeholder" width="300px" height="150px" src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' alt="icon" />
                                        </div>
                                        <div class="pp-course-title text-center mb-35 px-2">
                                            <h6 style="margin-top: 10px;"><asp:Label ID="LblName" runat="server" ></asp:Label></h6>
                                        </div>
                                        <div class="pp-course-body px-2">
                                            <ul>
                                                <li><%#Convert.ToInt32( Eval("Duration"))+" "+Eval("DurationType")+" | "+Eval("StartDate", "{0: dd MMMM yyyy}")%></li>
                                                <li><%#Eval("AccAName")%></li>
                                                <li>4.2</li>
                                                <li>100K Students</li>
                                                <li><%#Eval("AcaedemicLevel")%></li>
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
                </div>
            </div>
            <!--Popular Courses Mobile Ends-->

            <div class="row">
                <div class="col"></div>
                <div class="col-md-3">
                    <asp:HyperLink ID="HylnkViewAllCoures"  CssClass="view-btn" runat="server">Load more</asp:HyperLink>
                    <asp:LinkButton ID="LnkBttnViewAllCourses" OnClick="LnkBttnViewAllCourses_Click" CssClass="view-btn" Visible="false" runat="server">Load more<i class="fa fa-long-arrow-right"></i></asp:LinkButton>
                </div>
                <div class="col"></div>
            </div>
        </div>
    </section>


    <!--Popular Courses Ends-->

    <!--Home Section 2 Begins-->
    <section id="home-section-2" class="py-5">
        <div class="container">
            <div class="inner-container">
                <h2 class="h2 section-heading">A platform created to make <span>learning fast and effective</span></h2>
                <img id="ImgSec3" runat="server" src="">
                <p id="pTagSec3" runat="server" class="mt-3"></p>
            </div>
        </div>
    </section>
    <!--Home Section 2 Ends-->

   <!--Partnering Organizations Begins-->
    <section id="partners" class="py-md-5 py-2">
        <div class="container">
            <div class="partner-heading text-center">
                <h5>Partnering Organizations</h5>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="owl-carousel owl-theme partner-carousel mb-4">
                        <asp:Repeater runat="server" ID="RptrPartneringOrgs">
                            <ItemTemplate>
                                <div class="item">
                                    <img src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' />
                                    <h7><%#Eval("Name")%></h7> 
                                </div>                               
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!--Partnering Organizations Ends-->

     <!--Home Section 4 Begins-->
    <section id="home-section-4" class="py-5">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-7">
                        <h2 class="h2 section-heading" runat="server" id="HdrSection4">Our courses are led by industry experts with <span>high quality learning materials</span></h2>
                        <p id="pTagSec4" runat="server" class="mt-3"></p>
                         <p class="btn-wrapper">
                              <asp:HyperLink ID="HyLnkSect4LearnMore" CssClass="view-btn" runat="server">Learn More<i class="fa fa-long-arrow-right"></i></asp:HyperLink>
                        </p>
                    </div>
                    <div class="col-md-5">
                        <img id="ImgSec4" runat="server" src="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Home Section 4 Ends-->

    <!--News & Updates Begins-->
    <section id="news-updates" class="py-5">
        <div class="container">
            <div class="inner-container">
                <h3 class="section-heading">News & <span>Updates</span>
                </h3>
            </div>
            <div class="row">
                <div class="col-10 offset-1 offset-sm-0 col-sm-6 col-lg-3 px-md-4 mb-3">
                    <div class="news-card">
                        <div class="news-media">
                            <img id="Img1Sec5" runat="server" src="../Assets/img/news.jpg"/>
                        </div>
                        <div class="news-content">
                            <h5 id="HdrNew1" runat="server">Lorem ipsum dolor sit..</h5>
                            <p id="pTag1Sec5" runat="server">amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sis. amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                        </div>
                    </div>
                </div>
                <div class="col-10 offset-1 offset-sm-0 col-sm-6 col-lg-3 px-md-4 mb-3">
                    <div class="news-card">
                        <div class="news-content">
                            <h5 id="HdrNew2" runat="server">Lorem ipsum dolor sit</h5>
                            <p id="pTag2Sec5" runat="server">amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sis. amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                        <div class="news-media">
                            <img id="Img2Sec5" runat="server" src="../Assets/img/news.jpg"/>
                        </div>
                    </div>
                </div>
                <div class="col-10 offset-1 offset-sm-0 col-sm-6 col-lg-3 px-md-4 mb-3">
                    <div class="news-card">
                        <asp:Repeater runat="server" ID="RptrVideo1">
                        <ItemTemplate>
                            <div class="news-media">
                            <video id="Vdo1Sec5" runat="server" width="100%" height="230" src='<%# Eval("cSection5Video1") %>' controls></video>
                            </div>
                            <div class="news-content">
                            <h5 id="HdrNew3" runat="server"><%#Eval("cNewEvetHdr3")%></h5>
                            <p id="pTag3Sec5" runat="server"><%#Eval("cSection5VideoText1")%></p>
                            </div>
                        </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="col-10 offset-1 offset-sm-0 col-sm-6 col-lg-3 px-md-4 mb-3">
                    <div class="news-card">
                         <asp:Repeater runat="server" ID="RptrVideo2">
                        <ItemTemplate>
                            <div class="news-media">
                            <video id="Vdo2Sec5" runat="server" width="100%" height="230" src='<%# Eval("cSection5Video2") %>' controls></video>
                            </div>
                            <div class="news-content">
                            <h5 id="HdrNew4" runat="server"><%#Eval("cNewEvetHdr4")%></h5>
                            <p id="pTag4Sec4" runat="server"><%#Eval("cSection5VideoText2")%></p>
                            </div>
                        </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--News & Updates Ends-->

    <!--Home Section 6 Begins-->
    <section id="home-section-6" class="py-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-12">
                        <h5 id="H5Sec6" runat="server" class="section-heading text-center">"I Never dreamed about success. I worked for it."<br>
                            Estee Lauder - Entrepreneur</h5>
                        <p id="pTag1Sec6" runat="server" class="mt-3 text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                         <!--remove this section -->
                        <p id="pTag2Sec6" runat="server"></p>
                         <!--remove  section end-->
                        <p class="btn-wrapper text-center"><asp:HyperLink ID="HyLnkSect6" CssClass="view-btn" runat="server">Learn More<i class="fa fa-long-arrow-right"></i></asp:HyperLink></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Home Section 6 Ends-->

    <!--Our Tutors Begins-->
    <section id="our-tutors">
        <div class="container">
            <div class="inner-container">
                <h3 class="section-heading">Our <span>Tutors</span>
                </h3>
                <div class="row">
                    <div class="col-md-12">
                        <div class="owl-carousel owl-theme tutors-carousel mb-4">
                            <asp:Repeater runat="server" ID="RptrOurtutors">
                                <ItemTemplate>
                                    <div class="item">
                                        <div class="d-flex align-items-center justify-content-center">
                                            <figure>
                                                <img src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' width="100" height="100" alt="">
                                            </figure>
                                            <figcaption>
                                                <p class="name"><%#Eval("Name")%></p>
                                                <p class="details"><%#Eval("OtherInformations")%>
                                                </p>
                                            </figcaption>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Our Tutors Ends-->
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
