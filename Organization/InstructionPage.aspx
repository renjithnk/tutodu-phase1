<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="Tutor_InstructionPage, App_Web_3j03txs0" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
       <div class="card">
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
                            <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />




                        </div>
                        <br />
                    <div class="card">
                    <div class="PrfSubHdr">
                        <h5 class="mb-0">Educational Details</h5>
                    </div>
                        <div class="card-body">
                            <div>
                                <asp:Repeater runat="server" ID="RptrEduDetails" OnItemCommand="RptrEduDetails_ItemCommand" ><ItemTemplate>
                                        <div class="col-md-6">
                                            <div class="edbox-edit-title">
                                                <h6>Academic Level : <%#Eval("Name")%></h6>
                                                <div class="clear"></div>
                                            </div>
                                            <ul>
                                                <li>Institution : <%#Eval("SchoolName")%></li>
                                                <li>Field of Study : <%#Eval("FieldOfStudy")%></li>
                                                <li>Start Date : <%#Eval("StartDob","{0:dd MMM yyyy}")%> - End Date : <%#Convert.ToInt32(Eval("Pursing"))>0 ? "Pursuing" : Eval("EndDob","{0:dd MMM yyyy}")%></li>
                                                <li>Grade / GPA : <%#Eval("Grade")%></li>
                                            </ul>
                                        </div>
                                      <asp:LinkButton ID="LnkEdit" runat="server" Text="Edit" CommandName="EDIT" CommandArgument='<%#Eval("Id")%>'></asp:LinkButton>
                                
</ItemTemplate>
</asp:Repeater>




                            </div>
                        </div>
                    </div>
                    </div>       
        </div>
</asp:Content>

