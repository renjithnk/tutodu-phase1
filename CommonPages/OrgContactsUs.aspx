<%@ page title="" language="C#" masterpagefile="~/MasterPages/OrgMaster.master" autoeventwireup="true" inherits="CommonPages_OrgContactsUs, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Organization Slider Begins-->
    <section id="organization-img">
        <img src="../Assets/img/organization-contact.jpg" id="ImgSrcHdr" runat="server" />
    </section>
    <!--Organization Slider Ends-->

    <!--Organization Bottom Begins-->
    <section class="py-5 mt-3">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="org-form mb-4">
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
                        <div class="lr-button-holder d-flex align-items-center justify-content-center">
                            <div class="org-login">
                                <a href="">Login</a>
                            </div>
                            <div class="org-register">
                                <a href="">Register</a>
                            </div>
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


    <script>
        $(document).ready(function () {
            $('#menucontact').addClass('active');
        });
    </script>

</asp:Content>

