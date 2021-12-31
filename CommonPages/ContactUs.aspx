<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" inherits="CommonPages_ContactUs, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Organization Slider Begins-->
    <section id="organization-img">
        <img src="../Assets/img/organization-contact.jpg">
    </section>
    <!--Organization Slider Ends-->

    <!--Organization Bottom Begins-->
    <section class="py-5 mt-3">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="org-form mb-4">
                        <h5>Contact</h5>
                        <input name="" type="text" placeholder="Name" id="" class="form-control">
                        <input name="" type="text" placeholder="Mail ID" id="Text1" class="form-control">
                        <input name="" type="text" placeholder="Contact Number" id="Text2" class="form-control">
                        <input name="" type="text" placeholder="Message" id="Text3" class="form-control">
                        <a href="#">Submit</a>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="col-md-6">
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
                                        <p>+101-1231-41321</p>
                                    </div>
                                </div>
                                <div class="org-contact">
                                    <div class="org-icon">
                                        <i class="fa fa-envelope-o "></i>
                                    </div>
                                    <div>
                                        <p>+101-1231-41321</p>
                                    </div>
                                </div>
                                <div class="org-contact">
                                    <div class="org-icon">
                                        <i class="fa fa-map-marker"></i>
                                    </div>
                                    <div>
                                        <p>
                                            Address: Tutodu, 6928 Westcott Place, Clarksville,<br>
                                            Maryland 21029, U.S
                                            <br>
                                            Email: info@tutodu.com
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


    <script>
        $(document).ready(function () {
            $('#menucontact').addClass('active');
        });
    </script>

</asp:Content>

