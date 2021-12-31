<%@ page title="" language="C#" masterpagefile="~/MasterPages/OrgMaster.master" autoeventwireup="true" inherits="CommonPages_OrgNews, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--News Title Begins-->
    <section class="mt-5">
        <div class="container">
            <h3 class="news-title">News <span>& Updates</span></h3>
        </div>
    </section>
    <!--News Title Ends-->

    <!--Organization Bottom Begins-->
    <section class="py-5">
        <div class="container">
            <div class="row">
            <asp:Repeater runat="server" ID="RptrNews" OnItemDataBound="RptrNews_ItemDataBound">
            <ItemTemplate>
                <div class="col-md-4">
                    <div class="single-news mb-4">
                        <img src='<%# FnSetFilePathOnly(Eval("cSection1Image").ToString()) %>' />
                        <h6><%#Eval("cSection1Heading")%></h6>
                        <p><asp:Label ID="LblDesc" runat="server"></asp:Label></p>
                        <div class="news-btn">
                            <a href="#">View</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            </asp:Repeater>
            </div>
        </div>
    </section>
    <!--Organization Bottom Ends-->


    <script>
        $(document).ready(function () {
            $('#menunews').addClass('active');
        });
    </script>

</asp:Content>

