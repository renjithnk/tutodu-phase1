using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Edit_Experience : ClsPageEvents, IPageInterFace
{
    WebAppExperience.WebAppExperienceDetails objExp = new WebAppExperience.WebAppExperienceDetails();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
                FnRedirectStudentPage(HyLnkDashboard, HyLnkCourses, HyLnkOrg, HyLnkCalendar, HyLnkTimeline, HyLnkExams, HyLnkNotif, HyLnkProfile, HyLnkEditProfile, HyLnkPwdReset);
                FnRedirectProfilePage(HyLnkProfilePage);

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
        LblErrMsgExpInf.Text = "";
        FnBindProfileDetails(FnGetRights().USERID, ref _strEmail, ref _strMobNo, ref _strName, ref _strImageUrl, ref _strCountry);
        ImgProfile.Src = _strImageUrl;
        PProfileEmail.InnerText = _strEmail;
        PProfilePhone.InnerText = _strMobNo;
        H5ProfileName.InnerText = _strName;

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
        TxtTitle.Text = "";
        TxtCompany.Text = "";
        TxtDesg.Text = "";
        TxtStDate.DateText = "";
        TxtEnDate.DateText = "";
        FnFindRecord();
        FnFocus(TxtTitle);
    }

    public void FnFindRecord()
    {
        RptrExpDet.DataSource = objExp.FnGetExperienceRecords("0", "", FnGetRights().ACCID, FnGetRights().CMPID);
        RptrExpDet.DataBind();
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
                    if (TxtTitle.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the Title");
                        FnFocus(TxtTitle);
                        return;
                    }
                    if (TxtCompany.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the company name");
                        FnFocus(TxtCompany);
                        return;
                    }
                    if (TxtDesg.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the designation name");
                        FnFocus(TxtDesg);
                        return;
                    }
                    int nPursuing = (ChkbxEdu.Checked == true ? 1 : 0);

                    switch (((Button)sender).CommandArgument.ToString().ToUpper())
                    {
                        case "NEW":

                            _IsValidRecord = FnShowOutPutValidPopUp(objExp.FnExperienceSave(TxtTitle.Text, TxtCompany.Text, TxtDesg.Text,FnGetRights().ACCID, TxtStDate.DateText, TxtEnDate.DateText, "", FnGetRights().CMPID, nPursuing));
                            break;
                        case "UPDATE":
                            _IsValidRecord = FnShowOutPutValidPopUp(objExp.FnExperienceUpdate(ViewState["ID"].ToString(), TxtTitle.Text, TxtCompany.Text, TxtDesg.Text, FnGetRights().ACCID, TxtStDate.DateText, TxtEnDate.DateText, "", FnGetRights().CMPID, nPursuing));
                            break;
                    }
                    FnClose();
                    break;
                case "DELETE":
                    _IsValidRecord = FnShowOutPutValidPopUp(objExp.FnExperienceDelete(ViewState["ID"].ToString(),FnGetRights().ACCID, FnGetRights().CMPID));
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

    protected void RptrExpDet_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "EDIT")
            {
                DS_RECORD = objExp.FnGetExperienceRecords(e.CommandArgument.ToString(), "", FnGetRights().ACCID, FnGetRights().CMPID);
                if (DS_RECORD.Tables[0].Rows.Count != 0)
                {
                    TxtCompany.Text = DS_RECORD.Tables[0].Rows[0]["OrganizationName"].ToString();
                    TxtTitle.Text = DS_RECORD.Tables[0].Rows[0]["Name"].ToString();
                    TxtDesg.Text = DS_RECORD.Tables[0].Rows[0]["Designation"].ToString();

                    TxtStDate.DateText = FnDateTime(DS_RECORD.Tables[0].Rows[0]["StartDob"].ToString(), "dd-MMM-yyyy");
                    TxtEnDate.DateText = FnDateTime(DS_RECORD.Tables[0].Rows[0]["EndDob"].ToString(), "dd-MMM-yyyy");

                    ChkbxEdu.Checked = (FnIsNumeric(DS_RECORD.Tables[0].Rows[0]["Remarks"]) > 0 ? true : false);
                    ViewState["ID"] = DS_RECORD.Tables[0].Rows[0]["Id"].ToString();

                    BtnSave.Text = "Update Experience Info";
                    BtnSave.CommandArgument = "UPDATE";

                    FnFocus(TxtTitle);
                    LblErrMsgExpInf.Text = "";
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