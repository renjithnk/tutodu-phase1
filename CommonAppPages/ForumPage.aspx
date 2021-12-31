<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_ForumPage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Content area -->
    <div class="content">
        <!-- Basic datatable -->
        <div class="card">
        <div class="card-body">
        <div class="row">
        <div class="col-md-12">
        <div class="form-group">
            <label><b>Message</b></label>
            <div class="input-group">
            <asp:TextBox runat="server" ID="TxtMsg" SkinID="TxtForCtrlMul" placeholder="Message" TextMode="MultiLine" />
            </div>
        </div>
         <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />
        </div>
        </div>
            <br />
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-body">
                   <asp:Repeater runat="server" ID="RptrForum" OnItemDataBound="RptrForum_ItemDataBound">
                        <ItemTemplate>
                            <li class="media content-divider justify-content-center text-muted mx-0" id="HdrAcc" runat="server"></li>
                            <asp:Label ID="LblAccMain" runat="server"></asp:Label>
                            <asp:Label ID="LblToMain" runat="server"></asp:Label>
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

