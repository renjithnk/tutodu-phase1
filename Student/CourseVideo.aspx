<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseVideo.aspx.cs" Inherits="Student_CourseVideo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../CSS/VideoStyleSheet.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            width: 218px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server" class="auto-style1">
 <asp:DataList ID="DataListVideo" Visible="true" runat="server" AutoGenerateColumns="false" RepeatColumns="1">
        <ItemTemplate><div class="video-frame" style="width: 570px;height:320px;vertical-align:central;align-content:center;">
            <video id="VideoPlayer" src='<%# Eval("VideoPath") %>' controls="true" width="569" height="319" loop="true" /></ div >
        </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>
