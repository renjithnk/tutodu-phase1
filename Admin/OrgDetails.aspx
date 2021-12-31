<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="Admin_OrgDetails, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlCommandAdv.ascx" TagPrefix="uc1" TagName="CtrlCommandAdv" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .table th {background-color: white;text-align: center;
        }
    </style>
    <div style="text-align:center !important;background-color:whitesmoke;">
 <div  style="height:380px;overflow:scroll;">
    <asp:GridView ID="GrdVwRecords" runat="server" CssClass="table table-bordered" AllowPaging="True" PageSize="1" AutoGenerateColumns="False" OnRowDataBound="GrdVwRecords_RowDataBound">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                   <asp:Label ID="LblName" runat="server" SkinID="LblBoldCenter" Text="" Width="100%" /></td>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="card"">
                        <table class="table table-borderless profile-table">
                            <tbody>
                                <tr>
                                    <td class="PrfRow">
                                        <asp:Label ID="Lbl0" runat="server" Text="Gst No/ Reg. No." Width="100%"></asp:Label>
                                    </td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow">
                                       <%# Eval("GstNo") + " " +  Eval("CompanyRegNo") %>
                                    </td>
                                    <td rowspan="3">
                                        <asp:Image ID="ImgProfPicMod" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                                    </td>
                                </tr>
                                 <tr>
                                    <td class="PrfRow">Opening Date</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblDob" runat="server" SkinID="LblNormal" Text='<%#Eval("Dob","{0:dd MMM yyyy}") %>' />
                                    </td>
                                     <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Email</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblEmail" runat="server" SkinID="LblNormal" Text='<%#Eval("Email")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Phone No.</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblAdd1" runat="server" SkinID="LblNormal" Text='<%#Eval("PhoneNo")%>' Width="100%"/>
                                    </td>
                                     <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Mobile No</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblAdd2" runat="server" SkinID="LblNormal" Text='<%#Eval("MobNo")%>' Width="100%"/>
                                    </td>
                                     <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Permanent Address</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblPAddress" runat="server" SkinID="LblNormal" Text='<%#Eval("PAddress")%>' Width="100%"/>
                                    </td>
                                     <td></td>
                                </tr>                               
                                <tr>
                                    <td class="PrfRow">Contact Address</td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblCAddress" runat="server" SkinID="LblNormal" Text='<%#Eval("CAddress") %>' Width="100%"/>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Country</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblNationality" runat="server" SkinID="LblNormal" Text='<%#Eval("Nationality")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">State</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblStateName" runat="server" SkinID="LblNormal" Text='<%#Eval("StateName")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">City</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblCity" runat="server" SkinID="LblNormal" Text='<%#Eval("City")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
        <uc1:CtrlCommandAdv runat="server" ID="CtrlCommandAdv" />
    </div>
</asp:Content>
