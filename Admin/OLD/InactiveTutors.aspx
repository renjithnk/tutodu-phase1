<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Admin_InactiveTutors, App_Web_20na01yn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
      <link href="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.css" rel="stylesheet" />
      <style>
        div.dataTables_wrapper {
            width: 100%;
            margin: 0 auto;
        }

             .modal-header {
        padding: 10px 1.25rem !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    
       <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.nonblock.js"></script>

        <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - Inactive Tutors</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Inactive Tutors</span>
                </div>

                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <!-- Content area -->
    <div class="content">

        <!-- Basic datatable -->
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Inactive Tutors</h5>
            </div>
                    <div class="table-responsive">
                    <table id="example" class="table display nowrap" style="width: 100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th></th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Mobile</th>
                                <th>Address</th>
                                <th>Nationality</th>
                                <th>Register Date</th>
                           <%--     <th>Status</th>--%>
                                <th class="text-center">View</th>
                                <th class="text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptrOrgDet" OnItemCommand="rptrOrgDet_ItemCommand" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                        <td>
                                            <asp:Image ID="Image1" Width="60px" Height="60px" ImageAlign="Middle" ImageUrl='<%# Eval("ImagePath").ToString() != "No Photo" ? "../Assets/UploadedFiles/ProfilePics/"+Eval("ImagePath") : "../Assets/Index/images/user/NoPhoto.png" %>' runat="server" /></td>
                                        <td><%#Eval("Name") %></td>
                                        <td><%#Eval("Email") %></td>
                                        <td><%#Eval("MobNo") %></td>
                                        <td><%#Eval("PAddress")+" - "+Eval("CAddress") %></td>
                                        <td><%#Eval("nNationality") %></td>
                                        <td><%#Eval("UpdateDate","{0:dd MMM yyyy}") %></td>
                                      <%--  <td><%# Convert.ToInt32( Eval("IsApprove")) >= 0 ? "Enabled" : "Disabled" %></td>--%>
                                        <td class="text-center">
                                            <asp:LinkButton runat="server" ID="LinkButton1" CommandArgument='<%#Eval("Id") %>' CommandName="View">VIEW</asp:LinkButton>
                                        </td>
                                        <td class="text-center">
                                            <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("Id") %>' CommandName="Approve">ENABLE</asp:LinkButton>
                                        </td>

                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
        </div>
        <!-- /basic datatable -->

    </div>
    <!-- /content area -->

       <!-- Basic modal -->
    <div id="modal_UserDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <h5 class="modal-title">Tutor Overview</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <asp:UpdatePanel ID="UpdtCourses" runat="server">
                        <ContentTemplate>
                            <div class="row">
                                 <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>First Name</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblFNameMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>Last Name</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblLNameMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <asp:Image ID="ImgProfPicMod" ImageAlign="Right" runat="server" Height="100px" Width="100px" CssClass="" />
                                </div>
                            </div>

                            <br />

                            <div class="row" style="margin-top: -30px;"> 
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label><b>Parent Name</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblPNameMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-3">
                                    <div class="form-group">
                                        <label><b>DOB</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblDobMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                  <div class="col-md-6">
                                    <div class="form-group">
                                        <label><b>Email</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblEmailMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                              
                               
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>Phone 1</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblPhone1Mod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>Phone 2</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblPhone2Mod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><b>Mobile</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblMobMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><b>Address Line 1</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblAdd1Mod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><b>Address Line 2</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblAdd2Mod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><b>Location</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblLocMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><b>Nationality</b></label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                            </div>
                                            <asp:Label ID="LblNationalityMod" Text="" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
    <!-- /basic modal -->

    
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

     <script>
         $(document).ready(function () {
             $('#example').DataTable({
                 "scrollX": true
             });
         });
    </script>

      <script>
          function SuccessAlert() {
              $('#modal_UserDet').modal('show');
          }
    </script>

</asp:Content>

