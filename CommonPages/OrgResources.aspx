<%@ page title="" language="C#" masterpagefile="~/MasterPages/OrgMaster.master" autoeventwireup="true" inherits="CommonPages_OrgResources, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Resources Introduction Begins-->
    <section id="resource-intro" class="pt-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="h2 section-heading">Resource <span>Library</span></h2>
                        <p id="pTagSec1" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, commodo viverra </p>
                    </div>
                    <div class="col-md-6">
                        <img id="ImgSec1" runat="server" src="../Assets/img/resource-top-img.jpg"/>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Resources Introduction Ends-->

   <!--Resources Search Begins-->
    <section id="resource-search" class="pb-4">
        <div class="container">
            <div class="d-flex align-items-center">
                <h3 class="section-heading">Resources <span>Library</span></h3>
                <div class="academy-searchform">
                    <div class="form-group d-flex">
                        <input runat="server" id="TxtSearchKey" type="text" class="form-control pl-3" placeholder="Search" />
                        <asp:LinkButton ID="LnkBtnSearch" OnClick="LnkBtnSearch_Click" runat="server" CssClass="form-control search"><span class="fa fa-search"></span></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Resources Search Ends-->
 <!--Resources List Begins-->
    <section class="resource-sec pt-5">
        <div class="container">
            <asp:Repeater runat="server" ID="RptrCourse" OnItemDataBound="RptrCourse_ItemDataBound">
            <ItemTemplate>
                <div class="row resource-list no-gutters">
                <div class="col-md-3">
                    <div class="resource-icon-holder">
                        <img src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>'>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="resource-desc">
                        <h6><asp:Label ID="LblName" runat="server" ></asp:Label></h6>
                        <div class="resource-org">
                            <p class="resource-org"><span>Organization : </span><asp:Label ID="LblOrgName" runat="server" ></asp:Label></p>
                        </div>
                        <p><%#Eval("CourseIntroduction")%></p>
                        <div class="resource-auth">
                            <p><span>Author : </span><asp:Label ID="LblAutorName" runat="server" ></asp:Label></p>
                        </div>
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
                        <div class="resource-buttons">
                             <asp:HyperLink ID="HyLnkView" CssClass="view-btn" runat="server">Document<i class="fa fa-long-arrow-right"></i></asp:HyperLink>
                             <asp:HyperLink ID="HyLnkViewVideo" CssClass="view-btn" runat="server">Video<i class="fa fa-long-arrow-right"></i></asp:HyperLink>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            </ItemTemplate>
            </asp:Repeater>            
        </div>
    </section>
    <!--Resources List Ends-->

 
    <!--Related Search Begins-->
    <section class="mb-5">
        <div class="container">
            <div class="rsearch-title">
                <h5>Popular Resourses</h5>
            </div>
            <div class="rsearch-carousel">
                <div class="owl-carousel owl-theme tuition-carousel">
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
                            <div>
                                <img src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' class="imgRadious" width="50%" height="50%">
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
            $('#menuresource').addClass('active');
        });
    </script>

</asp:Content>
