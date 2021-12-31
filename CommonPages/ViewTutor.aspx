<%@ page language="C#" autoeventwireup="true" inherits="CommonPages_ViewTutor, App_Web_wy5ggddp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="shortcut icon" href="../Assets/img/favicon.ico" type="image/x-icon" />
  <!--Stylesheets-->
    <link rel="stylesheet" href="../Assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="../Assets/css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="../Assets/css/layerslider.css" />
    <link rel="stylesheet" href="../Assets/css/style.css" />
    <link rel="stylesheet" href="../Assets/css/bootstrap-datepicker.css" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css" type="text/css" />
    <link rel="stylesheet" href="../Assets/css/summernote.min.css" />

    <!--scripts-->
    <script type="application/javascript" src="../Assets/js/popper.min.js"></script>
    <script type="application/javascript" src="../Assets/js/jquery.min.js"></script>

    <!-- /global stylesheets -->
    <link href="../CSS/StyleSheetButton.css" rel="stylesheet" />
    <script src="../JavaScript/WebServiceMethode.js" type="text/javascript"></script>
    <link href="../DhtmlWindow/dhtmlwindowNew.css" rel="stylesheet" type="text/css" />
    <script src="../DhtmlWindow/dhtmlReportwindow.js" type="text/javascript" ></script>
    <script src="../JavaScript/General.js" type="text/javascript"></script>
    <link href="../CSS/HtmlTextEditor.css" rel="stylesheet" type="text/css" />

    <!-- -------------------------- -->
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lbl" runat="server"></asp:Label>
            <section id="" class="py-md-5 py-2">
        <div class="container">
            <div class="row">
<div class="tab-pane fade" id="instruct-tab" role="tabpanel" aria-labelledby="nav-instruct">
<div class="row">
<div class="col-md-9">
<p class="i-info"><span>Skills :</span> 
<asp:Repeater runat="server" ID="RptrPriTutExpDet">
    <ItemTemplate>
        <%#Eval("Name")%>|
    </ItemTemplate>
</asp:Repeater>
</p>
<p class="i-info"><span>Qualification :</span><asp:Repeater runat="server" ID="RptrPriTutEduDet">
    <ItemTemplate>
        <%#Eval("Name")%>,
    </ItemTemplate>
</asp:Repeater>,</p>
<p class="i-info"><span>Tutor Bio :</span><h runat="server" id="SpnTutorDesc">ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h> </p>
<div class="i-info-footer">
    <div class="course-rating">
        <div class="stars">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
        </div>
        <span>| rate this tutor</span>
    </div>
</div>
</div>
<div class="col-md-3">
<div class="i-image">
    <img id="ImgTutor" runat="server" src="~/UploadedFiles/ProfilePics/image-placeholder.jpg"  />
    <h6  id="HdrTutorName" runat="server">James Fedrick</h6>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
</form>
</body>
</html>
