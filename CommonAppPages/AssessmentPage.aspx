<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_AssessmentPage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>
<%@ Register Src="~/CtrlTime.ascx" TagPrefix="uc1" TagName="CtrlTime" %>
<%@ Register Src="~/CtrlDuration.ascx" TagPrefix="uc1" TagName="CtrlDuration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
       <div class="card">
             <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
             <ajaxToolkit:TabPanel runat="server" HeaderText="Assessment Master" ID="TabPanel2">
            <ContentTemplate>
             <div class="cardTab">
                        <div class="row">
                             <div class="col-md-4">
                                <div class="form-group">
                                    <label><b>Assesment Title </b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtAssesment" placeholder="Assesment Title" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>Assesment Type</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" ID="DdlAssesmentType" SkinID="DdlAssmentTypeContent" ></asp:DropDownList>
                                    </div>
                                </div>
                            </div> 
                             <div class="col-md-3">
                            <div class="form-group">
                                <label><b>Duration </b></label>
                                <div class="input-group">
                                    <uc1:CtrlDuration runat="server" ID="TxtDuration" />
                                </div>
                            </div>
                            </div>  
                            <div class="col-md-1">
                            <div class="form-group">
                                <label><b>Mark(Max.)</b></label>
                                <div class="input-group">
                                    <asp:TextBox runat="server" ID="TxtMaxMark" placeholder="Maximum Marks" SkinID="TxtForCtrlSngl" />
                                </div>
                            </div>
                            </div>
                        <div class="col-md-2">
                        <div class="form-group">
                            <label><b>Weightage %</b></label>
                            <div class="input-group">
                                <asp:TextBox runat="server" ID="TxtWeightage" placeholder="Weightage %" SkinID="TxtForCtrlSngl" />
                            </div>
                        </div>
                        </div>
                        </div>
                          <div class="row">
                            <div class="col-md-2">
                            <div class="form-group">
                                <label><b>Start Date</b></label>
                                <div class="input-group">
                                    <uc1:CtrlDate runat="server" ID="TxtStartDate" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label><b>End Date</b></label>
                                <div class="input-group">
                                  <uc1:CtrlDate runat="server" ID="TxtEndDate" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label><b>Submit Date</b></label>
                                <div class="input-group">
                                     <uc1:CtrlDate runat="server" ID="TxtSubmitDate" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label><b>Start Time</b></label>
                                <div class="input-group">
                                    <uc1:CtrlTime runat="server" ID="CtrlStartTime" />
                                </div>
                            </div>
                        </div>
                         <div class="col-md-3">
                            <div class="form-group">
                                <label><b>End Time</b></label>
                                <div class="input-group">
                                    <uc1:CtrlTime runat="server" ID="CtrlEndTime" />
                                </div>
                            </div>
                        </div>                        
                    </div>
                        <div class="row">
                             <div class="col-md-12">
                                <div class="form-group">
                                    <label><b>Assessment Details</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtAssesmentDetails" TextMode="MultiLine" placeholder="Assessment Details" SkinID="TxtForCtrlMul" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:CheckBox ID="ChkActive" runat="server" SkinID="ChkNormal" Text="Active" />
                        <div class="text-right">
                           <uc1:CtrlCommand ID="CtrlCommand1" runat="server" />                         
                        </div>
                        <br />
                     
                    </div>    
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel runat="server" HeaderText="Assessment List" ID="TabPanel1">
                <ContentTemplate>
                    <div class="col-md-12">
                        <div class="panel panel-body">
                                                      <asp:GridView ID="GrdVwAssesment" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                                                          OnSelectedIndexChanging="GrdVwAssesment_SelectedIndexChanging" OnPageIndexChanging="GrdVwAssesment_PageIndexChanging" OnRowDataBound="GrdVwAssesment_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Assesment Title">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Assesment Type">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("ExamType") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Start Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelStartDate" runat="server" Text='<%#Eval("StartDate","{0:dd MMM yyyy}") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="End Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelEndDate" runat="server" Text='<%#Eval("EndDate","{0:dd MMM yyyy}") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Submit Date" >
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelLateSubmitDate" runat="server" Text='<%#Eval("LateSubmitDate","{0:dd MMM yyyy}") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Status" >
                                                <ItemTemplate>
                                                    <asp:Label ID="LblActive" runat="server" Text='' Width="70px"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Duration Type"  Visible="False" >
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelDurationType" runat="server" Text='<%# Eval("DurationType") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Assessment Details"  Visible="False" >
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Remarks") %>' Width="300px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
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
                </ContentTemplate>
                </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" HeaderText="Question Master" ID="TabPanel3">
            <ContentTemplate>
             <div class="cardTab">
                        <div class="row">
                             <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Question</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtQuestion" placeholder="Question" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>Assesment Title</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" ID="DdlAssesment" SkinID="DdlNormal" ></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>Answer Type</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" ID="DdlAnswerType" SkinID="DdlAnswerType" AutoPostBack="true" OnSelectedIndexChanged="DdlAnswerType_SelectedIndexChanged" ></asp:DropDownList>
                                    </div>
                                </div>
                            </div>   
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>Mark</b></label>
                                    <div class="input-group">
                                         <asp:TextBox runat="server" ID="TxtMark" placeholder="Mark" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>       
                        </div>
                       <div class="row" id="DivOptMul" runat="server">
                       <div class="col-md-6" >
                                <div class="form-group">
                                    <label><b>Option Keys</b></label>
                                    <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtOpt1" placeholder="Option-1" SkinID="TxtForCtrlSngl" />
                                    </div>
                                     <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtOpt2" placeholder="Option-2" SkinID="TxtForCtrlSngl" />
                                    </div>
                                     <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtOpt3" placeholder="Option-3" SkinID="TxtForCtrlSngl" />
                                    </div>
                                      <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtOpt4" placeholder="Option-4" SkinID="TxtForCtrlSngl" />
                                    </div>
                                     <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtOpt5" placeholder="Option-5" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>          
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Answer Key</b></label>
                                    <div class="input-group">
                                         <asp:CheckBoxList runat="server" ID="ChkOption" SkinID="ChkQstOpt" />
                                    </div>
                                </div>
                            </div>                             
                        </div>
                        <div class="row" id="DivOptSng" runat="server">
                       <div class="col-md-6" >
                                <div class="form-group">
                                    <label><b>Option Keys</b></label>
                                    <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtSngOpt1" placeholder="Option-1" SkinID="TxtForCtrlSngl" />
                                    </div>
                                     <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtSngOpt2" placeholder="Option-2" SkinID="TxtForCtrlSngl" />
                                    </div>
                                     <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtSngOpt3" placeholder="Option-3" SkinID="TxtForCtrlSngl" />
                                    </div>
                                      <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtSngOpt4" placeholder="Option-4" SkinID="TxtForCtrlSngl" />
                                    </div>
                                     <div class="input-groupNew">
                                         <asp:TextBox runat="server" ID="TxtSngOpt5" placeholder="Option-5" SkinID="TxtForCtrlSngl" />
                                    </div>
                                </div>
                            </div>          
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><b>Answer Key</b></label>
                                    <div class="input-group">
                                        <asp:RadioButtonList runat="server" ID="RadBtnAns" SkinID="RadBtnQstOpt" >
                                         </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>                             
                        </div>
                        <div class="row">
                             <div class="col-md-12">
                                <div class="form-group">
                                    <label><b>Exam Details</b></label>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" ID="TxtExamDetails" TextMode="MultiLine" placeholder="Exam Details" SkinID="TxtForCtrlMul" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-right">
                            <uc1:CtrlCommand ID="CtrlCommandContent" runat="server" />
                        </div>
                        <br />                    
                    </div>    
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" HeaderText="Question List" ID="TabPanel4">
            <ContentTemplate>
                <div class="card-body">
                    <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Assessmet Title :</label>
                        </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <asp:DropDownList runat="server" ID="DdlAssessmentSrch" SkinID="DdlNormal" ></asp:DropDownList>
                        </div>
                    </div>
                      <div class="col-md-2">
                        <div class="form-group">
                            <asp:Button ID="BtnSearch"  runat="server" Text="SEARCH" SkinID="BtnCommandFind" CommandName="FIND_CON" OnClick="ManiPulateDataEvent_Clicked"></asp:Button>
                        </div>
                    </div>
                </div>
                 <div class="col-md-12">
                        <div class="panel panel-body">
                                                      <asp:GridView ID="GrdVwContent" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                                                       OnSelectedIndexChanging="GrdVwContent_SelectedIndexChanging" OnPageIndexChanging="GrdVwContent_PageIndexChanging">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Question">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Assessment Title">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label21" runat="server" Text='<%# Eval("CourseExamMasterName") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Answer Type">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("ExamType") %>' Width="150px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Mark">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblMark" runat="server" Text='<%# Eval("Mark") %>' Width="50px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Exam Details">
                                                <ItemTemplate>
                                                    <asp:Label ID="LblRemarks" runat="server" Text='<%# FnGetSubString(Eval("Remarks").ToString(), 20) %>' Width="300px" SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
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
            </ContentTemplate>
            </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </div>
        </div>
</asp:Content>

