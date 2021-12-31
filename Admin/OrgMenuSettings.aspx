<%@ page language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="OrgMenuSettings, App_Web_ybvgoxqu" title="Untitled Page" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript" src="Script/MenuSettings.js"></script>
      <!-- Page header -->
    <div class="content">
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Tutor Category Menu Settings</h5>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                                           <div class="panel panel-body">
                                    <div class="form-group">
                                        <label>Tutor Category Name</label>
                                        <asp:DropDownList id="DdlUsrGrp" runat="server" SkinID="DdlList" AutoPostBack="True" OnSelectedIndexChanged="DdlUsrGrp_SelectedIndexChanged"></asp:DropDownList>
                                        <span class="help-block"></span>
                                    </div>
                                        <uc1:ctrlcommand ID="CtrlCommand1" runat="server" IsVisibleFind="true" />
                                           </div>
                    </div>

                    <div class="col-md-6">
                        <div class="panel panel-body" style="overflow: scroll; height: 324px;">
                        <asp:GridView ID="GrdVwRecords" runat="server" SkinID="GrdVwMasterNoPageing" OnSelectedIndexChanging="GrdVwRecords_SelectedIndexChanging" Width="537px" OnRowDataBound="GrdVwRecords_RowDataBound">
                        <Columns>
                        <asp:TemplateField HeaderText="SNo."><ItemTemplate>
                        <asp:Label id="Label4" runat="server" Width="35px" Text="<%# Container.DataItemIndex + 1 %>"  ></asp:Label> 
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name"><ItemTemplate>
                        <asp:Label id="lblName" runat="server" Width="300px" Text='<%# Eval("cName") %>' SkinID="LblGrdMaster" ></asp:Label> <asp:Label id="LblNam" runat="server" Width="300px" Text='<%# Eval("cName") %>' SkinID="LblIdentify" Visible="False" __designer:wfdid="w29"></asp:Label> 
                        <asp:HiddenField id="HdnParentId" runat="server" Value='<%# Eval("nParentId") %>'></asp:HiddenField> 
                        <asp:HiddenField id="HdnMenuId" runat="server"  Value='<%# Eval("nMenuId") %>'></asp:HiddenField>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Create"><ItemTemplate>
                        <asp:CheckBox id="ChkCreate" runat="server"></asp:CheckBox> 
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Modify"><ItemTemplate>
                        <asp:CheckBox runat="server" id="ChkModify"></asp:CheckBox>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete"><ItemTemplate>
                        <asp:CheckBox runat="server" id="ChkDelete"></asp:CheckBox>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Print"><ItemTemplate>
                        <asp:CheckBox runat="server" id="ChkPrint"></asp:CheckBox>
                        </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                        </asp:GridView>
                         
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</asp:Content>

