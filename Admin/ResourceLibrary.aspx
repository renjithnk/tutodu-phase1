<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Admin_ResourceLibrary, App_Web_ybvgoxqu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - Resource Library</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Resource Library</span>
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
                        <div class="form-group">
                            <label><b>Title</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Doc. Type</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:DropDownList runat="server" CssClass="form-control">
                                    <asp:ListItem Text="text1" />
                                    <asp:ListItem Text="text2" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Category</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="text1" />
                                    <asp:ListItem Text="text2" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Image File</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Video File</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="text-left">
                    <asp:Button ID="BttnEditPer" Text="Add Details" class="btn btn-primary" runat="server" />
                </div>
            </div>
        </div>

        <!-- Basic datatable -->
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Resource Library</h5>
            </div>
            <table class="table datatable-responsive">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Doc. Type</th>
                        <th>Category</th>
                        <th>Image File</th>
                        <th>Video File</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>

                    <asp:Repeater ID="rptrUserDet" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Email") %></td>
                                <td><%#Eval("UpdateDate") %></td>
                                <td><%#Eval("GroupName") %></td>
                                <td><%#Eval("IsApprove") %></td>
                                <td class="text-center"><%#Eval("Active") %></td>
                                <%-- <td class="">
                                    <asp:LinkButton ID="LinkButton1" Text="Approve" runat="server" CommandArgument='<%#Eval("Name") %>' CommandName="Approve" />/
                                    <asp:LinkButton ID="LinkButton2" Text="Reject" runat="server" CommandArgument='<%#Eval("Name") %>' CommandName="Reject" /></td>--%>
                                <td class="text-center">
                                    <asp:LinkButton runat="server" ID="LinkButton6" CommandArgument='<%#Eval("Id") %>' CommandName="Activate">ACTIVATE</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>

                </tbody>
            </table>
        </div>
        <!-- /basic datatable -->

    </div>

    <script type="text/javascript">

        $(function DateDOB() {
            $('[id*=TxtDob]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd M yyyy",
                language: "tr"

            })
            .change(dateChanged)
.on('changeDate', dateChanged);


        });



        function dateChanged(ev) {


            var sqlformateddate = moment($('[id*=TxtDob]').val(), "DD/MM/YYYY").format("YYYY/MM/DD");

            $('[id*=hdndob]').val(sqlformateddate);
        }


        $(document).ready(function () {
            dateChanged("ready!");
        });

    </script>

</asp:Content>

