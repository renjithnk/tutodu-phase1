<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_PendingCourses, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Content area -->
    <div class="content">
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">
                    <asp:Label ID="Label1" Text="Pending Courses" runat="server" /></h5>
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
                            <asp:Button ID="BtnSearch"  runat="server" Text="SEARCH" CommandName="FIND" SkinID="BtnCommandFind" OnClick="ManiPulateDataEvent_Clicked"></asp:Button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-body">
                                    <asp:GridView ID="GdvRecords" CssClass="table table-bordered" AllowPaging="True" AllowSorting="true" DataKeyNames="ID,Name" PageSize="5" runat="server" 
                                        AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnRowDataBound="GdvRecords_RowDataBound" >
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl" SortExpression="Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblSl" runat="server" Text='<%# Container.DataItemIndex + 1 %>'> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                     <asp:Image ID="Image1" Width="60px" Height="60px" ImageAlign="Middle" ImageUrl='<%# Eval("ImageLivePath") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Course Name" SortExpression="Name">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="LnkName" NavigateUrl="#" runat="server" Text='<%#Eval("Name") %>' Width="200px" SkinID="HylnkGnl" > </asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Tutor" SortExpression="AccAName">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblTutor" runat="server" Text='<%#Eval("AccAName") %>' Width="100px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Type" SortExpression="CourseTType">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblType" runat="server" Text='<%#Eval("CourseTType") %>' Width="100px"  SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Category" SortExpression="CategoryName">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblCategoryName" runat="server" Text='<%#Eval("CategoryName") %>' Width="100px"  SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Sub Category" SortExpression="SubCategoryName">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkSubCategoryName" runat="server"  Text='<%#Eval("SubCategoryName") %>' Width="100px"  SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Course Medium" SortExpression="CourseMedium">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkCourseMedium" runat="server"  Text='<%#Eval("CourseMedium") %>' Width="100px"  SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Start Date" SortExpression="StartDate">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkStartDate" runat="server"  NavigateUrl="#"  Text='<%#Eval("StartDate","{0:dd MMM yyyy}") %>' Width="100px"  SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="EndDate Date" SortExpression="StartDate">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkEndDate" runat="server"  Text='<%#Eval("EndDate","{0:dd MMM yyyy}") %>' Width="100px"  SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Status" SortExpression="CourseStatus">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkCourseStatus" runat="server"  NavigateUrl="#"  Text='<%#Eval("CourseStatus") %>' Width="100px"  SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                        </div>
                    </div></div>
            </div>

        </div>
    </div>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FnGetPendingCourseList" TypeName="ClsDataBinding">
    <SelectParameters>
        <asp:ControlParameter ControlID="TxtSearch" Name="PrmVal" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="HdnOrgId" DefaultValue="0" Name="PrmOrgId" PropertyName="Value" Type="Int32" />
        <asp:ControlParameter ControlID="HdnTutorId" DefaultValue="0" Name="PrmTutorId" PropertyName="Value" Type="Int32" />
    </SelectParameters>
    </asp:ObjectDataSource>
    <asp:HiddenField ID="HdnOrgId" runat="server" Value="0" />
    <asp:HiddenField ID="HdnTutorId" runat="server" Value="0" />
</asp:Content>

