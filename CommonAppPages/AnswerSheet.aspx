<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_AnswerSheet, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">  
          <div class="card">
            <div class="card-body">
            <div class="row">
                <div class="col-md-2">
                <div class="form-group">
                    <label class="SpanBoldStyle">Assessmet Title :</label>
                </div>
                </div>
            <div class="col-md-6">
                <div class="form-group">
                 <asp:DropDownList runat="server" ID="DdlAssessmentSrch" SkinID="DdlNormal" ></asp:DropDownList>
                </div>
            </div>
                <div class="col-md-2">
                <div class="form-group">
                    <asp:Button ID="BtnSearch"  runat="server" Text="SEARCH" SkinID="BtnCommandFind" CommandName="FIND" OnClick="ManiPulateDataEvent_Clicked"></asp:Button>
                </div>
                </div>
            </div>
        <div class="row">
            <asp:FormView ID="FrmVwExamList" runat="server" Height="73px" Width="100%" AllowPaging="True" BackColor="White" BorderColor="#eeeeef" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" OnPageIndexChanging="FrmVwExamList_PageIndexChanging" OnDataBound="FrmVwExamList_DataBound">
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#FF9966" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemTemplate>
            <div class="card-body">
            <table class="table table-borderless profile-table">
            <tbody>
            <tr>
            <td class="SpanBoldStyle">Question</td>
            <td colspan="2"><span>:</span><asp:Label Text='<%#Eval("Name") %>' ID="LblFName" runat="server" SkinID="LblBold" /></td>
            </tr>
            <tr>
            <td class="SpanBoldStyle">Answer Type</td>
            <td colspan="2"><span>:</span><asp:Label Text='<%#Eval("ExamType") %>' ID="LblExamType" runat="server" /></td>
            </tr>
            <tr>
            <td class="SpanBoldStyle">Mark</td>
            <td colspan="2"><span>:</span><asp:Label Text='<%#Eval("Mark") %>' ID="LblMark" runat="server" /></td>
            </tr>
            <tr>
            <td class="overviewRightTop"><asp:Label Text='Exam Details' ID="Label1" runat="server" Width="120px" /></td>
            <td colspan="2" class="overviewRightTop"><span>:</span><asp:Label Text='<%#Eval("Remarks") %>' ID="LblParentName" runat="server" /></td>
            </tr>
            <tr class="SplitHeader">
            <td class="SplitHeader">Answer</td>
            <td colspan="2" class="SplitHeader"></td>
            </tr>
            <div id="DivDocAsgn" runat="server">
            <tr>
            <td>Attach Document's</td>
            <td class="overviewRightTop"></td>
            <td><asp:HyperLink ID="HyLnkDoc" Text="" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="3">
                   <asp:Label ID="LblContentDetails" runat="server"></asp:Label>
                </td>
            </tr>
            </div>
            <div id="DivOptionSingle" runat="server">
                <tr>
                    <td>Single Choice</td>
                </tr>
            <tr>
            <td colspan="3">
                <asp:RadioButtonList ID="RadBtnQuestLst" runat="server">
                                                           
                </asp:RadioButtonList>
            </td>
            </tr>
            </div>
            <div id="DivOptionMul" runat="server">
                <tr>
                    <td>Multiple Choice</td>
                </tr>
            <tr>
            <td colspan="3">
                <asp:CheckBoxList ID="ChkBoxQuestLst" runat="server">
                </asp:CheckBoxList>
            </td>
            </tr>
            </div>
           <tr class="SplitFooter">
            <td class="SplitFooter">Mark</td>
            <td class="SplitFooter"> <asp:TextBox ID="TxtMark" runat="server" SkinID="TxtForCtrlSngl" Text="" Width="100px" /></td>
            <td class="SplitFooter"><asp:Button ID="BtnSave" runat="server" CommandArgument="NEW" CommandName="SAVE" OnClick="ManiPulateDataEvent_Clicked" SkinID="BtnCommandClear" Text="Submit" />
             <asp:HiddenField ID="HdnExamId" runat="server" Value='<%#Eval("Id") %>' />
             <asp:HiddenField ID="HdnResultId" runat="server" />
             <asp:HiddenField ID="HdnSubmitDate" runat="server" />
             <asp:HiddenField ID="HdnTutorId" runat="server" />
             <asp:HiddenField ID="HdnCourseExamMasterId" runat="server"  Value='<%#Eval("CourseExamMasterId") %>' />
            </td>
            </tr>
            </tbody>
            </table>
            </div>
            </ItemTemplate>
            <PagerSettings Mode="NextPrevious" />
            <PagerStyle BackColor="#FFFBFB" Font-Bold="True" Font-Size="Medium" ForeColor="#003399" HorizontalAlign="Right" VerticalAlign="Middle" />
            <PagerTemplate>
            <asp:Label ID="LblAprv" runat="server" SkinID="LblAnswerAprv" Text="Approved By Tutor" Width="150px"></asp:Label>
            <asp:Label ID="LblCpt" runat="server" SkinID="LblQuestSubmit" Text="Submited by 10/11/2021 23:45:55" Width="250px"></asp:Label>
            <asp:Label ID="LblTotPage" runat="server" SkinID="LblQuestPager" Text="Total 10" Width="150px"></asp:Label>
            <asp:LinkButton ID="LnkNext" runat="server" SkinID="LnkBtnNext" CommandName="Page" CommandArgument="Next">Next</asp:LinkButton>
            <asp:LinkButton ID="LnkPrev" runat="server" SkinID="LnkBtnPrevious" CommandName="Page" CommandArgument="Prev">Previous</asp:LinkButton>
            </PagerTemplate>
            <RowStyle BackColor="White" ForeColor="#003399" />
            </asp:FormView>
        </div>
        </div>     
        </div>
    </div>
</asp:Content>

