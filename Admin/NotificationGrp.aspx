<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Admin_NotificationGrp, App_Web_ybvgoxqu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Assets/Dashboard/Global_Assets/summernote-0.8.18-dist/summernote.min.css" rel="stylesheet" />
    <script src="../Assets/Dashboard/Global_Assets/summernote-0.8.18-dist/summernote.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <asp:HiddenField ID="HddnNotGrpID" runat="server" />

    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - Notification Groups</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Notification Groups</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->


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
                <div class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend class="font-weight-semibold"><i class="icon-reading mr-2"></i>Notification Groups</legend>
                        </fieldset>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Group Name</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox runat="server" CssClass="form-control" ID="TxtGrpName" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <label><b>&nbsp;</b></label>
                            <div class="input-group">
                                <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_NotificationGrp"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Group Template</b></label>
                            <div class="">
                                <asp:TextBox ID="TxtNotTemp" TextMode="MultiLine" runat="server" placeholder="Group Template" CssClass="form-control summernote">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:Label runat="server" ID="LblErrMsg" Text="" CssClass="" />
                        </div>
                    </div>
                </div>
                <div class="text-right">
                    <asp:Button ID="BttnAddNotGrp" OnClick="BttnAddNotGrp_Click" Text="Add Notification Group" class="btn btn-primary" runat="server" />
                </div>
            </div>
        </div>

    </div>

    <!-- Basic modal -->
    <div id="modal_NotificationGrp" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Notification Groups</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">

                    <div class="table-responsive">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Created On</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptrNotificationGrps" OnItemCommand="rptrNotificationGrps_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("UpdateDate","{0:dd MMM yyyy}") %></td>
                                            <td class="text-center">
                                                <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("Id")+","+ Eval("Id") %>' CommandName="Select">Select</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- /basic modal -->



    <script>
        $(document).ready(function () {
            $('.summernote').summernote();
        });
    </script>

</asp:Content>

