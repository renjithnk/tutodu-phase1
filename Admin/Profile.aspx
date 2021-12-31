<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_Profile, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="card">
            <%--  <div class="card-header header-elements-inline">
                <h5 class="card-title"><b>Profile</b></h5>
                <div class="header-elements">
                    <div class="list-icons">
                        <a class="list-icons-item" data-action="collapse"></a>
                        <a class="list-icons-item" data-action="reload"></a>
                        <a class="list-icons-item" data-action="remove"></a>
                    </div>
                </div>
            </div>--%>

            <div class="card-body">
                <asp:HiddenField ID="hddnImgUrl" runat="server" />
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>First Name</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtFname" placeholder="First Name" Text="" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Last Name</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtLname" placeholder="Last Name" Text="" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Date Of Birth</b></label>
                            <div class="input-group">
                                <uc1:CtrlDate runat="server" ID="TxtDob" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Email Address</b></label>
                            <div class="input-group">
                               <asp:TextBox runat="server" ID="TxtEmail" placeholder="Email Address" Text="" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Address line 1</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtAdd1" placeholder="Address  Line 1" TextMode="MultiLine" Text="" SkinID="TxtForCtrlMul" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Address line 2</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtAdd2" placeholder="Address Line 2" TextMode="MultiLine" Text="" SkinID="TxtForCtrlMul" />
                            </div>
                        </div>
                    </div>
                </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label><b>Country</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DrpCountry" OnSelectedIndexChanged="DrpCountry_SelectedIndexChanged1" AutoPostBack="true" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label><b>State</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DrpState" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label><b>City</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtCity" placeholder="City" Text=""  SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>

                        </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label><b>Zip/Postal Code</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtZip" placeholder="Zip/Postal Code" Text=""  SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label><b>Phone</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtPhone1" placeholder="Phone" Text="" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label><b>Alternate Phone</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtPhone2" placeholder="Alternate Phone" Text="" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Profile Photo</b></label>
                            <div class="input-group browse-parent">
                                <ajaxtoolkit:asyncfileupload ID="FileUpldImg" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldImg_UploadedComplete" />
                                <span class="input-group-text"><asp:LinkButton ID="LnkCrop" runat="server" Text="CROP" SkinID="LnkCrop" OnClick="LnkCrop_Click" ></asp:LinkButton></span>
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkProfileImage" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:Label runat="server" ID="LblErrMsgPer" Text="" CssClass="" />
                        </div>
                    </div>
                </div>
                <br />
                <div class="text-right">
                    <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />
                </div>
            </div>
        </div>

    </div>
</asp:Content>

