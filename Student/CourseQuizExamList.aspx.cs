using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class Student_CourseQuizExamList : ClsPageEvents, IPageInterFace
{
    WebAppExamQuestion.WebAppCourseExamQuestion objExam = new WebAppExamQuestion.WebAppCourseExamQuestion();
    WebAppExamResult.WebAppCourseExamResult objResult = new WebAppExamResult.WebAppCourseExamResult();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);

            if (!IsPostBack)
            {
                HyperLink HyLnkProfile = null, HyLnkEditProfile = null, HyLnkPwdReset = null;
                FnRedirectStudentPage(HyLnkDashboard, HyLnkCourses, HyLnkOrg, HyLnkCalendar, HyLnkTimeline, HyLnkExams, HyLnkNotif, HyLnkProfile, HyLnkEditProfile, HyLnkPwdReset);
                FnRedirectStudentCoursePage(HyLnkOverView, HyLnkAnnouncement, HyLnkModules, HyLnkAssignments, HyLnkQuiz, HyLnkNotes, HyLnkGrades, HyLnkCourseForum, HyLnkAttendance, HyLnkCertificates, HyLnkEMeet, HyLnkMessage, HyLnkInstTime, HyLnkPractice);
                HyLnkBackTop.NavigateUrl = FnRedirectBackPage("CourseQuizExam.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&INDX=4");
                HyLnkBackBottom.NavigateUrl = FnRedirectBackPage("CourseQuizExam.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&INDX=4");

                H4CrsName.InnerText = FnGetCourseName(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())));

                FnInitializeForm();
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    public override void FnInitializeForm()
    {
        Session["EXAM"] = "";
        FnFindRecord();
    }
    public void FnAssignProperty()
    {
        throw new NotImplementedException();
    }

    public void FnClose()
    {
        throw new NotImplementedException();
    }

    public void FnFindRecord()
    {
        DS_RECORD = objExam.FnGetCourseExamQuestionList(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnIsNumeric(FnDecryptQueryString(Request.QueryString["ASGID"].ToString())));
        ViewState["DT"] = DS_RECORD.Tables[0];
        if (DS_RECORD.Tables[0].Rows.Count > 0)
        {
            H3CrsName.InnerText = DS_RECORD.Tables[0].Rows[0]["CourseExamMasterName"].ToString();
        }
        FnGridViewBinding("");
    }
    private void FnGetResultDetails(Button PrmBtnSave, string PrmCourseExamQuestId, string PrmAnswerType, HiddenField PrmHdnResultId, HiddenField PrmHdnSubDate, Winthusiasm.HtmlEditor.HtmlEditor PrmHtmlTextEditor, HyperLink PrmHyLnkDoc, RadioButtonList PrmRadBtnQuest, CheckBoxList PrmChkLstQuet, HiddenField PrmTutorId, HiddenField PrmMark)
    {
        DT_RECORD = objResult.FnGetCourseExamSubmitDetails(FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnIsNumeric(FnDecryptQueryString(Request.QueryString["ASGID"].ToString())), FnIsNumeric(PrmCourseExamQuestId)).Tables[0];
        if (DT_RECORD.Rows.Count > 0)
        {
            PrmHdnResultId.Value = DT_RECORD.Rows[0]["nId"].ToString();
            PrmTutorId.Value = DT_RECORD.Rows[0]["nTutorId"].ToString();
            PrmMark.Value = DT_RECORD.Rows[0]["nObtainMark"].ToString();

            if (PrmAnswerType == "SHORT ANSWER" || PrmAnswerType == "LONG ANSWER")
            {
                PrmHtmlTextEditor.Text = DT_RECORD.Rows[0]["cAnswer"].ToString();
                FnBindDocumetPath(PrmHyLnkDoc, DT_RECORD.Rows[0]["cAnswerFile"].ToString(), "EXAM");
            }
            else if (PrmAnswerType == "MCQ-SINGLE ANSWER")
            {
                FnSetRadioButtonValue(PrmRadBtnQuest, DT_RECORD.Rows[0]["cAnswer"].ToString().Trim());
            }
            else if (PrmAnswerType == "MCQ-MULTI ANSWER")
            {
                FnSetCheckboxListValue(PrmChkLstQuet, DT_RECORD.Rows[0]["cAnswer"].ToString().Trim());
            }
            Session["EXAM"] = DT_RECORD.Rows[0]["cAnswerFile"].ToString();
            if (FnIsNumeric(DT_RECORD.Rows[0]["nTutorId"].ToString()) > 0)
            {
                PrmBtnSave.Enabled = false;
            }

            PrmBtnSave.CommandArgument = "UPDATE";
            PrmHdnSubDate.Value = FnDateTime(DT_RECORD.Rows[0]["dModifiedDate"].ToString(), "dd/MMM/yyyy hh:mm tt");
        }
        else
        {
            PrmBtnSave.CommandArgument = "NEW";
        }
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        FrmVwExamList.DataSource = ViewState["DT"] as DataTable;
        FrmVwExamList.DataBind();

        if (FrmVwExamList.DataItemCount > 0)
        {
            HiddenField HdnSubmitDate = (HiddenField)FrmVwExamList.FindControl("HdnSubmitDate");
            HiddenField HdnResultId = (HiddenField)FrmVwExamList.FindControl("HdnResultId");
            HiddenField HdnTutorId = (HiddenField)FrmVwExamList.FindControl("HdnTutorId");
            HiddenField HdnMark = (HiddenField)FrmVwExamList.FindControl("HdnMark");

            LinkButton LnkNext = (LinkButton)FrmVwExamList.BottomPagerRow.FindControl("LnkNext");
            LinkButton LnkPrev = (LinkButton)FrmVwExamList.BottomPagerRow.FindControl("LnkPrev");
            Label LblTotPage = (Label)FrmVwExamList.BottomPagerRow.FindControl("LblTotPage");
            Label LblCpt = (Label)FrmVwExamList.BottomPagerRow.FindControl("LblCpt");
            Label LblAprv = (Label)FrmVwExamList.BottomPagerRow.FindControl("LblAprv");

            LblCpt.Text = (FnIsNumeric(HdnResultId.Value) > 0 ? "Submited on " + HdnSubmitDate.Value : "");
            LblCpt.Visible = (FnIsNumeric(HdnResultId.Value) > 0 ? true : false);
            LblAprv.Visible = (FnIsNumeric(HdnTutorId.Value) > 0 ? true : false);
            LblAprv.Text = "Score- " + HdnMark.Value;

            LblTotPage.Text = "Questions : " + (FrmVwExamList.PageIndex + 1).ToString() + "/" + FrmVwExamList.PageCount.ToString();

            LnkNext.Visible = (FrmVwExamList.PageIndex + 1 == FrmVwExamList.PageCount ? false : true);
            LnkPrev.Visible = (FrmVwExamList.PageIndex == 0 ? false : true);
        }
    }

    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        try
        {
            Winthusiasm.HtmlEditor.HtmlEditor TxtContentDetails = (Winthusiasm.HtmlEditor.HtmlEditor)FrmVwExamList.FindControl("TxtContentDetails");
            HiddenField HdnExamId = (HiddenField)FrmVwExamList.FindControl("HdnExamId");
            HiddenField HdnResultId = (HiddenField)FrmVwExamList.FindControl("HdnResultId");
            RadioButtonList RadBtnQuestLst = ((RadioButtonList)FrmVwExamList.FindControl("RadBtnQuestLst"));
            CheckBoxList ChkBoxQuestLst = ((CheckBoxList)FrmVwExamList.FindControl("ChkBoxQuestLst"));
            string strResult = "";

            if (((Label)FrmVwExamList.FindControl("LblExamType")).Text == "SHORT ANSWER" || ((Label)FrmVwExamList.FindControl("LblExamType")).Text == "LONG ANSWER")
            {
                strResult =  TxtContentDetails.Text.Trim();
            }
            else if(((Label)FrmVwExamList.FindControl("LblExamType")).Text == "MCQ-SINGLE ANSWER")
            {
                strResult = RadBtnQuestLst.SelectedValue.ToString();
            }
            else if(((Label)FrmVwExamList.FindControl("LblExamType")).Text == "MCQ-MULTI ANSWER")
            {
                strResult = FnGetCheckboxListValue(ChkBoxQuestLst);
            }
            if (strResult.Trim().Length <= 0)
            {
                FnPopUpAlert("Please ether the answer");
                return;
            }
            switch (((Button)sender).CommandName.ToString().ToUpper())
            {
                case "SAVE":
                    switch (((Button)sender).CommandArgument.ToString().ToUpper())
                    {
                        case "NEW":
                            _IsValidRecord = FnShowOutPutValidPopUp(objResult.FnCourseExamResultSave(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["ASGID"].ToString())), FnIsNumeric(HdnExamId.Value), 0, Session["EXAM"].ToString(), strResult, "", FnGetRights().CMPID));
                            break;
                        case "UPDATE":
                            _IsValidRecord = FnShowOutPutValidPopUp(objResult.FnCourseExamResultUpdate(HdnResultId.Value, FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["ASGID"].ToString())), FnIsNumeric(HdnExamId.Value), 0, Session["EXAM"].ToString(), strResult, "", FnGetRights().CMPID));
                            break;
                    }
                    if (_IsValidRecord == true)
                    {
                        FnClose();
                    }
                    break;
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    protected void FrmVwExamList_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
        try
        {
            FrmVwExamList.PageIndex = e.NewPageIndex;
            FnGridViewBinding("");
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void FileUpDocument_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        try
        {
            AsyncFileUpload FileUpDocument = (AsyncFileUpload)FrmVwExamList.FindControl("FileUpDocument");
            string[] allowed = FnGetPdfFormat(ref _strFileFormat);
            if (FileUpDocument.PostedFile != null && FileUpDocument.PostedFile.ContentLength > 0)
            {
                if (allowed.Contains(Path.GetExtension(e.FileName)))
                {
                    if (FnValidateFileSize(FileUpDocument, 900, 255, 600) == true)
                    {
                        Session["EXAM"] = FnSaveUploadFileName(e.FileName, "EXAM");
                        FileUpDocument.PostedFile.SaveAs(FnServerUploadPath(FnUploadDocFilePath("EXAM", Session["EXAM"].ToString().Trim())));
                    }
                }
                else
                {
                    FileUpDocument.Attributes.Clear();
                    FileUpDocument.Dispose();
                    Session["EXAM"] = "";
                    FnPopUpAlert(_strFileFormat);
                    return;
                }
            }
            else
            {
                FnPopUpAlert(_strFileFormat);
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(_strFileFormat);
            throw ex;
        }
    }

    protected void FrmVwExamList_DataBound(object sender, EventArgs e)
    {
        try
        {
            if (FrmVwExamList.CurrentMode == FormViewMode.ReadOnly && FrmVwExamList.DataItemCount>0)
            {
                Button BtnSave = (Button)FrmVwExamList.FindControl("BtnSave");
                Winthusiasm.HtmlEditor.HtmlEditor TxtContentDetails = (Winthusiasm.HtmlEditor.HtmlEditor)FrmVwExamList.FindControl("TxtContentDetails");
                HiddenField HdnResultId = (HiddenField)FrmVwExamList.FindControl("HdnResultId");
                HiddenField HdnSubmitDate = (HiddenField)FrmVwExamList.FindControl("HdnSubmitDate");
                HiddenField HdnTutorId = (HiddenField)FrmVwExamList.FindControl("HdnTutorId");
                HiddenField HdnMark = (HiddenField)FrmVwExamList.FindControl("HdnMark");

                RadioButtonList RadBtnQuestLst = ((RadioButtonList)FrmVwExamList.FindControl("RadBtnQuestLst"));
                CheckBoxList ChkBoxQuestLst = ((CheckBoxList)FrmVwExamList.FindControl("ChkBoxQuestLst"));
                HyperLink HyLnkDoc = ((HyperLink)FrmVwExamList.FindControl("HyLnkDoc"));

                RadBtnQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option1").ToString(), "OPT1"));
                RadBtnQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option2").ToString(), "OPT2"));
                RadBtnQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option3").ToString(), "OPT3"));
                RadBtnQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option4").ToString(), "OPT4"));
                RadBtnQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option5").ToString(), "OPT5"));

                ChkBoxQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option1").ToString(), "OPT1"));
                ChkBoxQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option2").ToString(), "OPT2"));
                ChkBoxQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option3").ToString(), "OPT3"));
                ChkBoxQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option4").ToString(), "OPT4"));
                ChkBoxQuestLst.Items.Add(FnListItem(DataBinder.Eval(FrmVwExamList.DataItem, "Option5").ToString(), "OPT5"));

                if (((Label)FrmVwExamList.FindControl("LblExamType")).Text == "SHORT ANSWER" || ((Label)FrmVwExamList.FindControl("LblExamType")).Text == "LONG ANSWER")
                {
                    ((HtmlGenericControl)FrmVwExamList.FindControl("DivDocAsgn")).Visible = true;
                    ((HtmlGenericControl)FrmVwExamList.FindControl("DivOptionSingle")).Visible = false;
                    ((HtmlGenericControl)FrmVwExamList.FindControl("DivOptionMul")).Visible = false;
                }
                else if (((Label)FrmVwExamList.FindControl("LblExamType")).Text == "MCQ-SINGLE ANSWER")
                {
                    ((HtmlGenericControl)FrmVwExamList.FindControl("DivOptionSingle")).Visible = true;
                    ((HtmlGenericControl)FrmVwExamList.FindControl("DivDocAsgn")).Visible = false;
                    ((HtmlGenericControl)FrmVwExamList.FindControl("DivOptionMul")).Visible = false;
                }
                else if (((Label)FrmVwExamList.FindControl("LblExamType")).Text == "MCQ-MULTI ANSWER")
                {
                    ((HtmlGenericControl)FrmVwExamList.FindControl("DivOptionMul")).Visible = true;
                    ((HtmlGenericControl)FrmVwExamList.FindControl("DivOptionSingle")).Visible = false;
                    ((HtmlGenericControl)FrmVwExamList.FindControl("DivDocAsgn")).Visible = false;
                }

                FnGetResultDetails(BtnSave, DataBinder.Eval(FrmVwExamList.DataItem, "Id").ToString(), ((Label)FrmVwExamList.FindControl("LblExamType")).Text, HdnResultId, HdnSubmitDate, TxtContentDetails, HyLnkDoc, RadBtnQuestLst, ChkBoxQuestLst, HdnTutorId, HdnMark);

            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}