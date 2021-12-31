<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Tutor_MyOrgList, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
           <div class="card">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1">
            <ajaxToolkit:TabPanel runat="server" HeaderText="Approved Organization" ID="TabPanel1">
            <ContentTemplate>
                <div class="row">
                <asp:Repeater runat="server" ID="RptrActive" OnItemDataBound="RptrActive_ItemDataBound" ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                             <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("OrganizationName")%>' NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" ></asp:HyperLink></h5>
                                   <h8 class="ViewTabMain"><b>Reg. No. :- </b><asp:Label ID="Label6" Text='<%#Eval("CompanyRegNo")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                   <asp:Label ID="Label1" Text='<%#Eval("SubCatName")%>' CssClass="ViewTabSub" runat="server" ></asp:Label> 

                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            </asp:Repeater>
           </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Pending Organization">
            <ContentTemplate>
            <div class="row">
                 <asp:Repeater runat="server" ID="RptrInActive" OnItemDataBound="RptrInActive_ItemDataBound" ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                             <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("OrganizationName")%>' NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" ></asp:HyperLink></h5>
                                   <h8 class="ViewTabMain"><b>Reg. No. :- </b><asp:Label ID="Label6" Text='<%#Eval("CompanyRegNo")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            </asp:Repeater>
            </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Rejected Organization">
            <ContentTemplate>
            <div class="row">
                 <asp:Repeater runat="server" ID="RptrReject" OnItemDataBound="RptrReject_ItemDataBound"  ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                             <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("OrganizationName")%>' NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" ></asp:HyperLink></h5>
                                   <h8 class="ViewTabMain"><b>Reg. No. :- </b><asp:Label ID="Label6" Text='<%#Eval("CompanyRegNo")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
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

