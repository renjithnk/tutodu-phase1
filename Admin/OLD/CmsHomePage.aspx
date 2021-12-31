<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Admin_CmsHomePage, App_Web_20na01yn" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - CMS-Home Page</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>

        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">CMS-Home Page</span>
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
                    <div class="col-md-4">
                        <div class="form-group">
                            <label><b>Logo</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                               <ajaxToolkit:AsyncFileUpload ID="FileUploadLogo" runat="server" OnUploadedComplete="FileUploadLogo_UploadedComplete" />

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label><b>Slider 1</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload4" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label><b>Slider 2</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload5" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label><b>Slider 3</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload6" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Popular Course Description</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 3 Description</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 3 Image</b></label>
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
                            <label><b>Section 4 Background Image</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 4 Description</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 4 Image</b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload7" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 5 Description -1 </b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 5 Image -1 </b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload8" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 5 Description -2 </b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 5 Image -2 </b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload9" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 5 Description -2 </b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Section 5 Image -2 </b></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon-vcard"></i></span>
                                </div>
                                <asp:FileUpload ID="FileUpload10" CssClass="form-control" runat="server" />
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

