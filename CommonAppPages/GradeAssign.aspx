<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_GradeAssign, App_Web_yzly2g3e" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="card">
            <div class="card-body">
            <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label><b>Date</b></label>
                        <div class="input-group">
                            <uc1:CtrlDate runat="server" ID="TxtDate" IsVisibleDate="true" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label><b>Assessement Title</b></label>
                        <div class="input-group">
                            <asp:DropDownList runat="server" ID="DdlAssessment" SkinID="DdlList" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label><b>Status</b></label>
                        <div class="input-group">
                            <asp:DropDownList runat="server" ID="DdlAssessmnetStatus" SkinID="DdlAssementStatus" />
                        </div>
                    </div>
                </div>
            </div>
        <div class="row">
        <div class="col-md-3">
        <div class="form-group">
            <label><b>Grade</b></label>
            <div class="input-group">
                <asp:DropDownList runat="server" ID="DdlGrade" SkinID="DdlList" />
            </div>
        </div>
        </div>
        <div class="col-md-1.5">
        <div class="form-group">
            <label><b>Maximum Mark</b></label>
            <div class="input-group">
               <asp:TextBox runat="server" ID="TxtMaxMark" placeholder="Maximum Mark" SkinID="TxtForCtrlDisable"  ></asp:TextBox>
            </div>
        </div>
        </div>
        <div class="col-md-2">
        <div class="form-group">
            <label><b>Actual Mark</b></label>
            <div class="input-group">
               <asp:TextBox runat="server" ID="TxtActualMark" placeholder="Actual Mark" SkinID="TxtForCtrlSngl"  ></asp:TextBox>
            </div>
        </div>
        </div>
        <div class="col-md-4">
        <div class="form-group">
            <label><b>Description</b></label>
            <div class="input-group">
                  <asp:TextBox runat="server" ID="TxtDescription" placeholder="Description" SkinID="TxtForCtrlSngl" />
            </div>
        </div>
        </div>
        </div>
        <div class="text-right">
            <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />
        </div>
        <br />
        <div class="col-md-6">
        <div class="panel panel-body">
                    <asp:GridView ID="GrdRecords" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                        OnSelectedIndexChanging="GrdRecords_SelectedIndexChanging1" OnPageIndexChanging="GrdRecords_PageIndexChanging1">
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
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("Id")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
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

