<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_OrgMenusPages, App_Web_3j03txs0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - Org Menus Pages</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Org Menus Pages</span>
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
                    <asp:Label ID="Label1" Text="Main Menu" runat="server" /></h5>
                <div class="header-elements">
                    <div class="list-icons">
                        <a class="list-icons-item" data-action="reload"></a>
                    </div>
                </div>
            </div>
      
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4">
                        <asp:UpdatePanel ID="upMainMenuCreation" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="panel panel-body">

                                    <div class="form-group">
                                        <label>Main Menu</label>
                                        <asp:TextBox ID="txtMainMenu" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                                        <span class="help-block"></span>
                                    </div>

                                    <div class="form-group">
                                        <label>Icon Style</label>
                                        <asp:TextBox ID="txtIconStyle" CssClass="form-control" runat="server"></asp:TextBox>
                                        <span class="help-block"></span>
                                    </div>

                                    <div class="form-group">
                                        <label>Sort Order</label>
                                        <asp:TextBox ID="txtSortOrder" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                                        <span class="help-block"></span>
                                        <%--  pattern="^[0-9]+$"--%>
                                    </div>
                                    <asp:Button ID="btnAddMainMenu" CssClass="btn btn-success center-block" OnClientClick="return validateForm('txtMainMenu,txtSortOrder')" runat="server" Text="Add" OnClick="btnAddMainMenu_Click" />

                                </div>

                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </div>

                    <div class="col-md-8">
                        <div class="panel panel-body">
                            <asp:UpdatePanel ID="upGdvMAinMenu" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="gdvMainMenu" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" OnRowCommand="gdvMainMenu_RowCommand" OnPageIndexChanging="gdvMainMenu_PageIndexChanging">
                                        <Columns>
                                            <asp:BoundField DataField="MainMenu" HeaderText="Main Menu" />
                                            <asp:TemplateField HeaderText="Icon">
                                                <ItemTemplate>
                                                    <i class='<%#Eval("IconStyle") %>' aria-hidden="true"></i>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="SortingOrder" HeaderText="Sorting Order" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("MainMenuID")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                                    <asp:HiddenField ID="hdnMainMenuID" runat="server" />
                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">
                    <asp:Label ID="Label2" Text="Sub Menu" runat="server" /></h5>
                <div class="header-elements">
                    <div class="list-icons">
                        <a class="list-icons-item" data-action="reload"></a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4">
                        <asp:UpdatePanel ID="upMenuCreation" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <div class="panel panel-body">
                                    <asp:HiddenField ID="hdnMenuItemValue" runat="server" />
                                    <div class="form-group">
                                        <label>Main Menu</label>
                                        <asp:DropDownList ID="ddlMainMenu" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:DropDownList>

                                    </div>

                                    <%--<div class="form-group">
                            <label>SubMenu If Any</label>
                            <asp:TextBox ID="txtSubmenu" CssClass="form-control" required runat="server"></asp:TextBox>

                        </div>--%>

                                    <div class="form-group">
                                        <label>View Name</label>
                                        <asp:TextBox ID="txtViewName" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                        <span class="help-block"></span>
                                    </div>
                                    <div class="form-group">
                                        <label>View Path</label>
                                        <asp:TextBox ID="txtPath" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                        <span class="help-block"></span>
                                    </div>
                                    <asp:Button ID="btnMenuAdd" CssClass="btn btn-success center-block" OnClientClick="return validateForm('ddlMainMenu,txtViewName,txtPath')" runat="server" Text="Add" OnClick="btnMenuAdd_Click" />

                                </div>

                            </ContentTemplate>

                        </asp:UpdatePanel>

                    </div>

                    <div class="col-md-8">
                        <asp:UpdatePanel ID="upgdvMenuListing" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>

                                <div class="panel panel-body">

                                    <asp:GridView ID="gdvMenuListing" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gdvMenuListing_PageIndexChanging" OnRowCommand="gdvMenuListing_RowCommand">

                                        <Columns>
                                            <asp:BoundField DataField="MainMenu" HeaderText="Main Menu" />
                                            <asp:BoundField DataField="ViewName" HeaderText="View Name" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb4" CommandName="Select" CommandArgument='<%#Eval("PrivillegeMasterID")%>' runat="server"><i class="icon-pencil5"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>

                                    </asp:GridView>


                                </div>

                            </ContentTemplate>

                        </asp:UpdatePanel>

                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>

