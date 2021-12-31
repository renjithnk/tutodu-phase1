<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_MarkList, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="card">
            <div class="card-body">
        <div class="col-md-12">
        <div class="panel panel-body">
                    <asp:GridView ID="GrdRecords" CssClass="table table-bordered" AllowPaging="True" PageSize="10" runat="server" AutoGenerateColumns="False" 
                        OnPageIndexChanging="GrdRecords_PageIndexChanging1">
                        <Columns>
                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("TrDate","{0:dd MMM yyyy}") %>' Width="80px" SkinID="LblNormal"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Assessment Title">
                                <ItemTemplate>
                                    <asp:Label ID="LblExamMA" runat="server"  Text='<%# Eval("CourseExamMasterName") %>'  Width="120px" SkinID="LblNormal"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Max.Mark">
                                <ItemTemplate>
                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("MaximumMark") %>' Width="40px" SkinID="LblNormal"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                                <asp:TemplateField HeaderText="Grade">
                                <ItemTemplate>
                                    <asp:Label ID="LabelCourseGrade" runat="server" Text='<%# Eval("CourseGrade") %>' Width="30px" SkinID="LblNormal"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                                <asp:TemplateField HeaderText="Mark">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ActualMark") %>' Width="30px" SkinID="LblNormal"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <asp:Label ID="LblStatus" runat="server" Text='<%# Eval("Status") %>' Width="70px" SkinID="LblNormal"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="pagination-ys" />
                    </asp:GridView>
        </div>
        </div>
        </div>
        </div>
    </div>
</asp:Content>

