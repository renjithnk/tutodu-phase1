<%@ page language="C#" autoeventwireup="true" inherits="CommonAppPages_Meet, App_Web_2iozjjrd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src='https://8x8.vc/external_api.js' async></script>
        <style>html, body, #jaas-container { height: 100%; }</style>
        <script type="text/javascript">
          window.onload = () => {
            const api = new JitsiMeetExternalAPI("8x8.vc", {
                roomName: "vpaas-magic-cookie-5777e621a72f48ceb657e572b460a50d/6b9ad4",
                parentNode: document.querySelector('#jaas-container')
            });
          }
        </script>
    <style>
        .hbsrNK 
        {
            -webkit-box-align: center !important;
            align-items: center !important;
            background-color: rgb(0, 86, 224) !important;
            border: 0px !important;
            border-radius: 6px !important;
            display: flex !important;
            font-weight: unset !important;
            -webkit-box-pack: center !important;
            justify-content: center !important;
            min-height: 32px !important;
            visibility: hidden !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="jaas-container" style="height:600px;" />
    </form>
</body>
</html>
