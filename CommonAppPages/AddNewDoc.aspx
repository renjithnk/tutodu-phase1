<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="CommonAppPages_AddNewDoc, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <style>
        .checkbox .btn, .checkbox-inline .btn {
            padding-left: 2em;
            min-width: 8em;
        }

        .checkbox label, .checkbox-inline label {
            text-align: left;
            padding-left: 0.5em;
            padding-right: 1.5em;
        }

        .checkbox input[type="checkbox"] {
            float: none;
        }
    </style>
    
    <div class="content">

        <div class="card">
            <%-- <div class="card-header header-elements-inline">
                <h5 class="card-title"><b>New Course</b></h5>
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
                    <div class="col-md-12">
                        <fieldset>
                            <legend class="font-weight-semibold"><i class="icon-reading mr-2"></i>Document Details</legend>
                        </fieldset>
                    </div>
                </div>
                   <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Document Title</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtCourseName" runat="server" placeholder="Course Name" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                        <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Autor Name</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtAutor" runat="server" placeholder="Author Name" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Document Type</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DrpCourseType" runat="server" SkinID="DdlCourseDocType">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Document Medium</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DdlCourseMedium" runat="server" SkinID="DdlList">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Document Category</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DdlCourseCat" runat="server" SkinID="DdlList">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Sub Category</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DdlCourseSubCat" runat="server" SkinID="DdlList">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Organization Document No.</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtOrgCourseNo" runat="server" SkinID="TxtForCtrlSngl">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>University Document No.</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtUniCourseNo" runat="server" SkinID="TxtForCtrlSngl">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Academic Level</b></label>
                            <div class="input-group">
                                <asp:DropDownList ID="DdlAcadLevel" runat="server" SkinID="DdlList">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><b>Duration</b></label>
                            <div class="input-group">
                                <asp:TextBox ID="TxtDuration" runat="server" Text="0"  placeholder="Duration" SkinID="TxtForCtrlSngl"/>
                                <asp:RadioButtonList runat="server" ID="RdBtnDurationType" Width="150px" RepeatDirection="Horizontal" CssClass="form-control checkbox">
                                    <asp:ListItem Text="Weeks" Selected="True" />
                                    <asp:ListItem Text="Months" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Fees</b></label>
                            <div class="input-group">
                                   <asp:TextBox runat="server"  Text="0.00" SkinID="TxtForCtrlSngl" placeholder="Fees" ID="TxtFee" />
                            </div>
                        </div>
                    </div>
                      <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Currency</b></label>
                            <div class="input-group">
                                  <asp:DropDownList ID="DdlCurrency" runat="server" SkinID="DdlList">
                                  </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Fee Mode</b></label>
                            <div class="input-group">
                                 <asp:DropDownList runat="server" ID="DdlFeeMode" SkinID="DdlFeeModeType">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Web Url</b></label>
                            <div class="input-group">
                               <asp:TextBox runat="server"  Text="" SkinID="TxtForCtrlSngl" placeholder="Fees" ID="TxtWebUrl" />
                            </div>
                        </div>
                    </div>
                  </div>
                <div class="row">
                   <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Document Upload</b></label>
                            <div class="input-group">
                               <ajaxtoolkit:asyncfileupload ID="FileUpldDoc" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldDoc_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkDoc" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label><b>Video Upload</b></label>
                            <div class="input-group">
                               <ajaxtoolkit:asyncfileupload ID="FileUpldVideo" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldVideo_UploadedComplete" />
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkVideo" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend class="font-weight-semibold"><i class="icon-reading mr-2"></i>Document Desciption</legend>
                        </fieldset>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Document Introduction</b></label>
                            <div class="" id="">
                                <asp:TextBox ID="TxtCourseIntro" runat="server" TextMode="MultiLine" placeholder="Course Introduction" CssClass="form-control summernote" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Document Syllabus</b></label>
                            <div class="" id="Div1">
                                <asp:TextBox ID="TxtCourseStyllabus" runat="server" TextMode="MultiLine" placeholder="Course Syllabus" CssClass="form-control summernote" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label><b>Cover Photo</b></label>
                             <div class="input-group">
                               <ajaxtoolkit:asyncfileupload ID="FileUpldImg" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldImg_UploadedComplete" />
                                <span class="input-group-text"><asp:LinkButton ID="LnkCrop" runat="server" Text="CROP" SkinID="LnkCrop" OnClick="LnkCrop_Click" ></asp:LinkButton></span>
                                <span class="input-group-text"><asp:HyperLink ID="HyLnkImage" runat="server" Target="_blank" ></asp:HyperLink></span>
                          </div>
                        </div>
                    </div>
                </div>
                <br />
                <asp:Label runat="server" Text="" ID="LblErrMsg" CssClass="" />
                <div class="text-right">
                    <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />
                </div>

            </div>
        </div>

    </div>

</asp:Content>

