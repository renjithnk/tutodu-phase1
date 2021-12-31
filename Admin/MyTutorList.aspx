<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Tutor_MyTutorList, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
           <div class="card">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1">
            <ajaxToolkit:TabPanel runat="server" HeaderText="Approved Tutor" ID="TabPanel1">
            <ContentTemplate>
                <div class="row">
                <asp:Repeater runat="server" ID="RptrActive" OnItemDataBound="RptrActive_ItemDataBound" ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                            <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("TutorImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("TutorName")%>' NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" /></h5>
                                   <h8 class="ViewTabMain"><b>Tutor Type :- </b><asp:Label ID="Label1" Text='<%#Eval("TutorType")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Email :- </b><asp:Label ID="Label2" Text='<%#Eval("TutorEmail")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Contact No :- </b><asp:Label ID="Label3" Text='<%#Eval("TutorMobNo")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Employee Id :- </b><asp:Label ID="Label4" Text='<%#Eval("OrgClassNo")%>' CssClass="ViewTabSubMaroon" runat="server" /></h8>

                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            </asp:Repeater>
           </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Pending Tutor">
            <ContentTemplate>
            <div class="row">
                 <asp:Repeater runat="server" ID="RptrInActive" OnItemDataBound="RptrInActive_ItemDataBound" ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                            <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("TutorImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("TutorName")%>' NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" /></h5>
                                   <h8 class="ViewTabMain"><b>Tutor Type :- </b><asp:Label ID="Label1" Text='<%#Eval("TutorType")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Email :- </b><asp:Label ID="Label2" Text='<%#Eval("TutorEmail")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Contact No :- </b><asp:Label ID="Label3" Text='<%#Eval("TutorMobNo")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                  <br /><h8 class="ViewTabMain"><b>Employee Id :- </b><asp:Label ID="Label4" Text='<%#Eval("OrgClassNo")%>' CssClass="ViewTabSubMaroon" runat="server" /></h8>

                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            </asp:Repeater>
            </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Rejected Tutor">
            <ContentTemplate>
            <div class="row">
                 <asp:Repeater runat="server" ID="RptrReject" OnItemDataBound="RptrReject_ItemDataBound"  ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                            <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("TutorImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("TutorName")%>' NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" /></h5>
                                   <h8 class="ViewTabMain"><b>Tutor Type :- </b><asp:Label ID="Label1" Text='<%#Eval("TutorType")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Email :- </b><asp:Label ID="Label2" Text='<%#Eval("TutorEmail")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Contact No :- </b><asp:Label ID="Label3" Text='<%#Eval("TutorMobNo")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Employee Id :- </b><asp:Label ID="Label4" Text='<%#Eval("OrgClassNo")%>' CssClass="ViewTabSubMaroon" runat="server" /></h8>

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

