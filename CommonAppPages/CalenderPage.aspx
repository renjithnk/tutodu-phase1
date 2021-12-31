    <%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_CalenderPage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
    <%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
    <%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>
    <%@ Register Src="~/CtrlTime.ascx" TagPrefix="uc1" TagName="CtrlTime" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language="javascript" type="text/javascript" src="Script/CalenderPage.js"></script>

    <div class="content">
        <div class="card">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
        <ajaxToolkit:TabPanel runat="server" HeaderText="Calender Add Events" ID="TabPanel1">
        <ContentTemplate>
        <div class="cardTab">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label><b>Calender Title </b></label>
                    <div class="input-group">
                    <asp:TextBox runat="server" ID="TxtTitle" placeholder="Calender Title" SkinID="TxtForCtrlSngl" />
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <label><b>Date</b></label>
                    <div class="input-group">
                    <uc1:CtrlDate runat="server" ID="TxtDate" />
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label><b>Event Type</b></label>
                    <div class="input-group">
                    <asp:DropDownList runat="server" ID="DdlEventTypeList" SkinID="DdlEventType" />
                    </div>
                </div>
            </div>                  
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                <label><b>Start Time</b></label>
                    <div class="input-group">
                        <uc1:ctrltime runat="server" ID="CtrlStartTime" />
                        </div>
                </div>
            </div>
        <div class="col-md-3">
            <div class="form-group">
                <label><b>End Time</b></label>
                <div class="input-group">
                        <uc1:ctrltime runat="server" ID="CtrlEndTime" />
                </div>
            </div>
        </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label><b>Event Location</b></label>
                    <div class="input-group">
                        <asp:DropDownList runat="server" ID="DdlEventLoc" SkinID="DdlEventLocation" />
                </div>
            </div>
            </div>      
        <div class="col-md-3">
            <div class="form-group">
                <label><b>Add Attendees</b></label>
                    <div class="input-group">
                        <asp:RadioButtonList runat="server" ID="RadBtStudent" SkinID="RadBtnAttendies" ></asp:RadioButtonList>
                        </div>
            </div>
        </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label><b>Attachment </b></label>
                    <div class="input-group">
                        <ajaxtoolkit:asyncfileupload ID="FileUpldDoc" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldDoc_UploadedComplete" FailedValidation="False" />
                        <span class="input-group-text"><asp:HyperLink ID="HyLnkDoc" runat="server" Target="_blank" ></asp:HyperLink>
                        </span>
                    </div>
                </div>
            </div>  
            <div class="col-md-6">
                <div class="form-group">
                    <label><b>Message Details</b></label>
                    <div class="input-group">
    <asp:TextBox runat="server" ID="TxtMessageDetails" placeholder="Message" SkinID="TxtForCtrlSngl" />
                </div>
                </div>
            </div>
        </div>
        <div class="text-right">
        <uc1:CtrlCommand ID="CtrlCommand1" runat="server" SaveIsEnabled="true" />
        </div>
        </div>
    </ContentTemplate>
    </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel runat="server" HeaderText="Calender Event List" ID="TabPanel2">
        <ContentTemplate>
                 <div class="cardTab">
                    <div class="row">
                        <div class="col-md-12">
        <div class="panel panel-body">
                        <asp:GridView ID="GrdRecords" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                            OnSelectedIndexChanging="GrdRecords_SelectedIndexChanging" OnPageIndexChanging="GrdRecords_PageIndexChanging"><Columns>
       <asp:TemplateField HeaderText="Date"><ItemTemplate>
                    <asp:Label ID="LabelTrDate" runat="server" Text='<%#Eval("TrDate","{0:dd MMM yyyy}") %>' Width="100px" SkinID="LblNormal"></asp:Label>
                
    </ItemTemplate>
    </asp:TemplateField>
                                <asp:TemplateField HeaderText="Calender Title"><ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Event Type"><ItemTemplate>
                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("EventType") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                
    </ItemTemplate>
    </asp:TemplateField>
 
    <asp:TemplateField HeaderText="Event Location"><ItemTemplate>
                    <asp:Label ID="LabelEndDate" runat="server" Text='<%#Eval("EventLocation") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Attendees" Visible="False" ><ItemTemplate>
                    <asp:Label ID="LblAttendees" runat="server" Text='<%#Eval("Attendees") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Message"  Visible="False" ><ItemTemplate>
                    <asp:Label ID="LabelDurationType" runat="server" Text='<%# Eval("Remarks") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField><ItemTemplate>
                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("Id")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
                
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>

    <PagerStyle CssClass="pagination-ys" />
    </asp:GridView>
            <asp:Label ID="LblError" runat="server" Text="Record's could not found" SkinID="LblRedCenter"></asp:Label>
        </div>
        </div>
                    </div>
                </div>
    </ContentTemplate>
        </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
        </div>

    </asp:Content>

