<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" stylesheettheme="SkinFile" inherits="CommonPages_OrgCourseDet, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
                                    <asp:LinkButton ID="LnkJoin" runat="server" Width="100px" data-toggle="modal" class="btn-find btnGreen" data-target="#login-modal">Join</asp:LinkButton>
                                    <asp:Button ID ="BtnJoin" runat="server" Text="Join" SkinID="BtnCommandFind" CommandName="ASGN" OnClientClick="return confirm('Do you want to join this course?')" OnClick="ManiPulateDataEvent_Clicked" />
                                </div>
                            </div>
                            <img src="../UploadedFiles/Images/image-placeholder.jpg" runat="server" id="ImgCourse" />
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
                            <div>
                                 <asp:LinkButton ID="LnkJoinFooter" runat="server" Width="215px" data-toggle="modal" class="btn-find btnGreen" data-target="#login-modal" >Join for this Course Now</asp:LinkButton>
                                  <asp:Button ID ="BtnJoinFooter" runat="server" Text="Join for this Course Now" SkinID="BtnCommandFind" CommandName="ASGN" OnClientClick="return confirm('Do you want to join this course?')" OnClick="ManiPulateDataEvent_Clicked" Width="215px" />
                            </div>
                            <div class="sbox-provider">
                                <p>
                                    <span>Course provided by:<br />
                                    </span><h id="HdrOrgName" runat="server">AB College</h>
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
                                    <p><span>Tutor Bio : </span><h runat="server" id="HdrTutotInfo">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 text-center">
                           <img src="../UploadedFiles/Images/image-placeholder.jpg" runat="server" id="ImgTutorProfile" style="height:150px;width:150px;" />
                            <p><span id="SpnTutNameInfo" runat="server">James Fedrick</span></p>
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
                <asp:Repeater runat="server" ID="RptRelatedSrch" OnItemDataBound="RptRelatedSrch_ItemDataBound">
                <ItemTemplate>
                    <div class="search-tile-holder">
                    <div class="search-single-tile d-flex align-items-end">
                    <div class="search-img">
                    <img class="image-placeholder" style="width:300px;height:150px;" src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' alt="icon" />
                    </div>
                    <div class="search-info">
                    <h5><asp:Label ID="LblName" runat="server" ></asp:Label></h5>
                    <li><%#Convert.ToInt32( Eval("Duration"))+" "+Eval("DurationType")+" | "+Eval("StartDate", "{0: dd MMMM yyyy}")%></li>
                    <li><%#Eval("AccAName")%></li>
                    <li>4.2</li>
                    <li>100K Students</li>
                    <li><%#Eval("AcaedemicLevel")%></li>
                    <div>
                    <asp:HyperLink ID="HyLnkView" CssClass="search-tile-btn" runat="server">View<i class="fa fa-long-arrow-right"></i></asp:HyperLink>
                    
                    <div class="clear"></div>
                    </div>
                    </div>
                    </div>
                    </div>
                </ItemTemplate>
                </asp:Repeater>
                </div>
            </div>
        </div>
    </section>
    <!--Related Search Ends-->
     </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


