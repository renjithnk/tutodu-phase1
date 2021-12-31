<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/CommonMasterNew.master" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" StylesheetTheme="SkinFile" Inherits="CommonPages_SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .checkbox .btn, .checkbox-inline .btn {
            padding-left: 2em;
            min-width: 8em;
        }

        .checkbox label, .checkbox-inline label 
        {
            font-size: 14px;
            text-align: left;
            padding-left: 1.1em;
            padding-right: 1.5em;
            color: #000;
        }

        .checkbox input[type="checkbox"] {
            float: none;
        }

        .checkboxmob .btn, .checkbox-inline .btn {
            padding-left: 2em;
            min-width: 8em;
        }

        .checkboxmob label, .checkbox-inline label {
            text-align: left;
            padding-left: 1.1em;
            padding-right: 1.5em;
            color: #000;
        }

        .checkboxmob input[type="checkbox"] {
            float: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
<ContentTemplate>
    <!--Academy Introduction Begins-->
    <section id="search-intro" class="pt-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-10">
                        <div class="search-display">
                            <h3>You're searching for - <asp:TextBox id="TxtSearchKey" runat="server" SkinID="TxtSearch" ></asp:TextBox><asp:LinkButton id="LnlSearch" runat="server" SkinID="LnkBtnSearch" OnClick="LnlSearch_Click" Text="Search" ></asp:LinkButton></h3>
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
                                                                        <asp:CheckBoxList ID="ChkBxLangMob" runat="server" CssClass="form-check-input checkboxmob" OnSelectedIndexChanged="ChkBxLangMob_SelectedIndexChanged" AutoPostBack="true">
                                                                        </asp:CheckBoxList>
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
                                                                        <asp:CheckBoxList ID="ChkBxCatMob" runat="server" CssClass="form-check-input checkboxmob" OnSelectedIndexChanged="ChkBxCatMob_SelectedIndexChanged" AutoPostBack="true">
                                                                        </asp:CheckBoxList>
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
                                                                        <asp:CheckBoxList ID="ChkBxDurMob" runat="server" CssClass="form-check-input checkboxmob" OnSelectedIndexChanged="ChkBxDurMob_SelectedIndexChanged" AutoPostBack="true">
                                                                        </asp:CheckBoxList>
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
                                                                        <asp:CheckBoxList ID="ChkBxLevelMob" runat="server" CssClass="form-check-input checkboxmob" OnSelectedIndexChanged="ChkBxLevelMob_SelectedIndexChanged" AutoPostBack="true">
                                                                        </asp:CheckBoxList>
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
                                                                        <asp:CheckBoxList ID="ChkBxOrgMob" runat="server" CssClass="form-check-input checkboxmob" OnSelectedIndexChanged="ChkBxOrgMob_SelectedIndexChanged" AutoPostBack="true">
                                                                        </asp:CheckBoxList>
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
                                                            <nav>
                                                                <div class="nav nav-tabs" id="Div5" role="tablist">
                                                                    <div>
                                                                        <asp:CheckBoxList ID="ChkBxFeeMob" runat="server" CssClass="form-check-input checkboxmob" OnSelectedIndexChanged="ChkBxFeeMob_SelectedIndexChanged" AutoPostBack="true">
                                                                        </asp:CheckBoxList>
                                                                    </div>
                                                                </div>
                                                            </nav>
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
                                    <asp:Repeater runat="server" ID="RptrSortItemsMob">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" CssClass="dropdown-item" runat="server"><%#Eval("Name")%></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-content" id="search-tabContent">
                        <!--Tab 1 Content Begins-->
                        <div class="tab-pane fade show active" id="pills-search1" role="tabpanel" aria-labelledby="pills-search-tab1">
                            <asp:Repeater runat="server" ID="RptrSearchResultsMob" OnItemDataBound="RptrSearchResultsMob_ItemDataBound">
                                <ItemTemplate>
                                    <div class="search-tile-holder">
                                        <div class="search-single-tile d-flex align-items-end">
                                            <div class="search-img">
                                                 <img class="image-placeholder" width="300px" height="150px" src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' alt="icon">
                                            </div>
                                            <div class="search-info">
                                                  <h5><asp:Label ID="LblName" runat="server" ></asp:Label></h5>
                                                <li><%#Convert.ToInt32( Eval("Duration"))+" "+Eval("DurationType")+" | "+Eval("StartDate", "{0: dd MMMM yyyy}")%></li>
                                                <li><%#Eval("AccAName")%></li>
                                                <li><%#Eval("Rating")%></li>
                                                <li><%#Eval("TotalNos")%></li>
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
                        <!--Tab 1 Content Ends-->
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
                                <div class="accordion" id="search-toggledesk">

                                    <!--language begins-->
                                    <div class="card">
                                        <div class="card-header" id="language-head">
                                            <h2 class="mb-0">
                                                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#language-toggledesk" aria-expanded="true" aria-controls="collapseOne">
                                                    Language
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="language-toggledesk" class="collapse show" aria-labelledby="language-head" data-parent="#search-toggledesk" style="">
                                            <div class="card-body">
                                                <nav>
                                                    <div class="nav nav-tabs" id="course-menu" role="tablist">
                                                        <div>
                                                            <asp:CheckBoxList ID="ChkBxLang" OnSelectedIndexChanged="ChkBxLang_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="form-check-input checkbox">
                                                            </asp:CheckBoxList>
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
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#category-toggledesk" aria-expanded="false" aria-controls="collapseOne">
                                                    Category
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="category-toggledesk" class="collapse" aria-labelledby="category-head" data-parent="#search-toggledesk" style="">
                                            <div class="card-body">
                                                <nav>
                                                    <div class="nav nav-tabs" id="Div1" role="tablist">
                                                        <div>
                                                            <asp:CheckBoxList ID="ChkBxCat" runat="server" CssClass="form-check-input checkbox" OnSelectedIndexChanged="ChkBxCat_SelectedIndexChanged" AutoPostBack="true">
                                                            </asp:CheckBoxList>
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
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#duration-toggledesk" aria-expanded="false" aria-controls="collapseOne">
                                                    Duration
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="duration-toggledesk" class="collapse" aria-labelledby="duration-head" data-parent="#search-toggledesk" style="">
                                            <div class="card-body">
                                                <nav>
                                                    <div class="nav nav-tabs" id="Div2" role="tablist">
                                                        <div>
                                                            <asp:CheckBoxList ID="ChkBxDur" runat="server" CssClass="form-check-input checkbox" OnSelectedIndexChanged="ChkBxDur_SelectedIndexChanged" AutoPostBack="true">
                                                            </asp:CheckBoxList>
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
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#level-toggledesk" aria-expanded="false" aria-controls="collapseOne">
                                                    Level
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="level-toggledesk" class="collapse" aria-labelledby="level-head" data-parent="#search-toggledesk" style="">
                                            <div class="card-body">
                                                <nav>
                                                    <div class="nav nav-tabs" id="Div3" role="tablist">
                                                        <div>
                                                            <asp:CheckBoxList ID="ChkBxLevel" runat="server" CssClass="form-check-input checkbox" OnSelectedIndexChanged="ChkBxLevel_SelectedIndexChanged" AutoPostBack="true">
                                                            </asp:CheckBoxList>
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
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#organization-toggledesk" aria-expanded="false" aria-controls="collapseOne">
                                                    Organization
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="organization-toggledesk" class="collapse" aria-labelledby="organization-head" data-parent="#search-toggledesk" style="">
                                            <div class="card-body">
                                                <nav>
                                                    <div class="nav nav-tabs" id="Div4" role="tablist">
                                                        <div>
                                                            <asp:CheckBoxList ID="ChkBxOrg" runat="server" CssClass="form-check-input checkbox" OnSelectedIndexChanged="ChkBxOrg_SelectedIndexChanged" AutoPostBack="true">
                                                            </asp:CheckBoxList>
                                                        </div>
                                                    </div>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                    <!--organization ends-->

                                    <!--Currency begins-->
                                    <div class="card">
                                        <div class="card-header" id="currency-head">
                                            <h2 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#Currency-toggledesk" aria-expanded="false" aria-controls="collapseOne">
                                                    Currency
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="Currency-toggledesk" class="collapse" aria-labelledby="currency-head" data-parent="#search-toggledesk" style="">
                                            <div class="card-body">
                                                <nav>
                                                    <div class="nav nav-tabs" id="Div9" role="tablist">
                                                        <div>
                                                            <asp:CheckBoxList ID="ChkBxCurrency" runat="server" CssClass="form-check-input checkbox" OnSelectedIndexChanged="ChkBxCurrency_SelectedIndexChanged" AutoPostBack="true">
                                                            </asp:CheckBoxList>
                                                        </div>
                                                    </div>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Currency ends-->

                                    <!--fee begins-->
                                    <div class="card">
                                        <div class="card-header" id="fee-head">
                                            <h2 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#fee-toggledesk" aria-expanded="false" aria-controls="collapseOne">
                                                    Fee
                                                </button>
                                            </h2>
                                        </div>

                                        <div id="fee-toggledesk" class="collapse" aria-labelledby="fee-head" data-parent="#search-toggledesk" style="">
                                            <div class="card-body">
                                                <nav>
                                                    <div class="nav nav-tabs" id="Div6" role="tablist">
                                                        <div>
                                                            <asp:CheckBoxList ID="ChkBxFee" runat="server" CssClass="form-check-input checkbox" OnSelectedIndexChanged="ChkBxFee_SelectedIndexChanged" AutoPostBack="true">
                                                            </asp:CheckBoxList>
                                                        </div>
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
                            <div>
                                <div class="sortby">
                                    <div class="dropdown show">
                                        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                            <asp:Repeater runat="server" ID="RptrSortItems">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" CssClass="dropdown-item" runat="server"><%#Eval("Name")%></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:Repeater>
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
                                    <asp:Repeater runat="server" ID="RptrSearchResults" OnItemDataBound="RptrSearchResults_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="search-tile-holder">
                                                <div class="search-single-tile d-flex align-items-end">
                                                    <div class="search-img">
                                                            <img class="image-placeholder" width="300px" height="150px" src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' alt="icon">
                                                    </div>
                                                    <div class="search-info">
                                                    <h5><asp:Label ID="LblName" runat="server" ></asp:Label></h5>
                                                    <li><%#Convert.ToInt32( Eval("Duration"))+" "+Eval("DurationType")+" | "+Eval("StartDate", "{0: dd MMMM yyyy}")%></li>
                                                    <li><%#Eval("AccAName")%></li>
                                                    <li><%#Eval("Rating")%></li>
                                                    <li><%#Eval("TotalNos")%></li>
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
                                <!--Tab 1 Content Ends-->
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
                <asp:Repeater runat="server" ID="RptRelatedSrch" OnItemDataBound="RptRelatedSrch_ItemDataBound">
                <ItemTemplate>
                    <div class="search-tile-holder">
                    <div class="search-single-tile d-flex align-items-end">
                    <div class="search-img">
                    <img class="image-placeholder" width="300px" height="150px" src='<%# FnGetCourseImagePath(Eval("ImageLivePath")) %>' alt="icon">
                    </div>
                    <div class="search-info">
                    <h5><asp:Label ID="LblName" runat="server" ></asp:Label></h5>
                    <li><%#Convert.ToInt32( Eval("Duration"))+" "+Eval("DurationType")+" | "+Eval("StartDate", "{0: dd MMMM yyyy}")%></li>
                    <li><%#Eval("AccAName")%></li>
                    <li><%#Eval("Rating")%></li>
                    <li><%#Eval("TotalNos")%></li>
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

