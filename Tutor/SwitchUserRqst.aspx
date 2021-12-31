<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Tutor_SwitchUserRqst, App_Web_hacr2tjf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <link href="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
        <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.nonblock.js"></script>
    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - Switch User Request</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Switch User Request</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->


    <div class="content">

        <div class="card">
            <%-- <div class="card-header header-elements-inline">
                <h5 class="card-title"><b>New Course</b></h5>
                <div class="header-elements">
                    <div class="list-icons">
                        <a class="list-icons-item" data-action="collapse"></a>
                        <a class="list-icons-item" data-action="reload"></a>
                        <a class="list-icons-item" data-action="remove"></a>
                    </div>
                </div>
            </div>--%>
            <div class="card-body">

                <div class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend class="font-weight-semibold"><i class="icon-reading mr-2"></i>Switch User Request</legend>
                        </fieldset>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Tutor</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox ID="TxtTutorName" runat="server" CssClass="form-control" ReadOnly />
                                <asp:HiddenField ID="HddnAcademyID" runat="server" />     
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Remarks</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtRemarks" TextMode="MultiLine" CssClass="form-control"/>              
                                <asp:HiddenField ID="HddnTutorID" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                   <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Request Status</b></label>
                            <div class="input-group">
                              <asp:Label Text="" ID="LblRqstStatus" runat="server" />  
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <asp:Label runat="server" Text="" ID="LblErrMsg" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnSwichUserRqst" OnClick="BttnSwichUserRqst_Click" Text="Sent Request" class="btn btn-primary" runat="server" />
                </div>

            </div>
        </div>

    </div>


        <script>
            function Notify(title, text, icon, type) {
                new PNotify({
                    title: title,
                    text: text,
                    icon: icon,
                    type: type,
                    hide: true
                });
            }
    </script>

</asp:Content>

