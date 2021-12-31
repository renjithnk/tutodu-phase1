<%@ page language="C#" autoeventwireup="true" inherits="CropingPage, App_Web_yoya3kep" stylesheettheme="SkinFile" theme="SkinFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="CSS/StyleSheetContentNew.css" rel="stylesheet" />
    <link href="Scripts/jquery.Jcrop.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.Jcrop.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery('#ImgCrop').Jcrop({
                onSelect: storeCoords
            });
        });

        function storeCoords(c) {
            jQuery('#X').val(c.x);
            jQuery('#Y').val(c.y);
            jQuery('#W').val(c.w);
            jQuery('#H').val(c.h);
        };

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:Panel ID="PnlCrop" runat="server" Visible="false" ScrollBars="Both" Height="352px" Width="780px">
                <asp:Image ID="ImgCrop" runat="server"  />
                <br />
                <asp:HiddenField ID="X" runat="server" />
                <asp:HiddenField ID="Y" runat="server" />
                <asp:HiddenField ID="W" runat="server" />
                <asp:HiddenField ID="H" runat="server" />
            </asp:Panel>
            <asp:Panel ID="PnlCropped" runat="server" Visible="false">
                <asp:Image ID="ImgCropped" runat="server" />
            </asp:Panel>
            <asp:Button ID="BtnCrop" runat="server" Text="CROP IMAGE" OnClick="BtnCrop_Click" SkinID="BtnCommandClearNill" Width="770px" />
        </div>
    </form>
</body>
</html>
