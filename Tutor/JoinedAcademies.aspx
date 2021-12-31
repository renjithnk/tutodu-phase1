<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Tutor_JoinedAcademies, App_Web_hacr2tjf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Home</span> - Joined Organizations</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="#" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Home</a>
                    <span class="breadcrumb-item active">Joined Organizations</span>
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
                <h5 class="card-title">Joined Organizations</h5>
            </div>
            <%--    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                      <ContentTemplate>--%>
            <table class="table datatable-responsive">
                <thead>
                    <tr>
                        <th>Organization</th>
                        <th>Type</th>
                        <th>Reg No.</th>
                        <th>Class No.</th>
                        <th>University No.</th>
                        <th>Status</th>
                      <%--  <th class="text-center">Actions</th>--%>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater runat="server" ID="RptrJoinedAcademies" OnItemCommand="RptrJoinedAcademies_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("OrganizationName") %></td>
                                <td><%#Eval("TutorType") %></td>
                                <td><%#Eval("OrgRegNo") %></td>
                                <td><%#Eval("OrgClassNo") %></td>
                                <td><%#Eval("UniversityRegNo") %></td>
                                <td><%# Convert.ToInt32( Eval("IsApprove")) >= 0 ? "Joined" : "Not Joined" %></td>
                              <%--  <td class="text-center">
                                    <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("Id")+","+ Eval("Email") %>' CommandName="Select"><i class="icon-pencil4"></asp:LinkButton>
                                </td>--%>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>


            <%--         </ContentTemplate>
                  </asp:UpdatePanel>--%>
        </div>
        <!-- /basic datatable -->

    </div>
    <!-- /content area -->


</asp:Content>

