<%@ page title="" language="C#" masterpagefile="~/MasterPages/OrgMaster.master" autoeventwireup="true" inherits="CommonPages_OrgAboutUs, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Academy Introduction Begins-->
    <section id="academy-intro" class="py-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="search-display">
                            <h3>About <span id="SpnAboutCmp" runat="server">TUTODU</span></h3>
                        </div>
                        <asp:Label ID="LblAbout" class="mt-3" runat="server" ></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <img src="../Assets/img/search-intro-img.jpg" id="ImgAboutDesc" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Academy Introduction Ends-->

    <!--Academy Section 3 Begins-->
    <section id="academy-sec3" class="py-5">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-4">
                        <img src="../Assets/img/news.jpg" id="ImgAboutNews" runat="server" />
                    </div>
                    <div class="col-md-8">
                        <asp:Label ID="LblDesc" class="mt-3" runat="server" ></asp:Label>
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
                              <asp:Label ID="LblFlag" runat="server" ></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--FAQ Ends-->


    <script>
        $(document).ready(function () {
            $('#menuabout').addClass('active');
        });
    </script>

</asp:Content>