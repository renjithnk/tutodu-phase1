<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_ModulePage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>
<%@ Register TagPrefix="cc" Namespace="Winthusiasm.HtmlEditor" Assembly="Winthusiasm.HtmlEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        #ContentPlaceHolder1_TabContainer1_TabPanel3_TxtContentDetails_ctl02 
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
          #ContentPlaceHolder1_TabContainer1_TabPanel3_TxtContentDetails_contentText 
        {
            width: 1100px !important;
            height: 230px;
            border: solid 2px #7F9DB9;
            position: relative;
            left: 0px;
            top: 0px;
            display: none;
        }
          #ContentPlaceHolder1_TabContainer1_TabPanel3_TxtContentDetails_contentHtml 
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
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="2">
            <ajaxToolkit:TabPanel runat="server" HeaderText="WEEK DETAILS" ID="TabPanel1">
            <ContentTemplate>
           <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                    <div class="panel panel-body">
                    <div class="form-group">
                        <label><b>Week Details</b></label>
                        <div class="input-group">
                            <asp:TextBox runat="server" ID="TxtWeekName" placeholder="Week 1,Start Date" SkinID="TxtForCtrlSngl" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label><b>Duration</b></label>
                        <div class="input-group">
                            <asp:TextBox runat="server" ID="TxtDuration" placeholder="Duration" SkinID="TxtForCtrlSngl" />
                            <asp:DropDownList runat="server" ID="DdlDuration" placeholder="Duration" SkinID="DdlDurationType" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label><b>Remarks</b></label>
                        <div class="input-group">
                            <asp:TextBox runat="server" ID="TxtRemarks" placeholder="Remarks" TextMode="MultiLine" SkinID="TxtForCtrlMul70" />
                            </div>
                    </div>
                    <uc1:ctrlcommand ID="CtrlCommand1" runat="server" IsVisibleFind="true" />
                    </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-body">
                                                      <asp:GridView ID="GrdRecords" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                                                          OnSelectedIndexChanging="GrdRecords_SelectedIndexChanging" OnPageIndexChanging="GrdRecords_PageIndexChanging" OnRowDataBound="GrdRecords_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Week">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Duration">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblDuration" runat="server" Text='<%# Eval("Code") %>' SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Remarks">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblDesc" runat="server" Text='' SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("Id")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                         
                        </div>
                    </div>
                </div>
            </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" HeaderText="CHAPTER / UNIT / MODULE DETAILS" ID="TabPanel2">
            <ContentTemplate>
           <div class="card-body">
               <div class="row">
                    <div class="col-md-6">
                    <div class="panel panel-body">
                    <div class="form-group">
                        <label><b>Chapter Details</b></label>
                        <div class="input-group">
                            <asp:TextBox runat="server" ID="TxtChapter" placeholder="Chapter Details" SkinID="TxtForCtrlSngl" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label><b>Remarks</b></label>
                        <div class="input-group">
                            <asp:TextBox runat="server" ID="TxtChptrRemarks" placeholder="Remarks" TextMode="MultiLine" SkinID="TxtForCtrlMul" />
                            </div>
                    </div>
                    <uc1:ctrlcommand ID="CtrlCommandChapter" runat="server" IsVisibleFind="true" />
                    </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-body">
                                                      <asp:GridView ID="GrdVwChapter" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                                                          OnSelectedIndexChanging="GrdVwChapter_SelectedIndexChanging" OnPageIndexChanging="GrdVwChapter_PageIndexChanging" OnRowDataBound="GrdVwChapter_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Chapter">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Remarks">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblDesc" runat="server" Text='' SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("Id")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                         
                        </div>
                    </div>
                </div>
            </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" HeaderText="CONTENT DETAILS" ID="TabPanel3">
            <ContentTemplate>
            <div class="cardTab">
                        <div class="row">
                             <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Content Title</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtContent" placeholder="Content Title" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Week</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" ID="DdlWeek" SkinID="DdlNormal" ></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Chapter</b></label>
                                    <div class="input-group">
                                       <asp:DropDownList runat="server" ID="DdlChapter" SkinID="DdlNormal" ></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                              <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Content Type</b></label>
                                    <div class="input-group">
                                         <asp:DropDownList runat="server" ID="DdlContentType" SkinID="DdlModultContent" />
                                    </div>
                                </div>
                            </div>
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Document Upload</b></label>
                                    <div class="input-group">
                                     <ajaxtoolkit:asyncfileupload ID="FileUpldDoc" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldDoc_UploadedComplete" FailedValidation="False" />
                                     <span class="input-group-text"><asp:HyperLink ID="HyLnkDoc" runat="server" Target="_blank" ></asp:HyperLink></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Document URL</b></label>
                                    <div class="input-group">
                                         <asp:TextBox runat="server" ID="TxtDocUrl" placeholder="Document URL" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                             <div class="col-md-12">
                                <div class="form-group">
                                    <label><b>Content Details</b></label>
                                    <div class="input-group">
                                        <cc:HtmlEditor ID="TxtContentDetails" runat="server" Height="300px" Width="1100px" BackColor="White" ButtonMouseOverBorderColor="49, 106, 197" ButtonMouseOverColor="193, 210, 238" ContextChanged="" DialogBackColor="GhostWhite" DialogBorderColor="Black" DialogButtonBarColor="LightSteelBlue" DialogForeColor="Black" DialogHeadingColor="LightSteelBlue" DialogHeadingTextColor="Black" DialogSelectedTabColor="127, 157, 185" DialogSelectedTabTextColor="White" DialogTableColor="238, 238, 238" DialogTabTextColor="Black" DialogUnselectedTabColor="LightSteelBlue" EditorBackColor="White" EditorBorderColor="127, 157, 185" EditorForeColor="Black" EditorInnerBorderColor="Gray" ModifiedChanged="" SaveButtons="" SelectedTabBackColor="127, 157, 185" SelectedTabTextColor="White" TabBackColor="LightSteelBlue" TabbarBackColor="White" TabForeColor="Black" TabMouseOverColor="LightBlue" Text="" ToolbarColor="127, 157, 185" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-right">
                            <uc1:CtrlCommand ID="CtrlCommandContent" runat="server" />
                        </div>
                    </div>    
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" HeaderText="CONTENT LIST" ID="TabPanel4">
            <ContentTemplate>
             <div class="col-md-6">
             <div class="panel panel-body" style="height:340px;">
                                                      <asp:GridView ID="GrdVwContent" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                                                          OnSelectedIndexChanging="GrdVwContent_SelectedIndexChanging" OnPageIndexChanging="GrdVwContent_PageIndexChanging" OnRowDataBound="GrdVwContent_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblSl" runat="server" Text='<%# Container.DataItemIndex + 1 %>' Width="50px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Content Title">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Width="300px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Week">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("CourseWeekName") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Chapter">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblChptr" runat="server" Text='<%# Eval("CourseChapterName") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Content Type">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ModuleType") %>' Width="100px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("Id")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                         
                        </div>
             </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </div>
        </div>
</asp:Content>

