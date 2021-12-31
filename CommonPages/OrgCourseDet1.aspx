<%@ page title="" language="C#" masterpagefile="~/MasterPages/OrgMaster.master" autoeventwireup="true" inherits="CommonPages_OrgCourseDet1, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:HiddenField ID="HddnCrsName" runat="server" />
    <asp:HiddenField ID="HddnCrsAccID" runat="server" />
    <asp:HiddenField ID="HddnCrsID" runat="server" />
    <asp:HiddenField ID="HddnPriTutID" runat="server" />

    <!--Academy Introduction Begins-->
    <section id="course-intro" class="pt-md-5 py-2 mb-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="course-title">
                        <h4>Course - <span id="SpnCrsName" runat="server">Machine Learning</span></h4>
                        <div class="course-error">
                            <h6>Our Course overview:</h6>
                        </div>
                    </div>
                    <div class="course-brief">
                        <h4 id="H4CrsName" runat="server">Machine Learning</h4>
                        <div class="cbrief-info">
                            <div class="col1">
                                <div class="course-rating">
                                    <div class="stars">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <span>| rated 5 star by students</span>
                                </div>
                                <div class="cbrief-students">
                                    <p>1294 Students</p>
                                </div>
                                <div class="cbrief-instructor">
                                    <p>Instructor : <span id="SpnTutor" runat="server">Jibin Micheal</span></p>
                                </div>
                                <div class="cbrief-fee">
                                    <p>Course Fee : <span id="SpnCrsFee" runat="server">Free</span></p>
                                </div>
                                <div class="cbrief-btn">
                                    <a href="#">Join <i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                            
                            <img src="../Assets/img/course-img.jpg">
                            
                            
                            
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!--Academy Introduction Ends-->

    <!--Course details begins-->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-3">
                    <div class="quick-info">
                        <h4 class="text-center">Quick Info</h4>
                        <div class="qinfo-sub">
                            <h3>Course Duration</h3>
                            <p id="PCrsDuration" runat="server">Weekend | 2 Hrs. | Free</p>
                        </div>
                        <div class="qinfo-sub">
                            <h3>Course Category</h3>
                            <p id="PCrsCat" runat="server">Live Classes | Free</p>
                        </div>
                        <div class="qinfo-sub">
                            <h3>Academic Level</h3>
                            <p id="PCrsAcademicLevel" runat="server">Easy | Medium | Hard</p>
                        </div>
                        <div class="qinfo-sub">
                            <h3>Prerequisite</h3>
                            <p id="PCrsPreReq" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doa eiusmod tempor incididunt ut labore</p>
                        </div>
                        <div class="qinfo-sub">
                            <h3>Language</h3>
                            <p id="PCrsLang" runat="server">English| Malayalam |Hindi</p>
                        </div>
                        <%--  <div class="qinfo-sub">
                            <h3>Duration</h3>
                            <p>3 Months</p>
                        </div>--%>
                        <div class="qinfo-sub">
                            <h3>Status</h3>
                            <p id="PCrsStatus" runat="server">Starting on 18-10-2021</p>
                        </div>
                        <div class="qinfo-sub">
                            <h3>Start / End Date</h3>
                            <p id="">
                                Start Date :
                                <asp:Label Text="" ID="LblCrsStDate" runat="server" /><br />
                                End Date :
                                <asp:Label Text="" ID="LblCrsEnDate" runat="server" />
                            </p>
                        </div>
                        <div class="qinfo-sub">
                            <h3><a href="#">Enrollment Window</a></h3>
                            <p>
                                Start Date :
                                <asp:Label Text="" ID="LblEnrStDtate" runat="server" /><br />
                                End Date :
                                <asp:Label Text="" ID="LblEnrEnDate" runat="server" />
                            </p>
                        </div>
                    </div>
                    <div class="course-info-sbox mt-3">
                        <div class="sbox-titlearea">
                            <h4 id="H4CrsNameFooter" runat="server">Machine Learning</h4>
                            <div class="course-rating">
                                <div class="stars">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="sbox-body">
                            <div class="btn mb-3">
                                <a href="">Join for this <span>Course Now</span></a>
                            </div>
                            <div class="sbox-provider">
                                <p>
                                    <span>Course provided by:<br />
                                    </span>AB College
                                </p>
                            </div>
                            <div class="sbox-tutor">
                                <p id="SpnTutNameFooter2" runat="server">James Fedrick</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-lg-9">
                    <div class="row course-details-tile no-gutters">
                        <div class="col-md-12">
                            <h6>Course Description</h6>
                            <p id="PCrsDesc" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                        </div>
                        
                    </div>
                    <div class="row course-details-tile no-gutters">
                        <div class="col-md-12">
                            <h6>Syllabus</h6>
                            <p id="PCrsSyllabus" runat="server">Mirror Formula And Magnification, Refraction Through A Rectangular Glass Slab, The Refractive Index, Refraction By Spherical Lenses </p>
                        </div>
                        
                    </div>
                    <div class="row course-details-tile no-gutters">
                        <div class="col-md-12">
                            <h6>Exams & Certificates</h6>
                            <p id="PCrsExamCert" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                        </div>
                        
                    </div>
                    <div class="row instructor-info-tile no-gutters">
                        <div class="col-md-8">
                            <h6>Instructor Info</h6>
                            <div class="iinfo-holder">
                                <div class="course-rating">
                                    <div class="stars">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <span>| rated 5 star by students</span>
                                </div>
                                <div class="idetails">
                                    <p>
                                        <span>Skills : </span>
                                        <asp:Repeater runat="server" ID="RptrPriTutExpDet">
                                            <ItemTemplate>
                                                <%#Eval("Name")%>,
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </p>
                                    <p>
                                        <span>Qualification : </span>
                                        <asp:Repeater runat="server" ID="RptrPriTutEduDet">
                                            <ItemTemplate>
                                                <%#Eval("Name")%>,
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </p>
                                    <p><span>Tutor Bio : </span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 text-center">
                            <img src="../Assets/img/instructor-img.png">
                            <p><span id="SpnTutNameinfo" runat="server">James Fedrick</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Course details ends-->

    <!--Related Search Begins-->
    <section class="mb-5">
        <div class="container">
            <div class="rsearch-title">
                <h5>Related Search</h5>
            </div>
            <div class="rsearch-carousel">
                <div class="owl-carousel owl-theme tuition-carousel">
                    <div class="item">
                        <div class="tuition-single d-flex align-items-end">
                            <div class="tuition-info greenbox">
                                <h5>Digital Communication</h5>
                                <h6>Quick support for your needs</h6>
                                <p>1 Weeks | 18 April 2021</p>
                                <p>Abhilash V Pandiankal</p>
                                <a class="view-new-btn" href="#">View<i class="fa fa-long-arrow-right"></i></a>
                            </div>
                            <div class="tuition-img">
                                <img src="../Assets/img/tuition-img.jpg">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="tuition-single d-flex align-items-end">
                            <div class="tuition-info yellowbox">
                                <h5>Digital Communication</h5>
                                <h6>Quick support for your needs</h6>
                                <p>1 Weeks | 18 April 2021</p>
                                <p>Abhilash V Pandiankal</p>
                                <a class="view-new-btn" href="#">View<i class="fa fa-long-arrow-right"></i></a>
                            </div>
                            <div class="tuition-img">
                                <img src="../Assets/img/tuition-img.jpg">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="tuition-single d-flex align-items-end">
                            <div class="tuition-info orangebox">
                                <h5>Digital Communication</h5>
                                <h6>Quick support for your needs</h6>
                                <p>1 Weeks | 18 April 2021</p>
                                <p>Abhilash V Pandiankal</p>
                                <a class="view-new-btn" href="#">View<i class="fa fa-long-arrow-right"></i></a>
                            </div>
                            <div class="tuition-img">
                                <img src="../Assets/img/tuition-img.jpg">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="tuition-single d-flex align-items-end">
                            <div class="tuition-info greenbox">
                                <h5>Digital Communication</h5>
                                <h6>Quick support for your needs</h6>
                                <p>1 Weeks | 18 April 2021</p>
                                <p>Abhilash V Pandiankal</p>
                                <a class="view-new-btn" href="#">View<i class="fa fa-long-arrow-right"></i></a>
                            </div>
                            <div class="tuition-img">
                                <img src="../Assets/img/tuition-img.jpg">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Related Search Ends-->

</asp:Content>


