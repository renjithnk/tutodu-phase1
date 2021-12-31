<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_AttendancePage, App_Web_x5zf0ct3" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
       <div class="card">
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
                <ajaxToolkit:TabPanel runat="server" HeaderText="Leave Request" ID="TabPanel2">
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
                    <div class="col-md-12">
                        <div class="panel panel-body">
                                    <asp:GridView ID="GdvStudentRecords" CssClass="table table-bordered" AllowPaging="True" AllowSorting="True" PageSize="25" runat="server" 
                                        AutoGenerateColumns="False"  OnRowDataBound="GdvStudentRecords_RowDataBound" OnRowUpdating="GdvStudentRecords_RowUpdating" OnPageIndexChanging="GdvStudentRecords_PageIndexChanging">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblSl" runat="server" Text='<%# Container.DataItemIndex + 1 %>'> </asp:Label>
                                                    <asp:HiddenField runat="server" ID="HdnId" Value='<%#Eval("Id") %>' />
                                                    <asp:HiddenField runat="server" ID="HdnCourseMasterId" Value='<%#Eval("CourseMasterId") %>' />
                                                     <asp:HiddenField runat="server" ID="HdnStudentId" Value='<%#Eval("StudentId") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Date">
                                                <ItemTemplate>
                                                     <asp:Label ID="Label1" runat="server" Text='<%#Eval("TrDate","{0:dd MMM yyyy}") %>' Width="80px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                     <asp:Image ID="Image1" Width="60px" Height="60px" ImageAlign="Middle" ImageUrl='<%# Eval("ImageLivePath") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkName" runat="server" Text='<%#Eval("StudentName") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email/Mobile No" SortExpression="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkEmail" runat="server" Text='<%#Eval("StudentEmail") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                   <asp:Label ID="LnkMobNo" runat="server" Text='<%#Eval("StudentMobNo") %>' Width="150px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Status" >
                                                <ItemTemplate>
                                                    <asp:DropDownList ID="DdlAcceptReject" runat="server" SkinID="DdlAcceptReject"> </asp:DropDownList>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="Comments" >
                                                <ItemTemplate>
                                                    <asp:TextBox ID="TxtComment" runat="server" Text='' Width="100px" SkinID="TxtForCtrlSngl"> </asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Submit" >
                                                <ItemTemplate>
                                                    <asp:Button ID="BtnSubmit" runat="server" Text='Submit' Width="100px" CommandName="UPDATE" SkinID="BtnGrdEditGreen"> </asp:Button>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                        </div>
                    </div></div>
                </div>
              
                </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel runat="server" HeaderText="Attendance Assigning" ID="TabPanel3">
                <ContentTemplate>
                <div class="card-body">
                <div class="row">
                    <div class="col-md-.5">
                        <div class="form-group">
                            <label class="SpanBoldStyle">Date:</label>
                        </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <uc1:CtrlDate runat="server" id="TxtDate" IsVisibleDate="true" />
                        </div>
                    </div>
                    <div class="col-md-.5">
                    <div class="form-group">
                        <label class="SpanBoldStyle">Student By :</label>
                    </div>
                    </div>
                    <div class="col-md-2">
                    <div class="form-group">
                        <asp:TextBox ID="TxtStuSrch" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                    </div>
                    </div>
                      <div class="col-md-2">
                        <div class="form-group">
                            <asp:Button ID="BtnStuSrch"  runat="server" Text="GET" SkinID="BtnCommandFind" Visible="true" CommandName="FIND_STU" OnClick="ManiPulateDataEvent_Clicked"></asp:Button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-body">
                                    <asp:GridView ID="GrdVwAttendanceList" CssClass="table table-bordered" AllowPaging="True" AllowSorting="True" PageSize="25" runat="server" 
                                        AutoGenerateColumns="False"  OnRowDataBound="GrdVwAttendanceList_RowDataBound" OnRowUpdating="GrdVwAttendanceList_RowUpdating" OnPageIndexChanging="GrdVwAttendanceList_PageIndexChanging">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sl">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblSl" runat="server" Text='<%# Container.DataItemIndex + 1 %>'> </asp:Label>
                                                    <asp:HiddenField runat="server" ID="HdnStudentId" Value='<%#Eval("Id") %>' />
                                                    <asp:HiddenField runat="server" ID="HdnAttId" Value='' />
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
                                                    <asp:Label ID="LnkEmail" runat="server" Text='<%#Eval("Email") %>' Width="200px" SkinID="LblNormal"> </asp:Label>
                                                   <asp:Label ID="LnkMobNo" runat="server" Text='<%#Eval("MobNo") %>' Width="200px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Attendance" >
                                                <ItemTemplate>
                                                    <asp:DropDownList ID="DdlAttendance" runat="server" SkinID="DdlAttStatus"> </asp:DropDownList>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="Comments" >
                                                <ItemTemplate>
                                                    <asp:TextBox ID="TxtComment" runat="server" Text='' Width="100px" SkinID="TxtForCtrlSngl"> </asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Submit" >
                                                <ItemTemplate>
                                                    <asp:Button ID="BtnSubmit" runat="server" Text='Submit' Width="100px" CommandName="UPDATE" SkinID="BtnGrdEditGreen"> </asp:Button>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                                </div>
                                </div></div>
                                </div>
                    </ContentTemplate>
            </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </div>
        </div> 
      <!-- /content area -->
</asp:Content>

