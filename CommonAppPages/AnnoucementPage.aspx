<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_AnnoucementPage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
           <div class="card">
               <div class="card-body">
                           <div class="row">
                            <div class="col-md-6">
                            <div class="panel panel-body">
                            <div class="form-group">
                            <label><b>Date</b></label>
                            <div class="input-group">
                                <uc1:CtrlDate runat="server" ID="TxtDate" IsVisibleDate="true" />
                            </div>
                            </div>
                            <div class="form-group">
                            <label><b>Annoucement Title</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtName" placeholder="Note Title" SkinID="TxtForCtrlSngl" />
                            </div>
                            </div>
                            <div class="form-group">
                            <label><b>Content Type</b></label> 
                            <div class="input-group">
                                <asp:DropDownList runat="server" ID="DdlContentType" placeholder="Document URL" AutoPostBack="true" SkinID="DdlModultContent" OnSelectedIndexChanged="DdlContentType_SelectedIndexChanged" />
                            </div>
                            </div>
                            <div class="form-group" runat="server" id="DivFile">
                            <label><b>Document Upload</b></label>
                            <div class="input-group">
                                <ajaxtoolkit:asyncfileupload ID="FileUpldDoc" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldDoc_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkDoc" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                            </div>
                            <div class="form-group">
                            <label><b>Description</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtDescription" TextMode="MultiLine" placeholder="Note Description" SkinID="TxtForCtrlMul" />
                            </div>
                            </div>
                                <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />
                            </div>
                            </div>
                               <div class="col-md-6">
                        <div class="panel panel-body">
                            <div runat="server" style="overflow:scroll;height:100%;width:100%">
                                                     <asp:GridView ID="GrdRecords" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                                                          OnSelectedIndexChanging="GrdRecords_SelectedIndexChanging" OnPageIndexChanging="GrdRecords_PageIndexChanging" OnRowDataBound="GrdRecords_RowDataBound">
                                        <Columns>
                                              <asp:TemplateField HeaderText="Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelDate" runat="server" Text='<%#Eval("TrDate","{0:dd MMM yyyy}") %>' Width="100px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Annoucement Title">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' SkinID="LblNormal" Width="200px"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="File Type">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblNotType" runat="server" Text='<%# Eval("FileType") %>' SkinID="LblNormal" Width="100px"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Doc File">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="HyLnkFile" runat="server" Target="_blank" Width="200px"></asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Description">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblDesc" runat="server" ToolTip='<%# Eval("Remarks") %>' SkinID="LblNormal" Width="150px"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("Id")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>   </div>                      
                        </div>
                    </div>
                        </div>
                     
                    </div> 
        </div>
    </div>
</asp:Content>

