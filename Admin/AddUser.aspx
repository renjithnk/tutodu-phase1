<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_AddUser, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script language="javascript" src="Script/AddUser.js" type="text/javascript"></script>
  <div class="content">
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">
                    <asp:Label ID="Label1" Text="Add / Edit User's" runat="server" /></h5>
                <div class="header-elements">
                    <div class="list-icons">
                        <a class="list-icons-item" data-action="reload"></a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                                <div class="panel panel-body">
                                    <div class="form-group">
                                        <label><b>User Name</b></label>
                                        <div class="input-group">
                                            <asp:TextBox runat="server" ID="TxtUName" placeholder="User Name" Text="" SkinID="TxtForCtrlSngl" />
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label><b>Email Id </b></label>
                                        <div class="input-group">
                                            <asp:TextBox runat="server" ID="TxtEmail" placeholder="Email Id" Text="" SkinID="TxtForCtrlSngl" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label><b>User Group</b></label>
                                        <div class="input-group">
                                            <asp:DropDownList ID="DdlUserGrp" runat="server" SkinID="DdlList">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label><b>Password</b></label>
                                        <div class="input-group">
                                            <asp:TextBox runat="server" ID="TxtPass" TextMode="Password" placeholder="Password" Text=""  SkinID="TxtForCtrlSngl" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label><b>Confirm Password</b></label>
                                        <div class="input-group">
                                            <asp:TextBox runat="server" ID="TxtConPass" TextMode="Password" placeholder="Confirm Password" Text=""  SkinID ="TxtForCtrlSngl" />
                                         </div>
                                    </div>
                                    <uc1:ctrlcommand ID="CtrlCommand1" runat="server" IsVisibleFind="true" />
                                </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-body">
                                    <asp:GridView ID="GdvRecords" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                                        OnPageIndexChanging="GdvRecords_PageIndexChanging" OnSelectedIndexChanging="GdvRecords_SelectedIndexChanging" >
                                        <Columns>
                                            <asp:BoundField DataField="Name" HeaderText="User Name" />
                                             <asp:BoundField DataField="Email" HeaderText="Email" />
                                            <asp:BoundField DataField="GroupName" HeaderText="Group" />
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
    </div>

</asp:Content>

