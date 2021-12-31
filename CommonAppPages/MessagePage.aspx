<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_MessagePage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Content area -->
    <div class="content">
        <!-- Basic datatable -->
        <div class="card">
        <div class="card-body">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-body">
                <asp:Repeater runat="server" ID="RptrForum" OnItemDataBound="RptrForum_ItemDataBound" OnItemCommand="RptrForum_ItemCommand">
                <ItemTemplate>
                    <li class="media content-divider justify-content-center text-muted mx-0" id="HdrAcc" runat="server"></li>
                    <asp:Label ID="LblAccMain" runat="server"></asp:Label>
                    <asp:Label ID="LblToMain" runat="server"></asp:Label>
                    <asp:HiddenField ID="HdnId" runat="server" Value='<%#Eval("Id") %>' />
                    <asp:HiddenField ID="HdnStudentId" runat="server" Value='<%#Eval("FrmAccId") %>' />
                    <asp:HiddenField ID="HdnSubject" runat="server" Value='<%#Eval("Name") %>' />
                    <asp:HiddenField ID="HdnParentId" runat="server"  />
                    <asp:Button runat="server" ID="BtnReply" SkinID="BtnGrdEdit" CommandArgument='<%#Eval("Id") %>' CommandName="REPLY" Text="Reply" />
                    <asp:TextBox runat="server" ID="TxtReply" SkinID="TxtForCtrlMul" Visible="false" placeholder="Message" TextMode="MultiLine" />
                    <br />
                    <asp:Button runat="server" ID="BtnSave" SkinID="BtnCommandSave" CommandArgument='<%#Eval("Id") %>' CommandName="SUBMIT" Text="Submit" Visible="false" />
                    <asp:Button runat="server" ID="BtnClear" SkinID="BtnCommandClear" CommandArgument='<%#Eval("Id") %>' CommandName="CLEAR" Text="Clear" Visible="false" />
                </ItemTemplate>
                </asp:Repeater>
                </div>
            </div>
        </div>
        </div>
        </div>
        <!-- /basic datatable -->
    </div>
    <!-- /content area -->
</asp:Content>

