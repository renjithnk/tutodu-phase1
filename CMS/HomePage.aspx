<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="CMS_HomePage, App_Web_gunrukzv" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content">

        <div class="card">
            <%--  <div class="card-header header-elements-inline">
                <h5 class="card-title"><b>Profile</b></h5>
                <div class="header-elements">
                    <div class="list-icons">
                        <a class="list-icons-item" data-action="collapse"></a>
                        <a class="list-icons-item" data-action="reload"></a>
                        <a class="list-icons-item" data-action="remove"></a>
                    </div>
                </div>
            </div>--%>

            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Logo ( </b></label>
                            <i class="RedColorAssign">Width:267px,Height:65px,Size:10KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileUploadLogo" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUploadLogo_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkUploadLogo" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Slider 1 ( </b></label>
                            <i class="RedColorAssign">Width:960px,Height:1920px,Size:70KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                                <ajaxtoolkit:asyncfileupload ID="FileSlider1" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSlider1_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkSlider1" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Slider 2 ( </b></label>
                            <i class="RedColorAssign">Width:960px,Height:1920px,Size:70KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileSlider2" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSlider2_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkSlider2" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Slider 3 ( </b></label>
                            <i class="RedColorAssign">Width:960px,Height:1920px,Size:70KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                           <ajaxtoolkit:asyncfileupload ID="FileSlider3" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSlider3_UploadedComplete" />
                           <span class="input-group-text"><asp:HyperLink ID="HyLnkSlider3" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Popular Course Description</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtPopularCourse" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 3 Description</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection3Desc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 3 Image ( </b></label>
                            <i class="RedColorAssign">Width:1100px,Height:300px,Size:50KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                             <ajaxtoolkit:asyncfileupload ID="FileSection3Image" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection3Image_UploadedComplete" />
                              <span class="input-group-text"><asp:HyperLink ID="HyLnkSection3" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Partnering Organizations Background Image ( </b></label>
                            <i class="RedColorAssign">Width:780px,Height:450px,Size:50KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileSection4BackIng" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection4BackIng_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkSection4BackImage" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Partnering Organizations Description</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection4Desc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Partnering Organizations Image ( </b></label>
                            <i class="RedColorAssign">Width:600px,Height:251px,Size:30KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileSection4Image" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection4Image_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkSection4Image" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>News & Updates Description-1 </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection5Desc1" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>News & Updates Image -1 ( </b></label>
                            <i class="RedColorAssign">Width:300px,Height:300px,Size:30KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileSection5Image1" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection5Image1_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkSection5Image1" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>News & Updates Description -2 </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection5Desc2" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>>News & Updates Image -2 ( </b></label>
                            <i class="RedColorAssign">Width:300px,Height:300px,Size:30KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileSection5Image2" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection5Image2_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkSection5Image2" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>>News & Updates Video Descrition -1 </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection5VideoDesc1" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>>News & Updates Video -1 ( </b></label>
                            <i class="RedColorAssign">Size:1000KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileSection5Video1" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection5Video1_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkSection5Video1" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>>News & Updates Video Descrition -2 </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection5VideoDesc2" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>News & Updates Video -2 ( </b></label>
                            <i class="RedColorAssign">Size:1000KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileSection5Video2" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection5Video2_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkSection5Video2" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                  <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 6 Descrition  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection6Desc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 6 Image ( </b></label>
                            <i class="RedColorAssign">Width:630px,Height:630px,Size:70KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileSection6Image" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection6Image_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkSection6Image" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 7 Descrition  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection7Desc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 7 Image ( </b></label>
                            <i class="RedColorAssign">Width:150px,Height:150px,Size:50KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileSection7Image" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection7Image_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkSection7Image" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Top Course -1  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtTopCourse1" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Top Course -2</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtTopCourse2" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Top Course -3  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtTopCourse3" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Top Course -4</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtTopCourse4" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Top Course -5  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtTopCourse5" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Top Course -6</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtTopCourse6" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Top Course -7  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtTopCourse7" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Top Course -8</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtTopCourse8" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>New Course -1  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtNewCourse1" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>New Course -2</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtNewCourse2" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>New Course -3  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtNewCourse3" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>New Course -4</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtNewCourse4" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>New Course -5  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtNewCourse5" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>New Course -6</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtNewCourse6" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>New Course -7  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtNewCourse7" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>New Course -8</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtNewCourse8" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Help & Support -1  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtHelp1" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Help & Support -2</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtHelp2" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Help & Support -3  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtHelp3" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Help & Support -4</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtHelp4" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Help & Support -5  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtHelp5" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Help & Support -6</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtHelp6" runat="server" TextMode="SingleLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Get In Touch  </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtGetInTouch" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Social Media</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSocialMedia" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Mobile App - 1  </b></label>
                            <i class="RedColorAssign">Width:500px,Height:175px,Size:30KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileMobApp1" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileMobApp1_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkMobApp1" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Mobile App - 2 </b></label>
                            <i class="RedColorAssign">Width:500px,Height:175px,Size:30KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileMobApp2" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileMobApp2_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkMobApp2" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="text-left">
                    <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

