<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="CMSORG_AboutUsPage, App_Web_y5af3nvc" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register TagPrefix="cc" Namespace="Winthusiasm.HtmlEditor" Assembly="Winthusiasm.HtmlEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        #ContentPlaceHolder1_TxtAboutUs_ctl02 
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
          #ContentPlaceHolder1_TxtAboutUs_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TxtAboutUs_contentHtml 
        {
            width: 1100px !important;
            height: 230px !important;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: block;
        }
        /*==============================        */
         #ContentPlaceHolder1_TxtSection1Desc_ctl02 
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
          #ContentPlaceHolder1_TxtSection1Desc_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TxtSection1Desc_contentHtml 
        {
            width: 1100px !important;
            height: 230px !important;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: block;
        }
          /*==============================        */
         #ContentPlaceHolder1_TxtFaqDesc_ctl02 
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
          #ContentPlaceHolder1_TxtFaqDesc_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TxtFaqDesc_contentHtml 
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
                            <label><b>Section 1 Image ( </b></label>
                            <i class="RedColorAssign">Width:600px,Height:255px,Size:50KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                                <ajaxtoolkit:asyncfileupload ID="FileSection1Image" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection1Image_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkSection1Image" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 2 Image ( </b></label>
                            <i class="RedColorAssign">Width:600px,Height:255px,Size:50KB </i><label><b> )</b></label>
                            <div class="input-group browse-parent">
                             <ajaxtoolkit:asyncfileupload ID="FileSection2Image" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection2Image_UploadedComplete" />
                              <span class="input-group-text"><asp:HyperLink ID="HyLnkSection2Image" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>About Us Description </b></label>
                            <div class="input-group">
                               <cc:HtmlEditor ID="TxtAboutUs" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
                            </div>
                        </div>
                    </div>                    
                </div>
             
                <div class="row">  
                     <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Section 2 Description</b></label>
                            <div class="input-group">
                              <cc:HtmlEditor ID="TxtSection1Desc" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Faq Description </b></label>
                            <div class="input-group">
                                 <cc:HtmlEditor ID="TxtFaqDesc" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
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

