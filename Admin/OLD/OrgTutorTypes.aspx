<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Admin_OrgTutorTypes, App_Web_20na01yn" %>

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
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Tutor Types</span> - Add Tutor Types</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <asp:HiddenField ID="HddnAccID" runat="server" />
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Add Tutor Types</span>
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
                    <div class="col-md-6">
                        <asp:UpdatePanel ID="upTutorTypeCreation" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="panel panel-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Organization</label>
                                                <asp:DropDownList ID="DrpOrg" runat="server" CssClass="form-control" OnSelectedIndexChanged="DrpOrg_SelectedIndexChanged" AutoPostBack="true">
                                                </asp:DropDownList>
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Type</label>
                                                <asp:TextBox ID="TxtTutorType" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                                                <span class="help-block"></span>
                                            </div>

                                        </div>
                                    </div>

                                    <asp:Button ID="BttnAddTutorType" CssClass="btn btn-success center-block" OnClientClick="return validateForm('txtMainMenu,txtSortOrder')" runat="server" Text="Add Tutor Type" OnClick="BttnAddTutorType_Click" />

                                </div>

                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </div>

                    <div class="col-md-6">
                        <div class="panel panel-body">
                            <asp:UpdatePanel ID="upGdvTutorTypes" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="gdvTutorTypes" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" OnRowCommand="gdvTutorTypes_RowCommand" OnPageIndexChanging="gdvTutorTypes_PageIndexChanging">
                                        <Columns>
                                            <asp:BoundField DataField="NAME" HeaderText="Type" />
                                            <asp:BoundField DataField="OrgName" HeaderText="Organization" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("ID")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                                    <asp:HiddenField ID="HddnTypeID" runat="server" />
                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </div>
                    </div>
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

