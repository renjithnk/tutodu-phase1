<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="CMSORG_HomePage, App_Web_y5af3nvc" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register TagPrefix="cc" Namespace="Winthusiasm.HtmlEditor" Assembly="Winthusiasm.HtmlEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        #ContentPlaceHolder1_TxtHeaddingDesc_ctl02 
        {
            width: 1100px !important;
            height: 1px !important;
            background-color: #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            margin-top: 1px;
            padding-bottom: 0px;
            padding-top: 3px;
            display: block;
        }
          #ContentPlaceHolder1_TxtHeaddingDesc_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TxtHeaddingDesc_contentHtml 
        {
            width: 1100px !important;
            height: 230px !important;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: block;
        }
        </style>
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
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Headding Main</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtHeaddingHdr" runat="server" TextMode="SingleLine" SkinID="TxtForCtrlSngl"  />
                            </div>
                        </div>
                    </div>                   
                </div>
                <div class="row">
                <div class="col-md-12">
                <div class="form-group">
                    <label><b>Headding Description</b></label>
                    <div class="input-group">
                        <cc:HtmlEditor ID="TxtHeaddingDesc" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
                    </div>
                </div>
                </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Public Description</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtPublicDesc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                         <div class="form-group">
                            <label><b>Private Description </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtPrivateDesc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Contact Number 1 </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtContactNo1" runat="server" SkinID="TxtForCtrlSngl"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Contact Number 2 </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtContactNo2" runat="server"  SkinID="TxtForCtrlSngl"  />
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Location Map </b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtLocationMap" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Address ( </b></label>
                            <i class="RedColorAssign">Size:1000KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                               <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
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

