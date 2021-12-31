<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_AdminProfile, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        <table class="table table-borderless profile-table">
        <tbody>
        <tr>
        <td class="PrfRow">First Name</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblFName" runat="server" SkinID="LblNormal" /></td>
        </tr>
        <tr>
        <td class="PrfRow">Last Name</td> 
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblLName" runat="server" SkinID="LblNormal"/></td>
        </tr>
        <tr>
        <td class="PrfRow">DOB</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblDOB" runat="server" SkinID="LblNormal" /></td>
        </tr>
        <tr>
        <td class="PrfRow">Email</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblEmail" runat="server" SkinID="LblNormal" /></td>
        </tr>
        <tr>
        <td class="PrfRow">Address Line 1</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblAdd1" runat="server" SkinID="LblNormal" /></td>
        </tr>
        <tr>
        <td class="PrfRow">Address Line 2</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblAdd2" runat="server" SkinID="LblNormal"/></td>
        </tr>
        <tr>
        <td class="PrfRow">Country</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblCountry" runat="server" SkinID="LblNormal"/></td>
        </tr>
        <tr>
        <td class="PrfRow">State</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblState" runat="server" SkinID="LblNormal"/></td>
        </tr>
        <tr>
        <td class="PrfRow">City</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblCity" runat="server" SkinID="LblNormal"/></td>
        </tr>
        <tr>
        <td class="PrfRow">Zip</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblZip" runat="server" SkinID="LblNormal"/></td>
        </tr>
        <tr>
        <td class="PrfRow">Phone</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblPhone1" runat="server" SkinID="LblNormal"/></td>
        </tr>
        <tr>
        <td class="PrfRow">Alternate Phone</td>
        <td class="PrfClmnRow"><span>:</span><asp:Label Text="" ID="LblPhone2" runat="server" SkinID="LblNormal"/></td>
        </tr>
        </tbody>
        </table>
        <br />
        <div class="text-left">
        <asp:Button ID="BttnEditPer" Text="Edit Profile" SkinID="BtnCommandEdit" runat="server" />
        </div>
        </div>
        </div>
    </div>
</asp:Content>

