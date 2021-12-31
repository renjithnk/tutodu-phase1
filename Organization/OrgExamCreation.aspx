<%@ page title="" language="C#" masterpagefile="~/MasterPages/DashboardMaster.master" autoeventwireup="true" inherits="Organization_OrgExamCreation, App_Web_3j03txs0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">

    <style>
        div.dataTables_wrapper {
            width: 100%;
            margin: 0 auto;
        }


        .checkbox .btn, .checkbox-inline .btn {
            padding-left: 2em;
            min-width: 8em;
            margin-top: 11px;
            margin-bottom: 8px;
        }

        .checkbox label, .checkbox-inline label {
            text-align: left;
            padding-left: 0.5em;
            padding-right: 1.5em;
            margin-top: 11px;
            margin-bottom: 8px;
        }


        .checkbox input[type="checkbox"] {
            float: none;
        }

        .hidden {
            display: none;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <asp:HiddenField ID="HddnStudentID" runat="server" />
    <asp:HiddenField ID="HddnCrsID" runat="server" />
    <asp:HiddenField ID="HddnPriTutID" runat="server" />
    <asp:HiddenField ID="HddnOrgAccID" runat="server" />
    <asp:HiddenField ID="HddnExamID" runat="server" />
    <asp:HiddenField ID="HddnCrsidforQstn" runat="server" />
    <asp:HiddenField ID="HddnExamQstnID" runat="server" />


    <!-- Page header -->
    <div class="page-header page-header-light">
        <div class="page-header-content header-elements-md-inline">
            <div class="page-title d-flex">
                <h4><i class="icon-arrow-left52 mr-2"></i><span class="font-weight-semibold">Exam</span> - New Exam</h4>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
        <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
            <div class="d-flex">
                <div class="breadcrumb">
                    <a href="../Tutor/Dashboard.aspx" class="breadcrumb-item"><i class="icon-home2 mr-2"></i>Exam</a>
                    <span class="breadcrumb-item active">New Exam</span>
                </div>
                <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
            </div>
        </div>
    </div>
    <!-- /page header -->

    <div class="content">
        <div class="card">
            <div class="card-body">
                <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="row">
                            <div class="col-md-11">
                                <div class="form-group">
                                    <label><b>Course</b></label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TxtCourseName" placeholder="Course Name" runat="server" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <label><b>&nbsp;</b></label>
                                    <div class="input-group">
                                        <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_CourseDet"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label><b>Exam Name</b></label>
                                    <div class="input-group">
                                        <%--  <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-vcard"></i></span>
                                        </div>--%>
                                        <asp:TextBox ID="TxtExamName" runat="server" placeholder="Exam Name" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Exam Type</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="DrpExamType">
                                            <asp:ListItem Text="QUIZ" />
                                            <asp:ListItem Text="ASSIGNMENT" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Exam Date</b></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                        </div>
                                        <asp:TextBox ID="TxtDate" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Due Date</b></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                        </div>
                                        <asp:TextBox ID="TxtDueDate" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Close Date</b></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                        </div>
                                        <asp:TextBox ID="TxtCloseDate" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Exam Timing</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DrpStTime" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="--From--" Selected="True" />
                                            <asp:ListItem Text="00:00" />
                                            <asp:ListItem Text="01:00 AM" />
                                            <asp:ListItem Text="02:00 AM" />
                                            <asp:ListItem Text="03:00 AM" />
                                            <asp:ListItem Text="04:00 AM" />
                                            <asp:ListItem Text="05:00 AM" />
                                            <asp:ListItem Text="06:00 AM" />
                                            <asp:ListItem Text="07:00 AM" />
                                            <asp:ListItem Text="08:00 AM" />
                                            <asp:ListItem Text="09:00 AM" />
                                            <asp:ListItem Text="10:00 AM" />
                                            <asp:ListItem Text="11:00 AM" />
                                            <asp:ListItem Text="12:00 AM" />
                                            <asp:ListItem Text="01:00 PM" />
                                            <asp:ListItem Text="02:00 PM" />
                                            <asp:ListItem Text="03:00 PM" />
                                            <asp:ListItem Text="04:00 PM" />
                                            <asp:ListItem Text="05:00 PM" />
                                            <asp:ListItem Text="06:00 PM" />
                                            <asp:ListItem Text="07:00 PM" />
                                            <asp:ListItem Text="08:00 PM" />
                                            <asp:ListItem Text="09:00 PM" />
                                            <asp:ListItem Text="10:00 PM" />
                                            <asp:ListItem Text="11:00 PM" />
                                        </asp:DropDownList>
                                        &nbsp;
                                <asp:Label ID="Label2" Text="-" runat="server" placeholder="" CssClass="" />&nbsp;
                                        <asp:DropDownList ID="DrpEnTime" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="--To--" Selected="True" />
                                            <asp:ListItem Text="00:00" />
                                            <asp:ListItem Text="01:00 AM" />
                                            <asp:ListItem Text="02:00 AM" />
                                            <asp:ListItem Text="03:00 AM" />
                                            <asp:ListItem Text="04:00 AM" />
                                            <asp:ListItem Text="05:00 AM" />
                                            <asp:ListItem Text="06:00 AM" />
                                            <asp:ListItem Text="07:00 AM" />
                                            <asp:ListItem Text="08:00 AM" />
                                            <asp:ListItem Text="09:00 AM" />
                                            <asp:ListItem Text="10:00 AM" />
                                            <asp:ListItem Text="11:00 AM" />
                                            <asp:ListItem Text="12:00 AM" />
                                            <asp:ListItem Text="01:00 PM" />
                                            <asp:ListItem Text="02:00 PM" />
                                            <asp:ListItem Text="03:00 PM" />
                                            <asp:ListItem Text="04:00 PM" />
                                            <asp:ListItem Text="05:00 PM" />
                                            <asp:ListItem Text="06:00 PM" />
                                            <asp:ListItem Text="07:00 PM" />
                                            <asp:ListItem Text="08:00 PM" />
                                            <asp:ListItem Text="09:00 PM" />
                                            <asp:ListItem Text="10:00 PM" />
                                            <asp:ListItem Text="11:00 PM" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Exam Duration</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="DrpDuration" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="1" Selected="True" />
                                            <asp:ListItem Text="2" />
                                            <asp:ListItem Text="3" />
                                            <asp:ListItem Text="4" />
                                            <asp:ListItem Text="5" />
                                        </asp:DropDownList>
                                        &nbsp;
                                <asp:Label ID="Label3" Text="-" runat="server" placeholder="" CssClass="" />&nbsp;
                                        <asp:DropDownList ID="DrpDurationType" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="Hour/s" Selected="True" />
                                            <asp:ListItem Text="Minute/s" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Maximum Marks</b></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                        </div>
                                        <asp:TextBox ID="TxtMaxMarks" Text="0"  runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label><b>Mark Weightage</b></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-envelop4"></i></span>
                                        </div>
                                        <asp:TextBox ID="TxtMarkWeight" Text="0"  runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label><b>Exam Description</b></label>
                                    <div class="input-group">
                                        <%--  <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-vcard"></i></span>
                                        </div>--%>
                                        <asp:TextBox ID="TxtDesc" TextMode="MultiLine" runat="server" placeholder="Exam Description" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <br />
                <asp:Label runat="server" Text="" ID="LblErrMsgExam" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnAddExam" Text="Add Exam" OnClick="BttnAddExam_Click" class="btn btn-primary" runat="server" />
                </div>


                <%--                <br />
                <asp:Label runat="server" Text="" ID="Label1" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="Button1" Text="Sent Notification" class="btn btn-primary" runat="server" />
                </div>--%>
            </div>
        </div>

        <div class="card">
            <div class="card-body">
                <asp:UpdatePanel runat="server" ID="UpdtExamQstns" UpdateMode="Conditional">
                    <ContentTemplate>

                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label><b>Exam</b></label>
                                    <div class="input-group">
                                        <%--  <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-vcard"></i></span>
                                        </div>--%>
                                        <asp:TextBox ID="TxtExamForQstn" runat="server" placeholder="Exam" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <div class="form-group">
                                    <label><b>&nbsp;</b></label>
                                    <div class="input-group">
                                        <asp:LinkButton ID="Button1" class="btn btn-primary" runat="server" data-toggle="modal" data-target="#modal_ExamDet"><b><i class="icon-folder-search"></i></b> </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>Answer Type</b></label>
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="DrpQuestionType" OnSelectedIndexChanged="DrpQuestionType_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Text="SHORT ANSWER" Selected="True" />
                                            <asp:ListItem Text="DESCRIPTIVE" />
                                            <asp:ListItem Text="OBJECTIVE" />
                                            <asp:ListItem Text="MULTIPLE ANSWER" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label><b>Question</b></label>
                                    <div class="input-group">
                                        <%--  <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-vcard"></i></span>
                                        </div>--%>
                                        <asp:TextBox ID="TxtQuestion" runat="server" placeholder="Question" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label><b>Mark</b></label>
                                    <div class="input-group">
                                        <%--  <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-vcard"></i></span>
                                        </div>--%>
                                        <asp:TextBox ID="TxtMarkSub" runat="server" Text="0"  placeholder="Mark" CssClass="form-control">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <%--<div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label><b>Answer Keys</b></label>
                                       <div class="input-group" id="divoptions" runat="server">
                                     <asp:TextBox ID="TxtShtAnswer" runat="server" CssClass="form-control" Visible="true">
                                        </asp:TextBox>
                                        <asp:TextBox ID="TxtLongAnswer" TextMode="MultiLine" runat="server" CssClass="form-control" Visible="false">
                                        </asp:TextBox>

                                           <asp:RadioButton ID="RdBttnObjective" GroupName="as" Text="option1"  runat="server" CssClass=" checkbox" Visible="false">                                        
                                        </asp:RadioButton>

                                       <asp:CheckBox ID="ChkBxAnswer" GroupName="asdf" Text="answer1"  runat="server" CssClass=" checkbox" Visible="false">                                        
                                        </asp:CheckBox> 
                                      </div>
                                </div>
                            </div>
                        </div>--%>



                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group" id="newdiv" runat="server">
                                    <label id="LblAnswerKey" runat="server" visible="false"><b>Option Keys</b></label>&nbsp;&nbsp;
                                <%--    <asp:TextBox ID="TxtShortAnswer" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>--%>
                                    <%--  <asp:TextBox ID="TxtLongAnswer" TextMode="MultiLine" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>--%>
                                    <asp:TextBox ID="TxtObjOption1" placeholder="Option 1" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:TextBox ID="TxtObjOption2" placeholder="Option 2" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:TextBox ID="TxtObjOption3" placeholder="Option 3" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:TextBox ID="TxtObjOption4" placeholder="Option 4" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:TextBox ID="TxtObjOption5" placeholder="Option 5" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:TextBox ID="TxtChkBxOption1" placeholder="Option 1" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:TextBox ID="TxtChkBxOption2" placeholder="Option 2" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:TextBox ID="TxtChkBxOption3" placeholder="Option 3" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:TextBox ID="TxtChkBxOption4" placeholder="Option 4" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:TextBox ID="TxtChkBxOption5" placeholder="Option 5" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass="form-control" Visible="false">
                                    </asp:TextBox>
                                    <asp:PlaceHolder runat="server" ID="PlaceHolderTxt" />
                                    <%--  <br />
                                    <asp:LinkButton Visible="false" ID="LnkBttnAddTxtRdBttn" Text="Add Option" OnClick="LnkBttnAddTxtRdBttn_Click" runat="server" />--%>
                                </div>
                            </div>
                            <%--   <div class="col-md-1">
                                <div class="form-group" id="Div1" runat="server">
                                    <label>&nbsp;</label>&nbsp;&nbsp;<br />
                                    <asp:Button ID="btnAdd" Visible="false" class="btn btn-success" OnClick="btnAdd_Click" Style="float: right; margin-top: 5px; margin-bottom: 5px" runat="server" Text="Add Option" />
                                </div>
                            </div>--%>
                            <div class="col-md-6">
                                <div class="form-group" id="Div1" runat="server">
                                    <label id="LblCorrectAnswrKey" runat="server" visible="false"><b>Answer Key</b></label>&nbsp;&nbsp;  
                                    <asp:RadioButtonList ID="RdBttnCorrectAnswrKey" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass=" checkbox" Visible="false">
                                        <asp:ListItem Text="Option 1" Value="1" Selected="True" />
                                        <asp:ListItem Text="Option 2" Value="2" />
                                        <asp:ListItem Text="Option 3" Value="3" />
                                        <asp:ListItem Text="Option 4" Value="4" />
                                        <asp:ListItem Text="Option 5" Value="5" />
                                    </asp:RadioButtonList>
                                    <asp:CheckBoxList ID="ChkbxCorrectAnswrKey" runat="server" Style="margin-top: 5px; margin-bottom: 5px" CssClass=" checkbox" Visible="false">
                                        <asp:ListItem Text="Option 1" Value="1" Selected="True" />
                                        <asp:ListItem Text="Option 2" Value="2" />
                                        <asp:ListItem Text="Option 3" Value="3" />
                                        <asp:ListItem Text="Option 4" Value="4" />
                                        <asp:ListItem Text="Option 5" Value="5" />
                                    </asp:CheckBoxList>
                                </div>
                            </div>
                        </div>

                    </ContentTemplate>
                </asp:UpdatePanel>
                <%--<asp:UpdatePanel ID="upDataList" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <table id="TblOptions" class="table table-striped table-bordered hidden">
                                        <tbody>
                                            <asp:HiddenField ID="hddnID" runat="server" />
                                            <asp:Repeater ID="rptrQout" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td style="width: 10%; text-align: center">
                                                            <asp:Label ID="lblRowNumber" Text='<%#Container.ItemIndex + 1 %>' runat="server" /></td>

                                                        <td>
                                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("FrmTime") %>' />
                                                        </td>
                                                        <td style="width: 10%; text-align: center">
                                                            <asp:LinkButton ID="lnkBttnDlt" Text="Delete" CommandArgument='<%# Eval("Id") %>' runat="server" />
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>--%>

                <br />
                <asp:Label runat="server" Text="" ID="LblErrMsg" CssClass="" />
                <div class="text-right">
                    <asp:Button ID="BttnAddQuestion" Text="Add Question" OnClick="BttnAddQuestion_Click" class="btn btn-primary" runat="server" />
                </div>
                <br />
                <div class="row">
                    <div class="col-md-12">
                        <%--   <asp:UpdatePanel runat="server">
                            <ContentTemplate>--%>
                        <div class="table-responsive">
                            <table id="example" class="table display nowrap" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>Type</th>
                                        <th>Question</th>
                                        <th>Opt1</th>
                                        <th>Opt2</th>
                                        <th>Opt3</th>
                                        <th>Opt4</th>
                                        <th>Opt5</th>
                                        <th>Answer</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptrExamQstns" OnItemCommand="rptrExamQstns_ItemCommand" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("ExamType") %></td>
                                                <td><%#Eval("Name") %></td>
                                                <td><%#Eval("Option1") %></td>
                                                <td><%#Eval("Option2") %></td>
                                                <td><%#Eval("Option3") %></td>
                                                <td><%#Eval("Option4") %></td>
                                                <td><%#Eval("Option5") %></td>
                                                <td><%#Eval("Answer") %></td>
                                                <td class="text-center">
                                                    <asp:LinkButton runat="server" ID="LinkButton2" CommandArgument='<%#Eval("Name")+","+Eval("CourseExamMasterId") %>' CommandName="Edit">EDIT</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </div>
                        <%-- </ContentTemplate>
                        </asp:UpdatePanel>--%>
                    </div>
                </div>

            </div>
        </div>

    </div>

    <!-- Basic modal -->
    <div id="modal_CourseDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Organization Courses</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">

                    <div class="table-responsive">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Course</th>
                                    <th>Course Type</th>
                                    <th>Category</th>
                                    <th>Medium</th>
                                    <th>Pri. Tutor</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RptrCourseDet" OnItemCommand="RptrCourseDet_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("CourseTType") %></td>
                                            <td><%#Eval("CategoryName") %></td>
                                            <td><%#Eval("CourseMedium")%></td>
                                            <td><%#Eval("PrimaryTutorName") %></td>
                                            <td class="text-center">
                                                <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("ID")+","+ Eval("PrimaryTutorId")+","+ Eval("Name") %>' CommandName="Select">Select</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- /basic modal -->


    <!-- Basic modal -->
    <div id="modal_ExamDet" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Organization Exams</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">

                    <div class="table-responsive">
                        <table class="table datatable-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Exam</th>
                                    <th>Course</th>
                                    <th>Duration</th>
                                    <th>St. Date</th>
                                    <th>En. Date</th>
                                    <th>Due Date</th>
                                    <th>Type</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="RptrExamDet" OnItemCommand="RptrExamDet_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                            <td><%#Eval("Name") %></td>
                                            <td><%#Eval("CourseMaster") %></td>
                                            <td><%#Eval("Duration")+"-"+Eval("DurationType") %></td>
                                            <td><%#Eval("StartDate","{0:dd MMM yyyy}")%></td>
                                            <td><%#Eval("EndDate","{0:dd MMM yyyy}") %></td>
                                            <td><%#Eval("LateSubmitDate","{0:dd MMM yyyy}")%></td>
                                            <td><%#Eval("ExamType") %></td>
                                            <td class="text-center">
                                                <asp:LinkButton runat="server" ID="LinkButton4" CommandArgument='<%#Eval("ID")+","+ Eval("Name")+","+ Eval("CourseMasterId") %>' CommandName="Select">Select</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- /basic modal -->

    <script>
        $(document).ready(function () {
            $('#example').DataTable({
                "scrollX": true
            });
        });
    </script>


    <script>
        $(document).ready(function () {
            $('.summernote').summernote();
        });

        function LoadSummerNote() {
            $('.summernote').summernote();
        }

        function TableVisibilityHidden() {
            $('#TblOptions').addClass('hidden');
        }

        function TableVisibility() {
            $('#TblOptions').removeClass('hidden');
        }





    </script>

    <script type="text/javascript">

        //$('[id*=TxtDate]').datepicker({
        //    changeMonth: true,
        //    changeYear: true,
        //    format: "dd/mm/yyyy",
        //    language: "tr"

        //})

    </script>

</asp:Content>

