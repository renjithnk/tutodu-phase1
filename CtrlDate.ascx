<%@ control language="C#" autoeventwireup="true" inherits="CtrlDate, App_Web_yoya3kep" %>
<table border="0" cellpadding="0" cellspacing="0" style="width: 6px">
    <tr>
        <td>
            <asp:TextBox ID="TxtDate" runat="server" placeholder="dd/MMM/yyyy" SkinID="TxtDate"></asp:TextBox></td>
        <td><div id="Img1" runat="server" class="imgcalenderdiv"><i class="icon-calendar3 imgcalender-cons" aria-hidden="false"></i></div>
            <!--<img id="Img12" runat="server" src="Images/calendar.jpg" />  icon-calendar2--></td>
    </tr>
</table>
<asp:PlaceHolder ID="CDdlr" runat="server"></asp:PlaceHolder>
