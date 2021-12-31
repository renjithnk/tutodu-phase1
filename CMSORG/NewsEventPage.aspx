<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="CMSORG_NewsEventPage, App_Web_y5af3nvc" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="content">
           <div class="card">
               <div class="card-body">
                           <div class="row">
                            <div class="col-md-6">
                            <div class="panel panel-body">
                            <div class="form-group">
                            <label><b>News & Event Heading</b></label>
                            <div class="input-group">
                               <asp:TextBox ID="TxtAboutUs" runat="server" SkinID="TxtForCtrlSngl"  />
                            </div>
                            </div>
                            <div class="form-group">
                            <label><b>Image ( </b></label>
                            <i class="RedColorAssign">Width:100px,Height:100px,Size:600KB </i><label><b> )</b></label>
                            <div class="input-group">
                               <ajaxtoolkit:asyncfileupload ID="FileSection1Image" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileSection1Image_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkSection1Image" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                            </div>
                            <div class="form-group">
                            <label><b>Description</b></label> 
                            <div class="input-group">
                                <asp:TextBox ID="TxtSection1Desc" runat="server" TextMode="MultiLine" SkinID="TxtForCtrlMul"  />
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
                                            <asp:TemplateField HeaderText="Heading">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblHed" runat="server" Text= '' SkinID="LblNormal" Width="200px"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Image">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="HyLnkFile" runat="server" Target="_blank" Width="200px"></asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Description">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblDesc" runat="server" Text='' SkinID="LblNormal" Width="150px"></asp:Label>
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

