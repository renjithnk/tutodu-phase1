<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_CertificateAssign, App_Web_x5zf0ct3" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="card">
            <div class="card-body">
            <div class="row">
                <div class="col-md-1">
                    <div class="form-group">
                        <label><b>Date</b></label>
                        <div class="input-group">
                            <uc1:CtrlDate runat="server" ID="TxtDate" IsVisibleDate="true" />
                        </div>
                    </div>
                </div>
                <div class="col-md-1">
                    <div class="form-group">
                        <label><b>Certificate Title</b></label>
                        <div class="input-group">
                            <asp:DropDownList runat="server" ID="DdlCertificate" SkinID="DdlList" />
                        </div>
                    </div>
                </div>
            </div>
        <div class="row">
        <div class="colMiddleSub">
        <div class="form-group">
            <label><b>Grade</b></label>
            <div class="input-group">
                <asp:DropDownList runat="server" ID="DdlGrade" SkinID="DdlNormal" Width="100px" />.
            </div>
        </div>
        </div>
       <div class="colMiddleSub">
        <div class="form-group">
            <label><b>Mark</b></label>
            <div class="input-group">
                 <asp:TextBox runat="server" ID="TxtMaxMark" placeholder="Maximum Mark" SkinID="TxtForCtrlSngl"  ></asp:TextBox>
            </div>
        </div>
        </div>
        <div class="colMiddleSub">
        <div class="form-group">
            <label><b>Description</b></label>
            <div class="input-group">
                  <asp:TextBox runat="server" ID="TxtDescription" placeholder="Description" SkinID="TxtForCtrlSngl" />
            </div>
        </div>
        </div>
        </div>
        <div class="text-right">
            <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />
        </div>
        <br />
        </div>
        </div>
    </div>
</asp:Content>

