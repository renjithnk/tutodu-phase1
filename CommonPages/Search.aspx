<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" inherits="CommonPages_Search, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        #search-tab a:before {
            /*margin-top: -3px;*/
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:UpdatePanel runat="server">
        <ContentTemplate>


            <asp:HiddenField ID="HddnSearchKey" runat="server" />

            <!--Academy Introduction Begins-->
            <section id="search-intro" class="pt-md-5 py-2">
                <div class="container">
                    <div class="inner-container">
                        <div class="row">
                            <div class="col-md-7">
                                <div class="search-display">
                                    <h3>You're searching for - <span id="SpanSearchKey" runat="server"></span></h3>
                                </div>
                                <div class="search-error" id="DivSearchErrMsg" runat="server" visible="false">
                                    <h5>We couldn’t find any results for your search:</h5>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <img src="../Assets/img/search-intro-img.jpg">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--Academy Introduction Ends-->

            <!--Academy Courses Begins-->
            <section class="">
                <div class="container">
                    <div class="search-content-holder mb-5">
                        <div class="row">
                            <div class="col-md-4 col-lg-3">
                                <div class="search-left py-4">
                                    <h4>Filter By -</h4>
                                    <div class="accordion" id="search-toggle">

                                        <!--language begins-->
                                        <div class="card">
                                            <div class="card-header" id="language-head">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#language-toggle" aria-expanded="true" aria-controls="collapseOne">
                                                        Language
                                                    </button>
                                                </h2>
                                            </div>
                                            <div id="language-toggle" class="collapse show" aria-labelledby="language-head" data-parent="#search-toggle" style="">
                                                <div class="card-body">
                                                    <nav>
                                                        <div class="nav nav-tabs" id="course-menu" role="tablist">
                                                            <asp:Repeater runat="server" ID="RptrLanguages" OnItemCommand="RptrLanguages_ItemCommand">
                                                                <ItemTemplate>
                                                                    <%--<a class="nav-item nav-link" id="subj-combo-tab-cmenu" data-toggle="tab" href="#subj-combo-cmenu" role="tab" aria-controls="subj-combo-cmenu" aria-selected="true"><%#Eval("Name")%></a>--%>
                                                                    <asp:LinkButton CssClass="nav-item nav-link" runat="server" ID="LinkButton6" CommandArgument='<%#Eval("ID") %>' CommandName="GetResult"><%#Eval("Name")%></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </div>
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                        <!--language ends-->

                                        <!--category begins-->
                                        <div class="card">
                                            <div class="card-header" id="category-head">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#category-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                        Category
                                                    </button>
                                                </h2>
                                            </div>
                                            <div id="category-toggle" class="collapse" aria-labelledby="category-head" data-parent="#search-toggle" style="">
                                                <div class="card-body">
                                                    <nav>
                                                        <div class="nav nav-tabs" id="Div1" role="tablist">
                                                            <asp:Repeater runat="server" ID="RptrCourseCat" OnItemCommand="RptrCourseCat_ItemCommand">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton CssClass="nav-item nav-link" runat="server" ID="LinkButton6" CommandArgument='<%#Eval("Name") %>' CommandName="GetResult"><%#Eval("Name")%></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </div>
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                        <!--category ends-->

                                        <!--duration begins-->
                                        <div class="card">
                                            <div class="card-header" id="duration-head">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#duration-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                        Duration
                                                    </button>
                                                </h2>
                                            </div>

                                            <div id="duration-toggle" class="collapse" aria-labelledby="duration-head" data-parent="#search-toggle" style="">
                                                <div class="card-body">
                                                    <nav>
                                                        <div class="nav nav-tabs" id="Div2" role="tablist">
                                                            <asp:Repeater runat="server" ID="RptrCourseDuration" OnItemCommand="RptrCourseDuration_ItemCommand">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton CssClass="nav-item nav-link" runat="server" ID="LinkButton6" CommandArgument='<%#Eval("Name") %>' CommandName="GetResult"><%#Eval("Name")%></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </div>
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                        <!--duration ends-->

                                        <!--level begins-->
                                        <div class="card">
                                            <div class="card-header" id="level-head">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#level-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                        Level
                                                    </button>
                                                </h2>
                                            </div>

                                            <div id="level-toggle" class="collapse" aria-labelledby="level-head" data-parent="#search-toggle" style="">
                                                <div class="card-body">
                                                    <nav>
                                                        <div class="nav nav-tabs" id="Div3" role="tablist">
                                                            <asp:Repeater runat="server" ID="RptrAcademicLevel" OnItemCommand="RptrAcademicLevel_ItemCommand">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton CssClass="nav-item nav-link" runat="server" ID="LinkButton6" CommandArgument='<%#Eval("ID") %>' CommandName="GetResult"><%#Eval("Name")%></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                            <%--   <a class="nav-item nav-link" id="A8" data-toggle="tab" href="#lang-combo-cmenu" role="tab" aria-controls="lang-combo-cmenu" aria-selected="false">Language Combo Pack</a>
                                                        <a class="nav-item nav-link" id="A9" data-toggle="tab" href="#crash-course-cmenu" role="tab" aria-controls="crash-course-cmenu" aria-selected="false">Crash Course</a>--%>
                                                        </div>
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                        <!--level ends-->

                                        <!--organization begins-->
                                        <div class="card">
                                            <div class="card-header" id="organization-head">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#organization-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                        Organization
                                                    </button>
                                                </h2>
                                            </div>

                                            <div id="organization-toggle" class="collapse" aria-labelledby="organization-head" data-parent="#search-toggle" style="">
                                                <div class="card-body">
                                                    <nav>
                                                        <div class="nav nav-tabs" id="Div4" role="tablist">
                                                            <asp:Repeater runat="server" ID="RptrOrganizations" OnItemCommand="RptrOrganizations_ItemCommand">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton CssClass="nav-item nav-link" runat="server" ID="LinkButton6" CommandArgument='<%#Eval("ID") %>' CommandName="GetResult"><%#Eval("Name")%></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:Repeater>

                                                            <%--  <a class="nav-item nav-link" id="A11" data-toggle="tab" href="#lang-combo-cmenu" role="tab" aria-controls="lang-combo-cmenu" aria-selected="false">Language Combo Pack</a>
                                                        <a class="nav-item nav-link" id="A12" data-toggle="tab" href="#crash-course-cmenu" role="tab" aria-controls="crash-course-cmenu" aria-selected="false">Crash Course</a>--%>
                                                        </div>
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                        <!--organization ends-->

                                        <!--fee begins-->
                                        <div class="card">
                                            <div class="card-header" id="fee-head">
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#fee-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                        Fee
                                                    </button>
                                                </h2>
                                            </div>

                                            <div id="fee-toggle" class="collapse" aria-labelledby="fee-head" data-parent="#search-toggle" style="">
                                                <div class="card-body">
                                                    <nav>
                                                        <div class="nav nav-tabs" id="Div5" role="tablist">
                                                            <asp:Repeater runat="server" ID="RptrFee" OnItemCommand="RptrFee_ItemCommand">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton CssClass="nav-item nav-link" runat="server" ID="LinkButton6" CommandArgument='<%#Eval("Name") %>' CommandName="GetResult"><%#Eval("Name")%></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </div>
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                        <!--fee ends-->
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 col-lg-9">
                                <!--Search tabs begins-->
                                <div class="searchtab-holder">
                                    <ul class="nav  nav-pills nav-justified" id="search-tab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link" id="pills-search-tab1" aria-selected="true"><b>Sort By</b></a>
                                        </li>
                                        <asp:Repeater runat="server" ID="RptrSortFields" OnItemCommand="RptrSortFields_ItemCommand">
                                            <ItemTemplate>
                                                <li class="nav-item">
                                                    <asp:LinkButton CssClass="nav-link" runat="server" ID="LinkButton6" CommandArgument='<%#Eval("Name") %>' CommandName="GetResult"><%#Eval("Name")%></asp:LinkButton>
                                                </li>
                                                <%--    <li class="nav-item">
                                                <a class="nav-link" id="pills-search-tab3" data-toggle="pill" href="#pills-search3" role="tab" aria-controls="pills-search3" aria-selected="false">Enr. Date</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="pills-search-tab4" data-toggle="pill" href="#pills-search4" role="tab" aria-controls="pills-search4" aria-selected="false">Rating</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="A16" data-toggle="pill" href="#pills-search4" role="tab" aria-controls="pills-search4" aria-selected="false">Newest</a>
                                            </li>--%>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </ul>
                                    <div class="sortby">
                                        <div class="dropdown show">
                                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                <a class="dropdown-item" href="#">Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <div class="tab-content" id="search-tabContent">
                                    <!--Tab 1 Content Begins-->
                                    <div class="tab-pane fade show active" id="pills-search1" role="tabpanel" aria-labelledby="pills-search-tab1">
                                        <div class="search-error" id="DivSearchErrMsg2" runat="server" visible="false">
                                            <h5>We couldn’t find any results for your search:</h5>
                                        </div>
                                        <asp:Repeater runat="server" ID="RptrSearchResults">
                                            <ItemTemplate>
                                                <div class="search-tile-holder">
                                                    <div class="search-single-tile d-flex align-items-end">
                                                        <div class="search-img">
                                                            <h5><%#Eval("Name").ToString().Length >= 24 ? Eval("Name").ToString().Substring(0, 22)+"..." : Eval("Name").ToString()%></h5>
                                                            <img src="../Assets/img/search-tile-img.jpg">
                                                        </div>
                                                        <div class="search-info">
                                                            <h4>Lorem ipsum dolor | sit amet - consectetur</h4>
                                                            <h5>Lorem ipsum dolor sit amet,</h5>
                                                            <h6>Quick support for your needs</h6>
                                                            <div>
                                                                <div class="search-p-tag">
                                                                    <p>1 Weeks | 18 April 2021</p>
                                                                    <p>Abhilash V Pandiankal</p>
                                                                </div>
                                                                <a class="search-tile-btn" href="#">View<i class="fa fa-long-arrow-right"></i></a>
                                                                <div class="clear"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <%--  <div class="search-tile-holder">
                                        <div class="search-single-tile d-flex align-items-end">
                                            <div class="search-img">
                                                <h5>Mathematics</h5>
                                                <img src="../Assets/img/search-tile-img.jpg">
                                            </div>
                                            <div class="search-info">
                                                <h4>Lorem ipsum dolor | sit amet - consectetur</h4>
                                                <h5>Lorem ipsum dolor sit amet,</h5>
                                                <h6>Quick support for your needs</h6>
                                                <div>
                                                    <div class="search-p-tag">
                                                        <p>1 Weeks | 18 April 2021</p>
                                                        <p>Abhilash V Pandiankal</p>
                                                    </div>
                                                    <a class="search-tile-btn" href="#">View<i class="fa fa-long-arrow-right"></i></a>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="search-tile-holder">
                                        <div class="search-single-tile d-flex align-items-end">
                                            <div class="search-img">
                                                <h5>Mathematics</h5>
                                                <img src="../Assets/img/search-tile-img.jpg">
                                            </div>
                                            <div class="search-info">
                                                <h4>Lorem ipsum dolor | sit amet - consectetur</h4>
                                                <h5>Lorem ipsum dolor sit amet,</h5>
                                                <h6>Quick support for your needs</h6>
                                                <div>
                                                    <div class="search-p-tag">
                                                        <p>1 Weeks | 18 April 2021</p>
                                                        <p>Abhilash V Pandiankal</p>
                                                    </div>
                                                    <a class="search-tile-btn" href="#">View<i class="fa fa-long-arrow-right"></i></a>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                    </div>
                                    <!--Tab 1 Content Ends-->
                                </div>
                                <!--Search tabs ends-->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--Academy Courses Ends-->

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

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

