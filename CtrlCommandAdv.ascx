<%@ control language="C#" autoeventwireup="true" inherits="CtrlCommandAdv, App_Web_iymzdvn4" %>
<table style="text-align:center !important;">
    <tr>
          <td>
            <asp:Button ID="BtnApprove" runat="server" CommandName="APPROVE"
              SkinID="BtnCommandFind"  Text="Approve" ToolTip="Approve" OnClick="ManiPulateData" CommandArgument="APPROVE" /></td>
        <td>
            <asp:Button ID="BtnReject" runat="server" CommandName="REJECT"
                SkinID="BtnCommandDelete" Text="Reject" ToolTip="Reject" OnClick="ManiPulateData" CommandArgument="REJECT" /></td>
       <td>
            <asp:Button ID="BtnPrint" runat="server" CommandName="MAIL"
                SkinID="BtnCommandPrint" Text="Contact" ToolTip="Contact" UseSubmitBehavior="false" /></td>
        <td>
            <asp:Button ID="BtnMessage" runat="server" CommandName="MSG"
              SkinID="BtnCommandSave" Text="Comment" ToolTip="Comment" UseSubmitBehavior="false" /></td>
          <td>
            <asp:Button ID="BtnEdit" runat="server" CommandName="EDIT"
              SkinID="BtnCommandEdit" Text="Edit" ToolTip="Edit" OnClick="ManiPulateData" CommandArgument="EDIT" /></td>
    </tr>
</table>
<asp:HiddenField ID="HdnId" runat="server" Value="0" />