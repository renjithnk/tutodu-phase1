<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Tutor_Profile, App_Web_hacr2tjf" stylesheettheme="SkinFile" theme="SkinFile" %>
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
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1">
            <ajaxToolkit:TabPanel runat="server" HeaderText="PERSONAL DETAILS" ID="TabPanel1">
            <ContentTemplate>
                 <div class="cardTab">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>First name</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtFname" placeholder="First name" Text=""  SkinID="TxtForCtrlSngl"  />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Last name</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtLname" placeholder="Last name" Text=""  SkinID="TxtForCtrlSngl"  />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>DOB</b></label>
                                    <div class="input-group">
                                         <uc1:CtrlDate runat="server" ID="TxtRegDate" />
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-3">
                                <div class="form-group">
                                    <label><b><asp:Label ID="LblPage" runat="server" Text="Default Page"></asp:Label></b></label>
                                    <div class="input-group">
                                        <asp:RadioButtonList ID="RadBtnPage" runat="server" SkinID="RadBtnPage"></asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Email id</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtEmail" placeholder="Email id" Text=""  SkinID="TxtForCtrlSngl"  />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Address line 1</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtAdd1" placeholder="Address line 1" TextMode="MultiLine" Text=""  SkinID="TxtForCtrlMul"  />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Address line 2</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtAdd2" placeholder="Address line 2" TextMode="MultiLine" Text=""  SkinID="TxtForCtrlMul"  />
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
                                                <asp:DropDownList ID="DrpState" runat="server"  SkinID="DdlList" >
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label><b>City</b></label>
                                            <div class="input-group">
                                                <asp:TextBox runat="server" ID="TxtCity" placeholder="City" Text=""  SkinID="TxtForCtrlSngl"  />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                     <label><b>Zip/Postal code</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtZip" placeholder="Zip Code" Text=""  SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label><b>Mobile No.</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtMobile" placeholder="Mobile" Text=""  SkinID="TxtForCtrlSngl"  />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label><b>Contact No.</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtPhone" placeholder="Phone" Text="" CssClass="form-control " />
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
                            <label><b>Resume</b></label>
                            <div class="input-group">
                              <ajaxtoolkit:asyncfileupload ID="FileUpldDoc" runat="server" CssClass="form-control browse-child" OnUploadedComplete="FileUpldDoc_UploadedComplete" />
                              <span class="input-group-text"><asp:HyperLink ID="HyLnkDoc" runat="server" Target="_blank" ></asp:HyperLink></span>
                            </div>
                        </div>
                        </div>
                           <div class="col-md-12">
                        <div class="form-group">
                            <label><b>Other Information</b></label>
                            <div class="input-group">
                                 <asp:TextBox runat="server" ID="TxtOtherInformation" placeholder="Other Information" Text="" TextMode="MultiLine" SkinID="TxtForCtrlMul" />
                            </div>
                        </div>
                        </div>
                    </div>
                         <div class="text-right">
                            <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />
                    </div>
                    </div>
</ContentTemplate>     







</ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" HeaderText="EDUCATION DETAILS" ID="TabPanel2">
            <ContentTemplate>
                  <div class="cardTab">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>School/College</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtSchool" placeholder="School/College" SkinID="TxtForCtrlSngl" />






                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Field of Study</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtField" placeholder="Field of Study" SkinID="TxtForCtrlSngl"/>






                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>Start date</b></label>
                                    <div class="input-group">
                                        <uc1:CtrlDate runat="server" ID="TxtStartDate_Edu" />






                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>End date</b></label>
                                    <div class="input-group">
                                         <uc1:CtrlDate runat="server" ID="TxtEndDate_Edu" />







                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>.</b></label>
                                    <div class="input-group">
                                         <asp:CheckBox ID="ChkBxPursuing" runat="server" SkinID="ChkNormal" Text="Pursuing"></asp:CheckBox>






                                    </div>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Grade</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtGrade" placeholder="Grade" SkinID="TxtForCtrlSngl" />






                                                                            </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-right">
                            <uc1:CtrlCommand ID="CtrlCommandEdu" runat="server" />






                        </div>
                        <br />
                    <div class="card">
                    <div class="PrfSubHdr">
                        <h5 class="mb-0">Educational Details</h5>
                    </div>
                    <br />
                    <div class="row">   
                    <asp:Repeater runat="server" ID="RptrEduDetails" OnItemCommand="RptrEduDetails_ItemCommand"><ItemTemplate>
                        <div class="col-sm-4 col-xl-4">
                        <div class="card card-body" style="background-color:#fafafa">
                            <div class="media">
                                <div style="text-align: left;">
                                    <h8 class="ViewTabMain"><b>Academic Level  :- </b><asp:Label ID="Label1" Text='<%#Eval("Name")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                    <br /><h8 class="ViewTabMain"><b>Institution :- </b><asp:Label ID="Label2" Text='<%#Eval("SchoolName")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                    <br /><h8 class="ViewTabMain"><b>Field of Study :- </b><asp:Label ID="Label3" Text='<%#Eval("FieldOfStudy")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                    <br /><h8 class="ViewTabMain">Start Date : <%#Eval("StartDob","{0:dd MMM yyyy}")%> - End Date : <%#Convert.ToInt32(Eval("Pursing"))>0 ? "Pursuing" : Eval("EndDob","{0:dd MMM yyyy}")%></h8>
                                    <br /><h8 class="ViewTabMain"><b>Grade / GPA :- </b><asp:Label ID="Label4" Text='<%#Eval("Grade")%>' CssClass="ViewTabSub" runat="server"></asp:Label></h8>
                                    <br /><asp:Button ID="LnkEdit" runat="server" Text="Edit" SkinID="BtnGrdEdit" CommandName="EDIT" CommandArgument='<%#Eval("Id")%>'></asp:Button>
                                </div>
                            </div>
                        </div>
                        </div>
                    
</ItemTemplate>
</asp:Repeater>





                </div>
                </div>
                    </div>              
</ContentTemplate>
           




</ajaxToolkit:TabPanel>
                 <ajaxToolkit:TabPanel runat="server" HeaderText="EXPERIENCE DETAILS" ID="TabPanel3">
                  <ContentTemplate>
                  <div class="cardTab">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Company</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtCompany" placeholder="Company" Text="" SkinID="TxtForCtrlSngl"/>
                                    </div>
                                </div>
                            </div>
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Designation / Title</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtTitle" placeholder="Designation / Title" Text="" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>Start date</b></label>
                                    <div class="input-group">
                                        <uc1:CtrlDate runat="server" ID="TxtStartDate" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>End date</b></label>
                                    <div class="input-group">
                                         <uc1:CtrlDate runat="server" ID="TxtEndDate" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>.</b></label>
                                    <div class="input-group">
                                         <asp:CheckBox ID="ChkExpPursuing" runat="server" SkinID="ChkNormal" Text="Pursuing"></asp:CheckBox>
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Location</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtLocation" placeholder="Location" Text=""  SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-right">
                          <uc1:CtrlCommand ID="CtrlCommandExp" runat="server" />
                        </div>
                        <br />
                       <div class="card">
                <div class="PrfSubHdr">
                    <h5 class="mb-0">Experience Details</h5>
                </div>
                    <br />
                    <div class="row">   
                    <asp:Repeater runat="server" ID="RptrExpDetails" OnItemCommand="RptrExpDetails_ItemCommand">
                    <ItemTemplate>
                        <div class="col-sm-4 col-xl-4">
                            <div class="card card-body" style="background-color:#fafafa">
                                <div class="media">
                                    <div style="text-align: left;">
                                        <h8 class="ViewTabMain"><b>Title  :- </b><asp:Label ID="Label1" Text='<%#Eval("Name")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                        <br /><h8 class="ViewTabMain"><b>Company / Institution :- </b><asp:Label ID="Label2" Text='<%#Eval("OrganizationName")%>' CssClass="ViewTabSub" runat="server"></asp:Label></h8>
                                        <br /><h8 class="ViewTabMain"><b>Dept / Section  :- </b><asp:Label ID="Label3" Text='<%#Eval("Designation")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                        <br /><h8 class="ViewTabMain">Start Date : <%#Eval("StartDob","{0:dd MMM yyyy}")%> - End Date : <%#Convert.ToInt32(Eval("Pursing"))>0 ? "Pursuing" : Eval("EndDob","{0:dd MMM yyyy}")%></h8>
                                        <br /><asp:Button ID="LnkEdit" runat="server" Text="Edit" SkinID="BtnGrdEdit" CommandName="EDIT" CommandArgument='<%#Eval("Id")%>'></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    </asp:Repeater>
                    </div>
                    </div>
                </div>
            
</ContentTemplate>
            










</ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </div>
</asp:Content>

