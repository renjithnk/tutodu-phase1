<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_CourseGrpOrg, App_Web_3j03txs0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.css" rel="stylesheet" />

    <style>
        .checkbox .btn, .checkbox-inline .btn {
            padding-left: 2em;
            min-width: 8em;
        }

        .checkbox label, .checkbox-inline label {
            text-align: left;
            padding-left: 0.5em;
            padding-right: 1.5em;
        }

        .checkbox input[type="checkbox"] {
            float: none;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <asp:HiddenField ID="HddnOrgAccID" runat="server" />

    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.nonblock.js"></script>

    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Course</span> - Course Group</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Course</a>
                    <span class="breadcrumb-item active">Course Group</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <div class="content">
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">
                    <asp:Label ID="Label1" Text="Course Group" runat="server" /></h5>
                <div class="header-elements">
                    <div class="list-icons">
                        <a class="list-icons-item" data-action="reload"></a>
                    </div>
                </div>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <asp:UpdatePanel ID="upCourseGrpCreation" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="panel panel-body">

                                    <div class="form-group">
                                        <label>Course Group</label>
                                        <asp:TextBox ID="TxtCourseGrp" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                                        <span class="help-block"></span>
                                    </div>
                                    <div class="form-group">
                                        <label>Parent Group</label>
                                        <asp:CheckBoxList runat="server" ID="ChkBxAdminGrp" CssClass="checkbox" ClientIDMode="Static">
                                        </asp:CheckBoxList>
                                        <span class="help-block" id="spanErrMsg"></span>
                                        <asp:Label Text="" ID="LblErrMsg" runat="server" />
                                    </div>
                                    <asp:Button ID="BttnAddCrsGrp" CssClass="btn btn-success center-block" OnClientClick="return validateForm('txtMainMenu,txtSortOrder')" runat="server" Text="Add Course Group" OnClick="BttnAddCrsGrp_Click" />

                                </div>

                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </div>

                    <div class="col-md-6">
                        <div class="panel panel-body">
                            <asp:UpdatePanel ID="upCourseGrp" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="gdvCourseGrp" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" OnRowCommand="gdvCourseGrp_RowCommand" OnPageIndexChanging="gdvCourseGrp_PageIndexChanging">
                                        <Columns>
                                            <asp:BoundField DataField="Name" HeaderText="Course Group" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("Id")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                                    <asp:HiddenField ID="hdnGrpID" runat="server" />
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

