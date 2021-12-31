<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="CMS_AcademyPage, App_Web_gunrukzv" stylesheettheme="SkinFile" theme="SkinFile" %>
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
                            <label><b>Section 1 Description </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection1Desc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 1 Image ( </b></label>
                            <i class="RedColorAssign">Width:600px,Height:255px,Size:50KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                                <ajaxtoolkit:asyncfileupload ID="FileSection1Image" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection1Image_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkSection1Image" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Academy Course Description</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtAcdemyDesc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Organization Description</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtOrgnizationDesc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">                    
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 3 Description</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection3Desc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 3 Image ( </b></label>
                            <i class="RedColorAssign">Width:600px,Height:255px,Size:50KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                             <ajaxtoolkit:asyncfileupload ID="FileSection3Image" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection3Image_UploadedComplete" />
                              <span class="input-group-text"><asp:HyperLink ID="HyLnkSection3Image" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">  
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 4 Description</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection4Desc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 4 Image ( </b></label>
                            <i class="RedColorAssign">Width:300px,Height:300px,Size:50KB </i><label><b> )</b></label>
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
                            <label><b>Faq Description </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtFaqDesc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Register Now Image( </b></label>
                            <i class="RedColorAssign">Width:150px,Height:150px,Size:50KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <ajaxtoolkit:asyncfileupload ID="FileRegisterNow" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileRegisterNow_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkRegisterNow" runat="server" Target="_blank" ></asp:HyperLink></span>
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

