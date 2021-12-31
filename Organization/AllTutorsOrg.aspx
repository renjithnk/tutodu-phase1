<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_AllTutorsOrg, App_Web_3j03txs0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.js"></script>
    <script src="../Assets/Dashboard/Global_Assets/js/plugins/pnotify/dist/pnotify.nonblock.js"></script>

    <!-- Main content -->
    <div class="content-wrapper">

        <!-- Page header -->
        <div class="page-header page-header-light">
            <div class="page-header-content header-elements-md-inline">
                <div class="page-title d-flex">
                    <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - All Tutors</h4>
                    <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
                </div>
            </div>

            <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
                <div class="d-flex">
                    <div class="breadcrumb">
                        <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                        <span class="breadcrumb-item active">All Tutors</span>
                    </div>

                    <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
                </div>
            </div>
        </div>
        <!-- /page header -->

        <!-- Content area -->
        <div class="content">

             <asp:HiddenField ID="HddnAccID" runat="server" />
            <!-- Basic datatable -->
            <div class="card">
                <div class="card-header header-elements-inline">
                    <h5 class="card-title">All Tutors</h5>
                </div>
               
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>Email</th>
                                    <th>Register Date</th>
                                    <th>Approval</th>
                                    <th>Group Name</th>
                                    <th>Type</th>
                                    <th class="text-center">Is Active</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptrTutorDet" OnItemCommand="rptrTutorDet_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("Email") %></td>
                                            <td><%#Eval("UpdateDate","{0:dd MMM yyyy HH:mm:ss}") %></td>
                                            <td><%#Eval("IsApprove") %></td>
                                            <td><%#Eval("GroupName") %></td>
                                            <td><%#Eval("SubGroupName") %></td>
                                            <td class="text-center"><%#Eval("Active") %></td>
                                            <%-- <td class="">
                                    <asp:LinkButton ID="LinkButton1" Text="Approve" runat="server" CommandArgument='<%#Eval("Name") %>' CommandName="Approve" />/
                                    <asp:LinkButton ID="LinkButton2" Text="Reject" runat="server" CommandArgument='<%#Eval("Name") %>' CommandName="Reject" /></td>--%>
                                            <td class="text-center">
                                               <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("Id") %>' CommandName="Approve" data-toggle="modal" data-target="#modal_TutorTypes">ENABLE</asp:LinkButton>&nbsp;/&nbsp; 
                                            <asp:LinkButton runat="server" ID="LinkButton5" CommandArgument='<%#Eval("Id") %>' CommandName="Reject">DISABLE</asp:LinkButton>
                                            </td>

                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>

                  

            </div>
            <!-- /basic datatable -->

        </div>
        <!-- /content area -->

    </div>
    <!-- /main content -->

        <!-- Basic modal -->
    <div id="modal_TutorTypes" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Courses</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <asp:UpdatePanel ID="UpdtCourses" runat="server">
                        <ContentTemplate>
                            <table class="table datatable-responsive">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Cover Photo</th>
                                        <th>Course</th>
                                        <th>Group</th>
                                        <th>Type</th>
                                        <th>Status</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater runat="server" ID="RptrCourseList" >
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                                <td>
                                                    <asp:Image ID="Image1" Width="50px" Height="50px" ImageUrl='<%#"../Assets/UploadedFiles/CourseImgs/"+Eval("ImagePath") %>' runat="server" /></td>
                                                <td><%#Eval("Name") %></td>
                                                <td><%#Eval("GroupName") %></td>
                                                <td><%#Eval("TType") %></td>
                                                <td>
                                                    <span class="badge badge-success">Active</span>
                                                </td>
                                                <td>
                                                    <asp:LinkButton runat="server" ID="LinkButton1" CommandArgument='<%#Eval("Name") %>' CommandName="Edit"><i class="icon-pencil4"></i></asp:LinkButton>
                                                </td>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
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



</asp:Content>

