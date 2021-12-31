    <%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_CertificatePage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
    <%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
    <%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>
    <%@ Register Src="~/CtrlTime.ascx" TagPrefix="uc1" TagName="CtrlTime" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language="javascript" type="text/javascript" src="Script/CalenderPage.js"></script>

    <div class="content">
        <div class="card">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
        <ajaxToolkit:TabPanel runat="server" HeaderText="CERTIFICATE SETTINGS" ID="TabPanel1">
        <ContentTemplate>
        <div class="cardTab">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label><b>Certificate Title </b></label>
                    <div class="input-group">
                    <asp:TextBox runat="server" ID="TxtTitle" placeholder="Certificate Title" SkinID="TxtForCtrlSngl" />
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label><b>Select Template</b></label>
                    <div class="input-group">
                    <asp:DropDownList runat="server" ID="DdlTemplete" SkinID="DdlTemplateList" />
                    </div>
                </div>
            </div>                  
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                <label><b>User Certificate Logo</b></label>
                    <div class="input-group">
                        <ajaxtoolkit:asyncfileupload ID="FileUpldDoc" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldDoc_UploadedComplete" FailedValidation="False" />
                        <span class="input-group-text"><asp:HyperLink ID="HyLnkDoc" runat="server" Target="_blank" ></asp:HyperLink>
                     </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label><b>Certificate Content</b></label>
                    <div class="input-group">
                     <asp:TextBox runat="server" ID="TxtMessageDetails" placeholder="Message" SkinID="TxtForCtrlSngl" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label><b>Signatury Name </b></label>
                    <div class="input-group">
                       <asp:TextBox runat="server" ID="TxtSignaturyName" placeholder="Signatury Name" SkinID="TxtForCtrlSngl" />
                        </span>
                    </div>
                </div>
            </div>  
            <div class="col-md-3">
                <div class="form-group">
                    <label><b>Signatury Designation</b></label>
                    <div class="input-group">
                       <asp:TextBox runat="server" ID="TxtSignaturyDesg" placeholder="Signatury Designation" SkinID="TxtForCtrlSngl" />
                </div>
                </div>
            </div>
             <div class="col-md-6">
                <div class="form-group">
                <label><b>Upload Signature</b></label>
                    <div class="input-group">
                        <ajaxtoolkit:asyncfileupload ID="FileUpldSig" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldSig_UploadedComplete" FailedValidation="False" />
                        <span class="input-group-text"><asp:HyperLink ID="HyLnkSig" runat="server" Target="_blank" ></asp:HyperLink>
                     </div>
                </div>
            </div>
        </div>
        <div class="text-right">
        <uc1:CtrlCommand ID="CtrlCommand1" runat="server" SaveIsEnabled="true" />
        </div>
            <br>
            <br></br>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-body">
                        <asp:GridView ID="GrdRecords" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered" OnPageIndexChanging="GrdRecords_PageIndexChanging" OnSelectedIndexChanging="GrdRecords_SelectedIndexChanging" PageSize="5">
                            <Columns>
                                <asp:TemplateField HeaderText="Certificate Title">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" SkinID="LblNormal" Text='<%# Eval("Name") %>' Width="150px"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Template">
                                    <ItemTemplate>
                                        <asp:Label ID="LblTemplate" runat="server" SkinID="LblNormal" Text='<%#Eval("Template") %>' Width="150px"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Certificate Messgae">
                                    <ItemTemplate>
                                        <asp:Label ID="LblMsg" runat="server" SkinID="LblNormal" Text='<%#Eval("AddMsgBoady") %>' Width="150px"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Signatory Name">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelSignatoryName" runat="server" SkinID="LblNormal" Text='<%# Eval("SignatoryName") %>' Width="150px"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Designation">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelDesg" runat="server" SkinID="LblNormal" Text='<%# Eval("SignatoryPosition") %>' Width="150px"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lb" runat="server" CommandArgument='<%#Eval("Id")%>' CommandName="Select"> <i class="icon-pencil5"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerStyle CssClass="pagination-ys" />
                        </asp:GridView>
                        <asp:Label ID="LblError" runat="server" SkinID="LblRedCenter" Text="Record's could not found"></asp:Label>
                    </div>
                </div>
            </div>
            </br>
        </div>
    </ContentTemplate>
    </ajaxToolkit:TabPanel>
<ajaxToolkit:TabPanel runat="server" HeaderText="ISSUE CERTIFICATE" ID="TabPanel2">
<ContentTemplate>
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
                                                    <asp:Label ID="LnkName" runat="server" Text='<%#Eval("Name") %>' Width="200px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkEmail" runat="server" Text='<%#Eval("Email") %>' Width="100px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Mobile No" SortExpression="MobNo">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkMobNo" runat="server" Text='<%#Eval("MobNo") %>' Width="100px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Address" SortExpression="PAddress">
                                                <ItemTemplate>
                                                    <asp:Label ID="LnkCategoryName" runat="server" Text='<%#Eval("PAddress")+" - "+Eval("CAddress") %>' Width="300px" SkinID="LblNormal"> </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                              <asp:TemplateField HeaderText="VIEW" >
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="HyLnkView" runat="server" NavigateUrl="#" Text='ISSUE' Width="100px" SkinID="HylnkGnl"> </asp:HyperLink>
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

    </asp:Content>

