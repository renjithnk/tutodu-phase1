<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_RequestMembersPage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Content area -->
    <div class="content">

        <!-- Basic datatable -->
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Student List</h5>
            </div>
                <div class="card-body">
                <div class="row">
                    <div class="col-md-.5">
                        <div class="form-group">
                            <label>Filter By :</label>
                        </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <asp:TextBox ID="TxtSearch" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                        </div>
                    </div>
                      <div class="col-md-2">
                        <div class="form-group">
                            <asp:Button ID="BtnSearch"  runat="server" Text="SEARCH" SkinID="BtnCommandFind" CommandName="FIND" OnClick="ManiPulateDataEvent_Clicked"></asp:Button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-body">
                                    <asp:GridView ID="GdvRecords" CssClass="table table-bordered" AllowPaging="True" AllowSorting="True" DataKeyNames="Id,StudentId" PageSize="5" runat="server" 
                                        AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnRowDataBound="GdvRecords_RowDataBound" OnRowUpdating="GdvRecords_RowUpdating" OnRowDeleting="GdvRecords_RowDeleting">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblSl" runat="server" Text='<%# Container.DataItemIndex + 1 %>'> </asp:Label>
                                                     <asp:HiddenField ID="HdnAutoId" runat="server"  Value='<%# Eval("Id") %>' />
                                                      <asp:HiddenField ID="HdnStudentId" runat="server"  Value='<%# Eval("StudentId") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                     <asp:Image ID="Image1" Width="60px" Height="60px" ImageAlign="Middle" ImageUrl='<%# Eval("StudentImageLivePath") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="LnkName" NavigateUrl="#" runat="server" Text='<%#Eval("StudentName") %>' Width="200px" SkinID="HylnkGnl"> </asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkEmail" runat="server" Text='<%#Eval("StudentMail") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Mobile No" SortExpression="MobNo">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkMobNo" runat="server" Text='<%#Eval("StudentMobNo") %>' Width="100px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Approve">
                                                <ItemTemplate>
                                                    <asp:Button ID="BtnAprv" runat="server" Text='Approve' Width="100px" SkinID="BtnGrdEditGreen" CommandArgument="APPROVE" OnClientClick="return confirm('Do you want to approve this student?')" CommandName="UPDATE"> </asp:Button>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Comments" >
                                                <ItemTemplate>
                                                    <asp:TextBox ID="TxtComment" runat="server"  Width="100px" SkinID="TxtForCtrlSngl"> </asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Reject">
                                                <ItemTemplate>
                                                    <asp:Button ID="BtnReject" runat="server" Text='Reject' Width="100px" SkinID="BtnGrdEditRed" CommandArgument="REJECT" OnClientClick="return confirm('Do you want to reject this student?')" CommandName="DELETE"> </asp:Button>
                                                </ItemTemplate>
                                            </asp:TemplateField>                                            
                                             <asp:TemplateField HeaderText="Country" SortExpression="Nationality">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkNationality" runat="server" Text='<%#Eval("StudentNationality") %>' Width="100px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="City" SortExpression="City">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkCity" runat="server" Text='<%#Eval("StudentCity") %>' Width="100px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Address" SortExpression="PAddress">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkCategoryName" runat="server" Text='<%#Eval("StudentPAddress")+" - "+Eval("StudentCAddress") %>' Width="500px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                        </div>
                    </div></div>
            </div>
        </div>
        <!-- /basic datatable -->

    </div>
    <!-- /content area -->
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FnGetCourseRequestPendingStudentList" TypeName="ClsDataBinding">
    <SelectParameters>
        <asp:ControlParameter ControlID="TxtSearch" Name="PrmVal" PropertyName="Text" Type="String" DefaultValue="" />
        <asp:ControlParameter ControlID="HdnCrseMasterId" DefaultValue="0" Name="PrmCourseMasterId" PropertyName="Value" Type="String" />
    </SelectParameters>
    </asp:ObjectDataSource>
    <asp:HiddenField ID="HdnCrseMasterId" runat="server" Value="0" />
</asp:Content>

