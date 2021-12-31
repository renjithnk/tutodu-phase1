<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" inherits="CommonPages_ResourceLibDet, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Academy Introduction Begins-->
    <section id="course-intro" class="pt-md-5 py-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="course-brief">
                        <h4 id="H4CrsName" runat="server">Machine Learning</h4>
                        <div class="cbrief-info">
                            <img id="ImgCourse" runat="server" src="../Assets/img/resource-top-img.jpg"/>
                            <div class="col">
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
                                <div class="cbrief-students">
                                    <p>1294 Students</p>
                                </div>
                                <div class="cbrief-instructor">
                                    <p>Author : <span id="SpnTutor" runat="server">Jibin Micheal</span></p>
                                </div>
                            </div>
                            
                            
                        </div>                          
                    </div>                    
                </div>
                
            </div>
        </div>
    </section>
    <!--Academy Introduction Ends-->

    <!--Course details begins-->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-12">
                    <div class="row course-details-tile no-gutters">
                        <div class="col-md-12">
                            <h6>Contents</h6>
                            <br /><br />
                            <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                            <iframe runat="server" visible="false" id="IframeMODAL" class="embed-responsive-item" style="width: 100%;height:100%;"></iframe>
                             <video id="VideoMODAL" runat="server" style="width:100%;height:100%;" src='<%# Eval("cSection5Video1") %>' controls></video>                          
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Course details ends-->

</asp:Content>
