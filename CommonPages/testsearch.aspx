<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" inherits="CommonPages_testsearch, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <style>
        #search-toggle button {
            color: #fff;
            display: block;
            width: 100%;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Academy Introduction Begins-->
    <section id="search-intro" class="pt-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="search-display">
                            <h3>You're searching for - <span>Mathematics</span></h3>
                        </div>
                        <div class="search-error">
                            <h5>We couldn’t find results for your search:</h5>
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

    <!--Mobile Search Begins-->
    <section class="mobile-search">
        <div class="row">
            <div class="container">
                <div class="search-section">
                    <div class="mb-2">
                        <div class="filterby">
                            <a class="btn btn-secondary" href="#" data-toggle="modal" data-target="#search-modal">
                                <h4>Filter <span><i class="fa fa-sort"></i></span></h4>
                            </a>
                            <div class="modal fade" id="search-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="search-left py-4">
                                            <div class="search-close">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                                <div class="clear"></div>
                                            </div>
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
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox1" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox2" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                                    </div>
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
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox3" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox4" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox5" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                                    </div>
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
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox6" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox7" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox8" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                                    </div>
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
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox9" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox10" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox11" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                                    </div>
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
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox12" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox13" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                                    </div>
                                                                    <div>
                                                                        <input class="form-check-input" type="checkbox" id="Checkbox14" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                                    </div>
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
                                                            <input id="ex2" type="text" class="span2" value="" data-slider-min="10" data-slider-max="1000" data-slider-step="5" data-slider-value="[0,1000]" />
                                                            <div class="range-label">
                                                                <div class="min-value">Rs. 10</div>
                                                                <div class="max-value">Rs. 1000</div>
                                                                <div class="clear"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--fee ends-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="sortby">
                            <div class="dropdown show">
                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a class="dropdown-item" href="#">Relevant</a>
                                    <a class="dropdown-item" href="#">Newest</a>
                                    <a class="dropdown-item" href="#">High rated</a>
                                    <a class="dropdown-item" href="#">Fee</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-content" id="search-tabContent">
                        <!--Tab 1 Content Begins-->
                        <div class="tab-pane fade show active" id="pills-search1" role="tabpanel" aria-labelledby="pills-search-tab1">
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
                            </div>
                        </div>
                        <!--Tab 1 Content Ends-->
                        <!--Tab 2 Content Begins-->
                        <div class="tab-pane fade" id="pills-search2" role="tabpanel" aria-labelledby="pills-search-tab2">
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
                            </div>
                        </div>
                        <!--Tab 2 Content Ends-->
                        <!--Tab 3 Content Begins-->
                        <div class="tab-pane fade" id="pills-search3" role="tabpanel" aria-labelledby="pills-search-tab3">
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
                            </div>
                        </div>
                        <!--Tab 3 Content Ends-->
                        <!--Tab 4 Content Begins-->
                        <div class="tab-pane fade" id="pills-search4" role="tabpanel" aria-labelledby="pills-search-tab4">
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
                            </div>
                        </div>
                        <!--Tab 4 Content Ends-->
                    </div>
                    <!--Search tabs ends-->
                </div>
            </div>
        </div>
    </section>
    <!--Mobile Search Ends-->

    <!--Search Section Begins-->
    <section class="desktop-search">
        <div class="container">
            <div class="search-content-holder mb-5">
                <div class="row">
                    <div class="col-md-4 col-lg-3">
                        <div class="search-left py-4">
                            <h4>Filter <span><i class="fa fa-sort"></i></span></h4>
                            <div class="accordion" id="Div5">

                                <!--language begins-->
                                <div class="card">
                                    <div class="card-header" id="Div6">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#language-toggle" aria-expanded="true" aria-controls="collapseOne">
                                                Language
                                            </button>
                                        </h2>
                                    </div>

                                    <div id="Div7" class="collapse show" aria-labelledby="language-head" data-parent="#search-toggle" style="">
                                        <div class="card-body">
                                            <nav>
                                                <div class="nav nav-tabs" id="Div8" role="tablist">
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox15" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox16" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox17" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                    </div>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <!--language ends-->

                                <!--category begins-->
                                <div class="card">
                                    <div class="card-header" id="Div9">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#category-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                Category
                                            </button>
                                        </h2>
                                    </div>

                                    <div id="Div10" class="collapse" aria-labelledby="category-head" data-parent="#search-toggle" style="">
                                        <div class="card-body">
                                            <nav>
                                                <div class="nav nav-tabs" id="Div11" role="tablist">
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox18" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox19" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox20" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                    </div>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <!--category ends-->

                                <!--duration begins-->
                                <div class="card">
                                    <div class="card-header" id="Div12">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#duration-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                Duration
                                            </button>
                                        </h2>
                                    </div>

                                    <div id="Div13" class="collapse" aria-labelledby="duration-head" data-parent="#search-toggle" style="">
                                        <div class="card-body">
                                            <nav>
                                                <div class="nav nav-tabs" id="Div14" role="tablist">
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox21" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox22" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox23" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                    </div>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <!--duration ends-->

                                <!--level begins-->
                                <div class="card">
                                    <div class="card-header" id="Div15">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#level-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                Level
                                            </button>
                                        </h2>
                                    </div>

                                    <div id="Div16" class="collapse" aria-labelledby="level-head" data-parent="#search-toggle" style="">
                                        <div class="card-body">
                                            <nav>
                                                <div class="nav nav-tabs" id="Div17" role="tablist">
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox24" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox25" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox26" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                    </div>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <!--level ends-->

                                <!--organization begins-->
                                <div class="card">
                                    <div class="card-header" id="Div18">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#organization-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                Organization
                                            </button>
                                        </h2>
                                    </div>

                                    <div id="Div19" class="collapse" aria-labelledby="organization-head" data-parent="#search-toggle" style="">
                                        <div class="card-body">
                                            <nav>
                                                <div class="nav nav-tabs" id="Div20" role="tablist">
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox27" value="option1"><a class="nav-item nav-link" href="#">Subject Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox28" value="option1"><a class="nav-item nav-link" href="#">Language Combo Pack</a>
                                                    </div>
                                                    <div>
                                                        <input class="form-check-input" type="checkbox" id="Checkbox29" value="option1"><a class="nav-item nav-link" href="#">Crash Course</a>
                                                    </div>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <!--organization ends-->

                                <!--fee begins-->
                                <div class="card">
                                    <div class="card-header" id="Div21">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#fee-toggle" aria-expanded="false" aria-controls="collapseOne">
                                                Fee
                                            </button>
                                        </h2>
                                    </div>

                                    <div id="Div22" class="collapse" aria-labelledby="fee-head" data-parent="#search-toggle" style="">
                                        <div class="card-body">
                                            <input id="Text1" type="text" class="span2" value="" data-slider-min="10" data-slider-max="1000" data-slider-step="5" data-slider-value="[0,1000]" />
                                            <div class="range-label">
                                                <div class="min-value">Rs. 10</div>
                                                <div class="max-value">Rs. 1000</div>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--fee ends-->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-lg-9">
                        <!--Search tabs begins-->
                        <div>
                            <div class="sortby">
                                <div class="dropdown show">
                                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="A1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                        <a class="dropdown-item" href="#">Relevant</a>
                                        <a class="dropdown-item" href="#">Newest</a>
                                        <a class="dropdown-item" href="#">High rated</a>
                                        <a class="dropdown-item" href="#">Fee</a>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="tab-content" id="Div23">
                            <!--Tab 1 Content Begins-->
                            <div class="tab-pane fade show active" id="Div24" role="tabpanel" aria-labelledby="pills-search-tab1">
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
                                </div>
                            </div>
                            <!--Tab 1 Content Ends-->
                            <!--Tab 2 Content Begins-->
                            <div class="tab-pane fade" id="Div25" role="tabpanel" aria-labelledby="pills-search-tab2">
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
                                </div>
                            </div>
                            <!--Tab 2 Content Ends-->
                            <!--Tab 3 Content Begins-->
                            <div class="tab-pane fade" id="Div26" role="tabpanel" aria-labelledby="pills-search-tab3">
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
                                </div>
                            </div>
                            <!--Tab 3 Content Ends-->
                            <!--Tab 4 Content Begins-->
                            <div class="tab-pane fade" id="Div27" role="tabpanel" aria-labelledby="pills-search-tab4">
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
                                </div>
                            </div>
                            <!--Tab 4 Content Ends-->
                        </div>
                        <!--Search tabs ends-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Search Section Ends-->

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

