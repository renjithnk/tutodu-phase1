<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Admin_UserManagement, App_Web_20na01yn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

        <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - Usermanagement</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Usermanagement</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->
    <div class="content">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header header-elements-inline">
                        <h5 class="card-title">
                            <asp:Label ID="Label2" Text="EmployeeDetails" runat="server" /></h5>
                        <div class="header-elements">
                            <div class="list-icons">
                                <a class="list-icons-item" data-action="reload"></a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <asp:UpdatePanel ID="upgdvEmployeelist" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>

                                <div class="form-group">

                                    <asp:DropDownList ID="ddlDesignation" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDesignation_SelectedIndexChanged"></asp:DropDownList>

                                </div>

                                <asp:GridView ID="gdvEmployeelist" CssClass="table table-bordered" runat="server"
                                    AutoGenerateColumns="False" OnRowCommand="gdvEmployeelist_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                        <asp:BoundField DataField="GroupName" HeaderText="Designation" />
                                        <asp:TemplateField>
                                            <ItemTemplate>

                                                <asp:LinkButton ID="LinkButton1" runat="server"
                                                    CommandName="sel" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>'> select</i>
                                                </asp:LinkButton>
                                                <%--'<%# Eval("UserID") %>'--%>
                                                <asp:HiddenField ID="hdnUserIDInGrid" Value='<%# Eval("UserId") %>' runat="server"></asp:HiddenField>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>

                                <asp:HiddenField ID="hdnUserID" runat="server"></asp:HiddenField>



                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>



            </div>

            <div class="col-md-7">
                <div class="card" style=""> <%--min-height: 508px;--%>

                    <div class="card-body">
                        <asp:UpdatePanel ID="uppages" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>

                                <div class="form-group">
                                    <asp:UpdatePanel ID="up_ddlCategory" UpdateMode="Conditional" runat="server">
                                        <ContentTemplate>

                                            <asp:DropDownList ID="ddlCatagory" CssClass="form-control" runat="server"
                                                OnSelectedIndexChanged="ddlCatagory_SelectedIndexChanged"
                                                AutoPostBack="True">
                                            </asp:DropDownList>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <asp:UpdatePanel ID="upDetails" UpdateMode="Conditional" runat="server">
                                    <ContentTemplate>
                                        <div class="box-body">


                                            <asp:GridView ID="gdvList" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False">
                                                <Columns>
                                                    <asp:BoundField DataField="MainMenu" HeaderText="Category" />
                                                    <%--  <asp:BoundField DataField="SubCategory" HeaderText="SubCategory" />--%>
                                                    <asp:BoundField DataField="ViewName" HeaderText="View Name" />

                                                    <asp:TemplateField>
                                                        <HeaderTemplate>
                                                            <asp:CheckBox ID="chkCheckAll" runat="server" AutoPostBack="True"
                                                                OnCheckedChanged="chkCheckAll_CheckedChanged" />
                                                            Check all
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:HiddenField ID="hdnPrivillegeMasterID" Value='<%# Eval("PrivillegeMasterID") %>' runat="server"></asp:HiddenField>
                                                            <asp:Label ID="lblPrivillegeMasterID" Text='<%# Eval("PrivillegeMasterID") %>' Visible="false" runat="server"></asp:Label>
                                                            <asp:CheckBox ID="CheckBox1" Checked='<%#Convert.ToBoolean(Eval("Access")) %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Default">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chkDefault" Checked='<%#Convert.ToBoolean(Eval("isDefault")) %>' runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                </Columns>
                                            </asp:GridView>

                                            <br />
                                            <asp:Button ID="btnSaveChanges" runat="server"
                                                CssClass="btn btn-success no-margin pull-right  " Text="Save"
                                                OnClick="btnSaveChanges_Click"></asp:Button>
                                            <asp:Label ID="lblvalidator" runat="server" Text="" ForeColor="#009900"></asp:Label>
                                            <!-- /.box-body -->

                                        </div>

                                    </ContentTemplate>
                                </asp:UpdatePanel>




                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>

