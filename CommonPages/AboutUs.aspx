<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" inherits="CommonPages_AboutUs, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Academy Introduction Begins-->
    <section id="academy-intro" class="py-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="search-display">
                            <h3>About <span>TUTODU</span></h3>
                        </div>
                        <p class="mt-3">Tutodu is a new generation online distributed learning platform aiming to provide
multi-dimensional education through its three main verticals: Tutodu Academy,
Tutodu Tutoring Center, and Tutodu On Demand. Tutodu offers elementary level
tuition classes to Graduate level courses to students and allows teachers, training
centers, schools, and universities to effectively use our customized platform to
deliver their courses and support their students.</p>
                    </div>
                    <div class="col-md-5">
                        <img src="../Assets/img/search-intro-img.jpg">
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
                        <img src="../Assets/img/news.jpg">
                    </div>
                    <div class="col-md-8">
                        <p class="mt-3">Member institutions can share or
deliver courses while students can access courses from any institution in addition to
their home institution as a guest student and teachers can teach in multiple
institutions as guest in addition to their home institution. Institutions can also share
their knowledgebase by sharing their resources through our centralized online
resource library.Academy (Public) provides a listing of all public courses, offered by various
institutions, that can be accessed by the students. These courses can range from
short-term free training courses to long-term certificate or degree courses.</p>
                        <p class="mt-3"></p>
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
                        <div class="owl-carousel owl-theme acad-faq-carousel mb-4">
                            <div class="item">
                                <p>Can I Take A Demo Lecture?</p>
                                <p>Yes, We allow you to take a demo lecture once you sign up on our website. You will
be able to take a demo lecture from any course that you want.</p>
                            </div>
                            <div class="item">
                                <p>How do I contact my Instructor?</p>
                                <p>You can get in touch and communicate with your instructors in more than one way. The easiest way is to use our communication dashboard that you will get once you enroll in a course. You can also use other means like email or WhatsApp depending upon the availability of your instructor.</p>
                            </div>
                            <div class="item">
                                <p>What Is The Average Course Duration?</p>
                                <p>The duration of each course varies depending upon the number of lectures and course contents. Also, this is a learn at your own pace platform; therefore, the course completion time totally depends upon the students.</p>
                            </div>
                            <div class="item">
                                <p>What Payment Options Do You Have?</p>
                                <p>For the ease of our students, Tutodu Academy supports more than one payment
option. You can use our website’s online payment option, where you can pay using your debit card, or there are multiple wallet options where you pay using an e-wallet. Once your payment is confirmed, you will be granted immediate access to your desire course. Once you have paid for a course, you can have it for a lifetime and
watch it wherever you want.</p>
                            </div>
                        </div>
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
