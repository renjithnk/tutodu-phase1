using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Profile : ClsPageEvents, IPageInterFace
{
    WebAppRegistration.WebAppRegitation objRegister = new WebAppRegistration.WebAppRegitation();
    WebAppEducation.WebAppEducation objEdu = new WebAppEducation.WebAppEducation();
    WebAppExperience.WebAppExperienceDetails objExp = new WebAppExperience.WebAppExperienceDetails();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
                FnRedirectStudentPage(HyLnkDashboard, HyLnkCourses, HyLnkOrg, HyLnkCalendar, HyLnkTimeline, HyLnkExams, HyLnkNotif, HyLnkProfile, HyLnkEditProfile, HyLnkPwdReset);

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

        HyLnkViewProfile.NavigateUrl = FnRedirectNextPage("../Student/Edit-Personal.aspx", "", "");
        HyLnkViewEdu.NavigateUrl = FnRedirectNextPage("../Student/Edit-Education.aspx", "", "");
        HyLnkViewExp.NavigateUrl = FnRedirectNextPage("../Student/Edit-Experience.aspx", "", "");

        FnFindRecord();
        FnGridViewBinding("");
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
        try
        {
            if (FnGetRights().ACCID > 0)
            {
                DS_RECORD = objRegister.FnGetRegister(FnGetRights().ACCID);
                if (DS_RECORD.Tables[0].Rows.Count != 0)
                {
                    LblFName.Text = DS_RECORD.Tables[0].Rows[0]["Name"].ToString();
                    LblLName.Text = DS_RECORD.Tables[0].Rows[0]["LastName"].ToString();
                    LblDOB.Text = FnDateTime(DS_RECORD.Tables[0].Rows[0]["Dob"].ToString(), "dd-MMM-yyyy");
                    LblParentName.Text = DS_RECORD.Tables[0].Rows[0]["ParentName"].ToString();
                    LblEmail.Text = DS_RECORD.Tables[0].Rows[0]["Email"].ToString();
                    LblAdd1.Text = DS_RECORD.Tables[0].Rows[0]["CAddress"].ToString();
                    LblAdd2.Text = DS_RECORD.Tables[0].Rows[0]["PAddress"].ToString();
                    LblCountry.Text = DS_RECORD.Tables[0].Rows[0]["Nationality"].ToString();
                    LblState.Text = DS_RECORD.Tables[0].Rows[0]["StateName"].ToString();
                    LblCity.Text = DS_RECORD.Tables[0].Rows[0]["City"].ToString();
                    LblZip.Text = DS_RECORD.Tables[0].Rows[0]["PinCode"].ToString();
                    LblPhone1.Text = DS_RECORD.Tables[0].Rows[0]["MobNo"].ToString();
                    LblPhone2.Text = DS_RECORD.Tables[0].Rows[0]["PhoneNo"].ToString();

                    FnBindDocumetPath(HyLnkImage, DS_RECORD.Tables[0].Rows[0]["ImagePath"].ToString(), "PRF");
                    FnBindDocumetPath(HyLnkDoc, DS_RECORD.Tables[0].Rows[0]["DocFilePath"].ToString(), "DOC");
                }
                else
                {
                    LblFName.Text = "";
                    LblLName.Text = "";
                    LblDOB.Text = "";
                    LblParentName.Text = "";
                    LblEmail.Text = PProfileEmail.InnerText;
                    LblAdd1.Text = "";
                    LblAdd2.Text = "";
                    LblCountry.Text = "";
                    LblState.Text = "";
                    LblCity.Text = "";
                    LblZip.Text = "";
                    LblPhone1.Text = "";
                    LblPhone2.Text = "";

                    FnBindDocumetPath(HyLnkImage, "", "PRF");
                    FnBindDocumetPath(HyLnkDoc, "", "DOC");
                }
            }
            else
            {
                Response.Redirect(FnLogOutUrl());
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        RptrEduDet.DataSource = objEdu.FnGetEducationRecords("0", "", FnGetRights().ACCID, FnGetRights().CMPID);
        RptrEduDet.DataBind();

        RptrExpDet.DataSource = objExp.FnGetExperienceRecords("0", "", FnGetRights().ACCID, FnGetRights().CMPID);
        RptrExpDet.DataBind();
    }

    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        throw new NotImplementedException();
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }

    protected void RptrEduDet_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                /*RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString().Trim(), 24);

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnRedirectNextPage("Edit-Education.aspx", "", "&CACCID=" + FnEncryptQueryString(dr["AccId"].ToString()) + "&CNAME=" + dr["Name"].ToString().Trim());
                */
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    protected void RptrExpDet_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}