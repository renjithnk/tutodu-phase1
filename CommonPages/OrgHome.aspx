<%@ page title="" language="C#" masterpagefile="~/MasterPages/OrgMaster.master" autoeventwireup="true" inherits="CommonPages_OrgHome, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        img {
    max-width: 92% !important;
}
    </style>
    <!--Organization Slider Begins-->
    <section id="organization-img">
        <img src="../Assets/img/organization-slider.jpg" id="ImgSrcHdr" runat="server" />
    </section>
    <!--Organization Slider Ends-->

    <!--Organization Intro Begins-->
    <section class="org-intro py-4">
        <div class="container">
            <div class="inner-container">
                <h4 id="HdrOrgName" runat="server">Organization Name</h4>
                <asp:Label id="LblOrgContent" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus com.</asp:Label>
            </div>
        </div>
    </section>
    <!--Organization Intro Ends-->

    <!--Organization Search Begins-->
    <section class="pb-4">
        <div class="container">
            <div class="row">
                <div class="col"></div>
                <div class="col-md-6">
                    <div class="d-flex align-items-center" id="org-search">
                        <div class="academy-searchform">
                            <div class="form-group d-flex">
                                 <input id="TxtSearchKey" runat="server" type="text" class="form-control pl-3" placeholder="Search for Courses...." />
                                <asp:LinkButton ID="LnkBttnSearch" OnClientClick="return TxtNullValidateSearch();" OnClick="LnkBttnSearch_Click" CssClass="form-control search" runat="server"><span class="fa fa-search"></span></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col"></div>
            </div>
        </div>
    </section>
    <!--Organization Search Ends-->

    <!--Organization Tab Begins-->
    <section>
        <div class="container">
            <div class="org-tab">
                <ul class="nav nav-tabs" id="orgtab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="public-courses-tab" data-toggle="tab" href="#public-courses" role="tab" aria-controls="public-courses" aria-selected="true">Public Courses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="private-courses-tab" data-toggle="tab" href="#private-courses" role="tab" aria-controls="private-courses" aria-selected="false">Private Courses</a>
                    </li>
                </ul>
                <div class="tab-content" id="orgtabcontent">
                    <!--Public courses begins-->
                    <div class="tab-pane fade show active" id="public-courses" role="tabpanel" aria-labelledby="public-courses-tab">
                        <div class="inner-container">
                            <p class="org-desc py-4" id="PrPublic" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                        </div>
                        <div class="row">
                            <asp:Repeater runat="server" ID="RptrPubCourses" OnItemDataBound="RptrPubCourses_ItemDataBound">
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
                    </div>
                    <!--Public courses Ends-->
                    <!--Private courses begins-->
                    <div class="tab-pane fade" id="private-courses" role="tabpanel" aria-labelledby="private-courses-tab">
                        <div class="inner-container">
                            <p class="org-desc py-4" id="PrPrivate" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                        </div>
                        <div class="row">
                            <asp:Repeater runat="server" ID="RptrPriCourses" OnItemDataBound="RptrPriCourses_ItemDataBound" >
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
                    </div>
                    <!--Private courses ends-->
                </div>
            </div>
        </div>
    </section>
    <!--Organization Tab Ends-->

    <!--Organization Bottom Begins-->
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="org-form">
                        <h5>Contact Organization</h5>
                        <input name="" type="text" placeholder="Name" id="" class="form-control">
                        <input name="" type="text" placeholder="Mail ID" id="Text1" class="form-control">
                        <input name="" type="text" placeholder="Contact Number" id="Text2" class="form-control">
                        <input name="" type="text" placeholder="Message" id="Text3" class="form-control">
                        <a href="#">Submit</a>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="org-header d-flex align-items-center justify-content-center">
                        <div class="tut-logo">
                            <img src="../Assets/img/logo.png">
                        </div>
                        <div class="org-login">
                            <a href="">Login</a>
                        </div>
                        <div class="org-register">
                            <a href="">Register</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col-md-10">
                            <div>
                                <h5>Contact Details</h5>
                                <div class="org-contact">
                                    <div class="org-icon">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                    <div>
                                        <p id="PrContact1" runat="server">+91 9876 543 210</p>
                                    </div>
                                </div>
                                <div class="org-contact">
                                    <div class="org-icon">
                                        <i class="fa fa-envelope-o "></i>
                                    </div>
                                    <div>
                                        <p  id="PrContact2" runat="server">+91 9876 543 210</p>
                                    </div>
                                </div>
                                <div class="org-contact">
                                    <div class="org-icon">
                                        <i class="fa fa-map-marker"></i>
                                    </div>
                                    <div>
                                        <p id="PrLocationMap" runat="server">
                                            Lorem ipsum dolor
                                            labore et dolore magna aliqua. isis.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="org-contact-btns">
                                <a href="">Join Organization</a>
                                <a href="">View Resources</a>
                            </div>
                        </div>
                        <div class="col"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Organization Bottom Ends-->

    <!--Related Search Begins-->
    <section class="mb-5">
        <div class="container">
            <div class="rsearch-title">
                <h5>Popular Courses</h5>
            </div>
            <div class="rsearch-carousel"> <div class="owl-carousel owl-theme tuition-carousel">
                    <asp:Repeater runat="server" ID="RptrPopularCourses" OnItemDataBound="RptrPopularCourses_ItemDataBound">
                    <ItemTemplate>
                        <div class="item">
                            <div class="tuition-single d-flex align-items-end">
                                <div class="tuition-info greenbox">
                                    <h5><asp:Label ID="LblName" runat="server" ></asp:Label></h5>
                                    <p><%#Eval("AcaedemicLevel")%></p>
                                    <p><%#FnIsNumeric( Eval("Duration"))+" "+Eval("DurationType")+" | Starts: "+Eval("StartDate", "{0: dd MMMM yyyy}")%></p>   
                                     <asp:HyperLink ID="HyLnkView" CssClass="view-new-btn" runat="server">View</asp:HyperLink>
                                </div>
                            <div class="tuition-img">
                                <img src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' width="219px" height="219px">
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



    <script>
        $(document).ready(function () {
            $('#menuhome').addClass('active');
        });
    </script>

</asp:Content>

