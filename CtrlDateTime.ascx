<%@ control language="C#" autoeventwireup="true" inherits="CtrlDateTime, App_Web_yoya3kep" %>
<table border="0" cellpadding="0" cellspacing="0" style="width: 8px">
    <tr>
        <td>
            <asp:TextBox ID="TxtDate" runat="server" placeholder="dd/MMM/yyyy" SkinID="TxtDate"></asp:TextBox></td>
        <td>
            <div id="Img1" runat="server" class="imgcalenderdiv"><i class="icon-calendar3 imgcalender-cons" aria-hidden="false"></i></div>
        <td>
            <asp:DropDownList ID="DdlHr" runat="server" Width="50px" Visible="False">
            </asp:DropDownList></td>
        <td>
            <asp:DropDownList ID="DdlMnt" runat="server" Width="50px" Visible="False">
            </asp:DropDownList></td>
    </tr>
</table>
<asp:PlaceHolder ID="CDdlr" runat="server"></asp:PlaceHolder>
