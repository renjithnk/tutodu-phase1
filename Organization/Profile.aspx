<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Organization_Profile, App_Web_3j03txs0" stylesheettheme="SkinFile" theme="SkinFile" %>
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
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Academy Name</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtAcdName" placeholder="Academy Name" Text="" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                           <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Registartion Date</b></label>
                                    <div class="input-group">
                                       <uc1:CtrlDate runat="server" ID="TxtRegDate" />
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Category</b></label>
                                    <div class="input-group">
                                      <asp:DropDownList ID="DdlCategory" runat="server"  SkinID="DdlList" >
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>GST No.</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtGST" placeholder="GST#" Text="" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Registration No.</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtRegNo" placeholder="Reg#" Text="" SkinID="TxtForCtrlSngl" />
                                        <asp:HiddenField ID="HddnRegDate" runat="server" />
                                    </div>
                                </div>
                            </div>                            
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Email id</b></label>
                                    <div class="input-group">
                                       <asp:TextBox runat="server" ID="TxtEmail" placeholder="Email id" Text="" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Web Url</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtWebUrl" placeholder="Web Url" Text="" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Address line 1</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtAdd1" placeholder="Address line 1" TextMode="MultiLine" Text="" SkinID="TxtForCtrlMul" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Address line 2</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtAdd2" placeholder="Address line 2" TextMode="MultiLine" Text=""  SkinID="TxtForCtrlMul" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label><b>Country</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DrpCountry" OnSelectedIndexChanged="DrpCountry_SelectedIndexChanged1" AutoPostBack="true" runat="server"  SkinID="DdlList" >
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label><b>State</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DrpState" runat="server" SkinID="DdlList">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label><b>City</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtCity" placeholder="City" Text="" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                       
                        </div>
                <div class="row">
                         <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Zip/Postal code</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtZip" placeholder="Zip/Postal code" Text="" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                       <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Mobile no.</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtMobile" placeholder="Mobile" Text="" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                       <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Contact No.</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtPhone" placeholder="Phone" Text="" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                 
                </div>
                  <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Profile Photo</b></label>
                            <div class="input-group">
                               <ajaxtoolkit:asyncfileupload ID="FileUpldImg" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldImg_UploadedComplete" />
                                <span class="input-group-text"><asp:LinkButton ID="LnkCrop" runat="server" Text="CROP" SkinID="LnkCrop" OnClick="LnkCrop_Click" ></asp:LinkButton></span>
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkProfileImage" runat="server" Target="_blank" ></asp:HyperLink></span>
                          </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                        <label><b>Academy Doc</b></label>
                        <div class="input-group">
                          <ajaxtoolkit:asyncfileupload ID="FileUpldDoc" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldDoc_UploadedComplete" />
                          <span class="input-group-text"><asp:HyperLink ID="HyLnkDoc" runat="server" Target="_blank" ></asp:HyperLink></span>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                         <label><b>Image 1</b></label>
                        <div class="input-group">
                        <ajaxtoolkit:asyncfileupload ID="FileUploadImage1" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUploadImage1_UploadedComplete" />
                        <span class="input-group-text"><asp:HyperLink ID="HyLnkUploadImg1" runat="server" Target="_blank" ></asp:HyperLink></span>  </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Image 2</b></label>
                            <div class="input-group">
                               <ajaxtoolkit:asyncfileupload ID="FileUploadImage2" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUploadImage2_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkUploadImg2" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>                   
                </div>
                <div class="row">
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Image 3</b></label>
                            <div class="input-group">
                               <ajaxtoolkit:asyncfileupload ID="FileUploadImage3" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUploadImage3_UploadedComplete" />
                               <span class="input-group-text"><asp:HyperLink ID="HyLnkUploadImg3" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Other Information</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtDesc" TextMode="MultiLine" placeholder="Description" Text="" CssClass="form-control " />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>News</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtNews" placeholder="News" Text="" SkinID="TxtForCtrlSngl"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Scroller</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtScroller" placeholder="Scroller" Text="" SkinID="TxtForCtrlSngl" />
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

