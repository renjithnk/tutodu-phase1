<%@ control language="C#" autoeventwireup="true" inherits="CtrlCommandCourse, App_Web_iymzdvn4" %>
<table style="text-align:center !important;">
    <tr>
          <td>
            <asp:Button ID="BtnApprove" runat="server" CommandName="ANNOUNCEMENT"
              SkinID="BtnCommandFind"  Text="ANNOUNCEMENTS" ToolTip="Announcements" OnClick="ManiPulateData" CommandArgument="ANNOUNCEMENT" /></td>
        <td>
            <asp:Button ID="BtnReject" runat="server" CommandName="MODULES"
                SkinID="BtnCommandDelete" Text="MODULES" ToolTip="Modules" OnClick="ManiPulateData" CommandArgument="MODULES" /></td>
       <td>
            <asp:Button ID="BtnPrint" runat="server" CommandName="ASSIGNMENTS"
                SkinID="BtnCommandPrint" Text="ASSIGNMENTS" ToolTip="Assignments" UseSubmitBehavior="false" /></td>
        <td>
            <asp:Button ID="BtnMessage" runat="server" CommandName="QUIZ"
              SkinID="BtnCommandSave" Text="QUIZ" ToolTip="Quiz/Exam" UseSubmitBehavior="false" /></td>
          <td>
            <asp:Button ID="BtnEdit" runat="server" CommandName="NOTES"
              SkinID="BtnCommandEdit" Text="EDIT" ToolTip="Notes" OnClick="ManiPulateData" CommandArgument="NOTES" /></td>
        <td>
            <asp:Button ID="Button1" runat="server" CommandName="GRADES"
              SkinID="BtnCommandEdit" Text="GRADES" ToolTip="Grades" OnClick="ManiPulateData" CommandArgument="GRADES" /></td>
        <td>
            <asp:Button ID="Button2" runat="server" CommandName="FORUM"
              SkinID="BtnCommandEdit" Text="COURSE FORUM" ToolTip="Course Forum" OnClick="ManiPulateData" CommandArgument="FORUM" /></td>
        <td>
            <asp:Button ID="Button3" runat="server" CommandName="ATTENDANCE"
              SkinID="BtnCommandEdit" Text="ATTENDANCE" ToolTip="Attendance" OnClick="ManiPulateData" CommandArgument="ATTENDANCE" /></td>
        <td>
            <asp:Button ID="Button4" runat="server" CommandName="CERTIFICATE"
              SkinID="BtnCommandEdit" Text="COURSE CERTIFICATES" ToolTip="Course Certificates" OnClick="ManiPulateData" CommandArgument="CERTIFICATE" /></td>
        <td>
            <asp:Button ID="Button5" runat="server" CommandName="MESSAGE"
              SkinID="BtnCommandEdit" Text="MESSAGE" ToolTip="Message" OnClick="ManiPulateData" CommandArgument="MESSAGE" /></td>
    </tr>
</table>
<asp:HiddenField ID="HdnId" runat="server" Value="0" />