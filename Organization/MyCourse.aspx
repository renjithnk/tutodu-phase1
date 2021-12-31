<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Organization_MyCourse, App_Web_3j03txs0" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
           <div class="card">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1">
            <ajaxToolkit:TabPanel runat="server" HeaderText="Approved Course" ID="TabPanel1">
            <ContentTemplate>
                <div class="row">
                <asp:Repeater runat="server" ID="RptrCourseActive" OnItemDataBound="RptrCourseActive_ItemDataBound" ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                            <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="Image13" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <asp:DropDownList ID="DdlActSubList" runat="server" SkinID="DdlCourseSubList" >
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:HiddenField ID="HdnId" runat="server" Value='<%#Eval("Id")%>' />
                                    <h3 class="font-weight-semibold mb-0"><asp:Label ID="Label5" Text='<%#Eval("Name")%>' CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            </asp:Repeater>
           </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Pending Course">
            <ContentTemplate>
            <div class="row">
                 <asp:Repeater runat="server" ID="RptrCourseInActive" OnItemDataBound="RptrCourseInActive_ItemDataBound" ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                            <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="Image13" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <asp:DropDownList ID="DdlActSubList" runat="server" SkinID="DdlCourseSubList" >
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <h3 class="font-weight-semibold mb-0"><asp:Label ID="Label5" Text='<%#Eval("Name")%>' CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                                    <asp:Button runat="server" SkinID="BtnCommandEdit" ID="BtnEdit" Text="Edit"></asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            </asp:Repeater>
            </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Rejected Course">
            <ContentTemplate>
            <div class="row">
                 <asp:Repeater runat="server" ID="RptrCourseReject" OnItemDataBound="RptrCourseReject_ItemDataBound"  ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                            <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="Image13" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <asp:DropDownList ID="DdlActSubList" runat="server" SkinID="DdlCourseSubList" >
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <h3 class="font-weight-semibold mb-0"><asp:Label ID="Label5" Text='<%#Eval("Name")%>' CssClass="font-weight-semibold mb-0" runat="server" /></h3>
                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            </asp:Repeater>
            </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
   </div>
    </div>
</asp:Content>

