<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Organization_OrgProfile, App_Web_3j03txs0" stylesheettheme="SkinFile" theme="SkinFile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        .table th {background-color: white;text-align: center;
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
        <asp:GridView ID="GrdVwRecords" runat="server" CssClass="table table-bordered" AllowPaging="True" PageSize="1" AutoGenerateColumns="False" OnRowDataBound="GrdVwRecords_RowDataBound">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                   <asp:Label ID="LblName" runat="server" SkinID="LblBoldCenter" Text="" Width="100%" /></td>
                </HeaderTemplate>
                <ItemTemplate>
                        <table class="table table-borderless profile-table">
                            <tbody>
                                   <tr>
                                    <td class="PrfRow">Category</td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow">
                                        <asp:Label ID="Label7" runat="server" SkinID="LblNormal" Text='<%#Eval("SubCatName")%>' Width="250px" />
                                    </td>
                                     <td rowspan="3">
                                         <asp:Image ID="ImgProfPicMod" runat="server" alt="icon" CssClass="" Height="100px" ImageAlign="Right" src='<%# Eval("ImageLivePath")%>' Width="100px" />
                                     </td>
                                </tr>
                                 <tr>
                                    <td class="PrfRow">
                                        <asp:Label ID="Lbl0" runat="server" Text="Registration Date" Width="100%"></asp:Label>
                                     </td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow">
                                        <asp:Label ID="Label1" runat="server" SkinID="LblNormal" Text='<%#Eval("Dob","{0:dd MMM yyyy}") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Registartion No</td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow">
                                        <asp:Label ID="Label6" runat="server" SkinID="LblNormal" Text='<%#Eval("CompanyRegNo")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Gst No</td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow">
                                        <asp:Label ID="Label5" runat="server" SkinID="LblNormal" Text='<%#Eval("GstNo")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Email</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblEmail" runat="server" SkinID="LblNormal" Text='<%#Eval("Email")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Phone No.</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblAdd1" runat="server" SkinID="LblNormal" Text='<%#Eval("PhoneNo")%>' Width="100%"/>
                                    </td>
                                     <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Mobile No</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblAdd2" runat="server" SkinID="LblNormal" Text='<%#Eval("MobNo")%>' />
                                    </td>
                                     <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Permanent Address</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblPAddress" runat="server" SkinID="LblNormal" Text='<%#Eval("PAddress")%>' />
                                    </td>
                                     <td></td>
                                </tr>                               
                                <tr>
                                    <td class="PrfRow">Contact Address</td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow" colspan="2"> 
                                        <asp:Label ID="LblCAddress" runat="server" SkinID="LblNormal" Text='<%#Eval("CAddress") %>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Country</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblNationality" runat="server" SkinID="LblNormal" Text='<%#Eval("Nationality")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">State</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblStateName" runat="server" SkinID="LblNormal" Text='<%#Eval("StateName")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">City</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblCity" runat="server" SkinID="LblNormal" Text='<%#Eval("City")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                  <tr>
                                    <td class="PrfRow">Web Url</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblWebAdd" runat="server" SkinID="LblNormal" Text='<%#Eval("WebAdd")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                   <tr>
                                    <td class="PrfRow">Scroller</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="Label2" runat="server" SkinID="LblNormal" Text='<%#Eval("ScrollDown")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">News</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="Label3" runat="server" SkinID="LblNormal" Text='<%#Eval("Notice")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                  <tr>
                                    <td class="PrfRow">Other Info</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="Label4" runat="server" SkinID="LblNormal" Text='<%#Eval("OtherInformations")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Academy Doc</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:HyperLink ID="HyLnkPath" runat="server" Target="_blank" SkinID="HylnkGnl" />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Image -1 </td>
                                     <td class="PrfClmnRow"><span>:</span></td>
                                     <td class="PrfRow" colspan="2">
                                        <asp:HyperLink ID="HyLnkImg1" runat="server" Target="_blank" SkinID="HylnkGnl" /></td>
                                </tr>
                                 <tr>
                                    <td class="PrfRow">Image -2 </td>
                                      <td class="PrfClmnRow"><span>:</span></td>
                                     <td class="PrfRow" colspan="2">
                                        <asp:HyperLink ID="HyLnkImg2" runat="server" Target="_blank" SkinID="HylnkGnl" /></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Image -3 </td>
                                     <td class="PrfClmnRow"><span>:</span></td>
                                     <td class="PrfRow" colspan="2">
                                        <asp:HyperLink ID="HyLnkImg3" runat="server" Target="_blank" SkinID="HylnkGnl" /></td>
                                </tr>
                            </tbody>
                        </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
                <br />
                <div class="text-left">
                 <asp:Button  ID="BtnEditProfile" Text="Edit Profile" SkinID="BtnCommandEdit" runat="server" />
                </div>
            </div>
 </div>
</div>
</asp:Content>

