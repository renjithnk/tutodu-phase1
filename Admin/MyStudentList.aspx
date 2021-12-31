<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Tutor_MyStudentList, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
           <div class="card">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1">
            <ajaxToolkit:TabPanel runat="server" HeaderText="Approved Student" ID="TabPanel1">
            <ContentTemplate>
                <div class="row">
                <asp:Repeater runat="server" ID="RptrActive" OnItemDataBound="RptrActive_ItemDataBound" ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                            <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("StudentImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("StudentName")%>'  NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" /></h5>
                                   <br /><h8 class="ViewTabMain"><b>Email :- </b><asp:Label ID="Label2" Text='<%#Eval("StudentEmail")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Contact No :- </b><asp:Label ID="Label3" Text='<%#Eval("StudentMobNo")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Student Id :- </b><asp:Label ID="Label4" Text='<%#Eval("OrgClassNo")%>' CssClass="ViewTabSubMaroon" runat="server" /></h8>
                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            </asp:Repeater>
           </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Pending Student">
            <ContentTemplate>
            <div class="row">
                 <asp:Repeater runat="server" ID="RptrInActive" OnItemDataBound="RptrInActive_ItemDataBound" ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                            <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("StudentImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("StudentName")%>'  NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" /></h5>
                                   <br /><h8 class="ViewTabMain"><b>Email :- </b><asp:Label ID="Label2" Text='<%#Eval("StudentEmail")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Contact No :- </b><asp:Label ID="Label3" Text='<%#Eval("StudentMobNo")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Student Id :- </b><asp:Label ID="Label4" Text='<%#Eval("OrgClassNo")%>' CssClass="ViewTabSubMaroon" runat="server" /></h8>

                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
            </asp:Repeater>
            </div>
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Rejected Student">
            <ContentTemplate>
            <div class="row">
                 <asp:Repeater runat="server" ID="RptrReject" OnItemDataBound="RptrReject_ItemDataBound"  ><ItemTemplate>
                    <div class="col-sm-6 col-xl-4">
                        <div class="card card-body">
                            <div class="media">
                                <div class="mr-3 align-self-center">
                                  <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("StudentImageLivePath")%>' alt="icon" />
                                </div>
                                <div class="media-body text-right">
                                    <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("StudentName")%>'  NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" /></h5>
                                   <br /><h8 class="ViewTabMain"><b>Email :- </b><asp:Label ID="Label2" Text='<%#Eval("StudentEmail")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Contact No :- </b><asp:Label ID="Label3" Text='<%#Eval("StudentMobNo")%>' CssClass="ViewTabSub" runat="server" /></h8>
                                   <br /><h8 class="ViewTabMain"><b>Student Id :- </b><asp:Label ID="Label4" Text='<%#Eval("OrgClassNo")%>' CssClass="ViewTabSubMaroon" runat="server" /></h8>

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

