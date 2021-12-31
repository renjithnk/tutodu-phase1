<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_StudentList, App_Web_yzly2g3e" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
       <div class="card">
            <div class="card-body">
             <div class="row">
                    <div class="col-md-.5">
                        <div class="form-group">
                            <label>Student By :</label>
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
                             <asp:GridView ID="GrdRecords" CssClass="table table-bordered" AllowPaging="True"  PageSize="5" runat="server" 
                                        AutoGenerateColumns="False" OnRowDeleting="GrdRecords_RowDeleting" 
                                        OnSelectedIndexChanging="GrdRecords_SelectedIndexChanging" OnPageIndexChanging="GrdRecords_PageIndexChanging" OnRowDataBound="GrdRecords_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblSl" runat="server" Text='<%# Container.DataItemIndex + 1 %>'> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                     <asp:Button ID="BtnSelect" Width="80px" Height="60px" Text="Select" CommandName="SELECT" CommandArgument='<%#Eval("Id") %>' runat="server" SkinID="BtnGrdEdit" />
                                                    <asp:Button ID="BtnCancel" Width="80px" Height="60px" Text="Cancel" CommandName="DELETE" CommandArgument='<%#Eval("Id") %>' runat="server" SkinID="BtnGrdEditRed" Visible="false"/>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                     <asp:Image ID="Image1" Width="60px" Height="60px" ImageAlign="Middle" ImageUrl='<%# Eval("ImageLivePath") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkName" runat="server" Text='<%#Eval("Name") %>' Width="200px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Email/Mobile No" SortExpression="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkEmail" runat="server" Text='<%#Eval("Email") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                   <asp:Label ID="LnkMobNo" runat="server" Text='<%#Eval("MobNo") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Address" SortExpression="PAddress">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkCategoryName" runat="server" Text='<%#Eval("PAddress")+" - "+Eval("CAddress") %>' Width="300px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                        </div>
                    </div></div></div>
        </div>
</div>     
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FnGetCourseWiseStudentRecordList" TypeName="ClsDataBinding">
<SelectParameters>
<asp:ControlParameter ControlID="TxtSearch" Name="PrmVal" PropertyName="Text" Type="String" DefaultValue="" />
<asp:ControlParameter ControlID="HdnCrseMasterId" DefaultValue="0" Name="PrmCourseMasterId" PropertyName="Value" Type="String" />
</SelectParameters>
</asp:ObjectDataSource>
<asp:HiddenField ID="HdnCrseMasterId" runat="server" Value="0" />
      <!-- /content area -->
</asp:Content>

