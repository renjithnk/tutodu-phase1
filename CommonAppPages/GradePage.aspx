<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_GradePage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
       <div class="card">
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
            <ajaxToolkit:TabPanel runat="server" HeaderText="Grade Settings" ID="TabPanel1">
            <ContentTemplate>
           <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                    <div class="panel panel-body">
                    <div class="form-group">
                        <label><b>Grade Name</b></label>
                        <div class="input-group">
                               <asp:TextBox runat="server" ID="TxtName" placeholder="Grade Name" SkinID="TxtForCtrlSngl" />
                                                                                </div>
                    </div>
                    <div class="form-group">
                    <label><b>Grade Point</b></label>
                    <div class="input-group">
                            <asp:TextBox runat="server" ID="TxtGradePoint" placeholder="Grade Point" SkinID="TxtForCtrlSngl" />
                    </div>
                    </div>
                    <div class="form-group">
                        <label><b>Description</b></label>
                        <div class="input-group">
                            <asp:TextBox runat="server" ID="TxtRemarks" placeholder="Description"  SkinID="TxtForCtrlSngl" />
                            </div>
                    </div>
                    <uc1:ctrlcommand ID="CtrlCommand1" runat="server" IsVisibleFind="true" />
                    </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-body">
                            <asp:GridView ID="GrdRecords" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                            OnSelectedIndexChanging="GrdRecords_SelectedIndexChanging" OnPageIndexChanging="GrdRecords_PageIndexChanging"><Columns>
<asp:TemplateField HeaderText="Grade"><ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' SkinID="LblNormal"></asp:Label>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Grade Point"><ItemTemplate>
<asp:Label ID="LabelPoint" runat="server" Text='<%# Eval("Code") %>' SkinID="LblNormal"></asp:Label>
                            
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Description"><ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Remarks") %>' SkinID="LblNormal"></asp:Label>
                            
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField><ItemTemplate>
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
</ContentTemplate>
</ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel runat="server" HeaderText="Assessment Submission" ID="TabPanel2">
                <ContentTemplate>
                <div class="card-body">
                <div class="row">
                    <div class="col-md-.5">
                        <div class="form-group">
                            <label class="SpanBoldStyle">Student By :</label>
                        </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <asp:TextBox ID="TxtSearch" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                        </div>
                    </div>
                      <div class="col-md-2">
                        <div class="form-group">
                            <asp:Button ID="BtnSearch"  runat="server" Text="SEARCH" SkinID="BtnCommandFind" CommandName="FIND_STU" OnClick="ManiPulateDataEvent_Clicked"></asp:Button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-body">
                                    <asp:GridView ID="GdvStudentRecords" CssClass="table table-bordered" AllowPaging="True" AllowSorting="True" DataKeyNames="ID,Name" PageSize="5" runat="server" 
                                        AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnRowDataBound="GdvStudentRecords_RowDataBound">
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
                                                    <asp:Label ID="LblName" runat="server" Text='<%#Eval("Name") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Email/Mobile No" SortExpression="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkEmail" runat="server" Text='<%#Eval("Email") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                   <asp:Label ID="LnkMobNo" runat="server" Text='<%#Eval("MobNo") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>                       
                                            <asp:TemplateField HeaderText="Answer" >
                                                <ItemTemplate>
                                                    <asp:Label ID="LblAnswer" runat="server" Text='Answer' Width="60px" SkinID="LblQuestPager"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Grade" >
                                                <ItemTemplate>
                                                     <asp:Label ID="LblView" runat="server" Text='Grade' Width="60px" SkinID="LblAnswerAprv"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Mark List" >
                                                <ItemTemplate>
                                                     <asp:Label ID="LblGradeView" runat="server" Text='View' Width="80px" SkinID="LblQuestSubmit"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Address" SortExpression="PAddress">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkAddName" runat="server" Text='<%#Eval("PAddress")+" - "+Eval("CAddress") %>' Width="200px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                        </div>
                    </div></div>
                </div>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FnGetCourseWiseStudentRecordList" TypeName="ClsDataBinding">
                <SelectParameters>
                <asp:ControlParameter ControlID="TxtSearch" Name="PrmVal" PropertyName="Text" Type="String" DefaultValue="" />
                <asp:ControlParameter ControlID="HdnCrseMasterId" DefaultValue="0" Name="PrmCourseMasterId" PropertyName="Value" Type="String" />
                </SelectParameters>
                </asp:ObjectDataSource>
                <asp:HiddenField ID="HdnCrseMasterId" runat="server" Value="0" />
</ContentTemplate>
</ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </div>
        </div> 
      <!-- /content area -->
</asp:Content>

