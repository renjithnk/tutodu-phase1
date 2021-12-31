<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_ApprovedTuror, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Content area -->
    <div class="content">

        <!-- Basic datatable -->
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Active Tutor</h5>
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
                                    <asp:GridView ID="GdvRecords" CssClass="table table-bordered" AllowPaging="True" AllowSorting="True" DataKeyNames="ID,Name" PageSize="5" runat="server" 
                                        AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnRowDataBound="GdvRecords_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblSl" runat="server" Text='<%# Container.DataItemIndex + 1 %>'> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                     <asp:Image ID="Image1" Width="60px" Height="60px" ImageAlign="Middle" ImageUrl='<%# Eval("ImageLivePath") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="LnkName" NavigateUrl="#" runat="server" Text='<%#Eval("Name") %>' Width="200px" SkinID="HylnkGnl"> </asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email / Mobile No" SortExpression="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkEmail" runat="server" Text='<%#Eval("Email") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                    <asp:Label ID="LnkMobNo" runat="server" Text='<%#Eval("MobNo") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Address" SortExpression="PAddress">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkCategoryName" runat="server" Text='<%#Eval("PAddress") %>' Width="200px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Country" SortExpression="Nationality">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkNationality" runat="server" Text='<%#Eval("Nationality") %>' Width="100px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="State" SortExpression="StateName">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkStateName" runat="server" Text='<%#Eval("StateName") %>' Width="100px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="City" SortExpression="City">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkCity" runat="server" Text='<%#Eval("City") %>' Width="100px" SkinID="LblNormal"> </asp:Label>
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FnGetApprovedTutorList" TypeName="ClsDataBinding">
    <SelectParameters>
        <asp:ControlParameter ControlID="TxtSearch" Name="PrmVal" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="HdnCmpId" DefaultValue="0" Name="PrmCmpId" PropertyName="Value" Type="Int32" />
        <asp:ControlParameter ControlID="HdnAccId" DefaultValue="0" Name="PrmAccId" PropertyName="Value" Type="Int32" />
    </SelectParameters>
    </asp:ObjectDataSource>
    <asp:HiddenField ID="HdnCmpId" runat="server" Value="0" />
    <asp:HiddenField ID="HdnAccId" runat="server" Value="0" />
</asp:Content>

