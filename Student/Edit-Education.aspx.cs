using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Edit_Education : ClsPageEvents, IPageInterFace
{
    WebAppEducation.WebAppEducation objEdu = new WebAppEducation.WebAppEducation();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
                FnRedirectStudentPage(HyLnkDashboard, HyLnkCourses, HyLnkOrg, HyLnkCalendar, HyLnkTimeline, HyLnkExams, HyLnkNotif, HyLnkProfile, HyLnkEditProfile, HyLnkPwdReset);
                FnRedirectProfilePage(HyLnkProfilePage);
                FnBindingDropDownList(FnGetAcademicLevelRecords(), DrpAcademicLevel, "");
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
        FnBindProfileDetails(FnGetRights().USERID, ref _strEmail, ref _strMobNo, ref _strName, ref _strImageUrl, ref _strCountry);
        ImgProfile.Src = _strImageUrl;
        PProfileEmail.InnerText = _strEmail;
        PProfilePhone.InnerText = _strMobNo;
        H5ProfileName.InnerText = _strName;
        LblErrMsgEduInf.Text = "";

        FnFindRecord();
        BtnSave.Text = "Save Personal Info";
        BtnSave.CommandArgument = "NEW";
    }

    public void FnAssignProperty()
    {
        throw new NotImplementedException();
    }

    public void FnClose()
    {
        base.FnClearId();
        ChkbxEdu.Checked = false;
        DrpAcademicLevel.SelectedIndex = 0;
        TxtSchool.Text = "";
        TxtField.Text = "";
        TxtGrade.Text = "";
        TxtStDate.DateText = "";
        TxtEnDate.DateText = "";
        FnFindRecord();
        FnFocus(TxtSchool);
    }

    public void FnFindRecord()
    {
        RptrEduDet.DataSource = objEdu.FnGetEducationRecords("0", "", FnGetRights().ACCID, FnGetRights().CMPID);
        RptrEduDet.DataBind();
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        try
        {
            switch (((Button)sender).CommandName.ToString().ToUpper())
            {
                case "SAVE":
                    if (FnIsNumeric(DrpAcademicLevel.SelectedValue) <= 0)
                    {
                        FnPopUpAlert("Please select academic level");
                        FnFocus(DrpAcademicLevel);
                        return;
                    }
                    if (TxtSchool.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the school");
                        FnFocus(TxtSchool);
                        return;
                    }
                    if (TxtGrade.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the grade");
                        FnFocus(TxtGrade);
                        return;
                    }
                    int nPursuing = (ChkbxEdu.Checked == true ? 1 : 0);

                    switch (((Button)sender).CommandArgument.ToString().ToUpper())
                    {
                        case "NEW":
                            _IsValidRecord = FnShowOutPutValidPopUp(objEdu.FnEducationSave(DrpAcademicLevel.SelectedItem.Text, TxtSchool.Text, TxtField.Text, TxtGrade.Text, FnGetRights().ACCID, TxtStDate.DateText, TxtEnDate.DateText, DrpAcademicLevel.SelectedValue,nPursuing, FnGetRights().CMPID));

                            break;
                        case "UPDATE":
                            _IsValidRecord = FnShowOutPutValidPopUp(objEdu.FnEducationUpdate(ViewState["ID"].ToString(),DrpAcademicLevel.SelectedItem.Text, TxtSchool.Text, TxtField.Text, TxtGrade.Text, FnGetRights().ACCID, TxtStDate.DateText , TxtEnDate.DateText, DrpAcademicLevel.SelectedValue, nPursuing, FnGetRights().CMPID));
                            break;
                    }
                    FnClose();
                    break;
                case "DELETE":
                    _IsValidRecord = FnShowOutPutValidPopUp(objEdu.FnEducationDelete(ViewState["ID"].ToString(), FnGetRights().ACCID, FnGetRights().CMPID));
                    FnClose();
                    break;
                case "CLEAR":
                    FnClose();
                    break;
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptrEduDet_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "EDIT")
            {
                DS_RECORD = objEdu.FnGetEducationRecords(e.CommandArgument.ToString(), "", FnGetRights().ACCID, FnGetRights().CMPID);
                if (DS_RECORD.Tables[0].Rows.Count != 0)
                {
                    TxtSchool.Text = DS_RECORD.Tables[0].Rows[0]["SchoolName"].ToString();
                    ChkbxEdu.Checked = (FnIsNumeric(DS_RECORD.Tables[0].Rows[0]["Pursing"]) > 0 ? true : false);
                    DrpAcademicLevel.SelectedValue = DS_RECORD.Tables[0].Rows[0]["Remarks"].ToString();
                    TxtField.Text = DS_RECORD.Tables[0].Rows[0]["FieldOfStudy"].ToString();
                    TxtStDate.DateText = FnDateTime(DS_RECORD.Tables[0].Rows[0]["StartDob"].ToString(), "dd-MMM-yyyy");
                    TxtEnDate.DateText = FnDateTime(DS_RECORD.Tables[0].Rows[0]["EndDob"].ToString(), "dd-MMM-yyyy");
                    TxtGrade.Text = DS_RECORD.Tables[0].Rows[0]["Grade"].ToString();
                    ViewState["ID"] = DS_RECORD.Tables[0].Rows[0]["Id"].ToString();

                    BtnSave.Text = "Update Experience Info";
                    BtnSave.CommandArgument = "UPDATE";

                    FnFocus(DrpAcademicLevel);
                    LblErrMsgEduInf.Text = "";
                }
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }

    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }
}