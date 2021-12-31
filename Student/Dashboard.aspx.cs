using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Dashboard : ClsPageEvents, IPageInterFace
{
    WebAppCourseAssign.WebAppCourseAssigining objCourseAssign = new WebAppCourseAssign.WebAppCourseAssigining();
    WebAppCourseMaster.WebAppCourseMaster objCourseMaster = new WebAppCourseMaster.WebAppCourseMaster();
    WebAppOrgAssign.WebAppOrganizationAssigining objOrgassign = new WebAppOrgAssign.WebAppOrganizationAssigining();


    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
                FnRedirectStudentPage(HyLnkDashboard, HyLnkCourses, HyLnkOrg, HyLnkCalendar, HyLnkTimeline, HyLnkExams, HyLnkNotif, HyLnkProfile, HyLnkEditProfile, HyLnkPwdReset);
                FnRedirectMyCourse(HyLnkAllCourse);
                FnRedirectOrganization(HyLnkAllOrg);

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
        FnGridViewBinding("");
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        DT_RECORD = objCourseAssign.FnGetCourseAssigingRecordList(FnGetRights().ACCID.ToString(), "", "", "1").Tables[0];
        if (DT_RECORD.Rows.Count != 0)
        {
            RptrEnrldCrss.DataSource = DT_RECORD.Rows.Cast<System.Data.DataRow>().Take(4).CopyToDataTable();
            RptrEnrldCrss.DataBind();
        }

        RptrEnrldOrgs.DataSource = objOrgassign.FnGetStudentOrganizationRecords(FnGetRights().ACCID);
        RptrEnrldOrgs.DataBind();
        /*
        RptrExamTimeline.DataSource = objCourseMaster.FnGetStudentCourseExamRecordsList(FnGetRights().ACCID).Tables[0];
        RptrExamTimeline.DataBind();

        DS_RECORD = objCourseMaster.FnGetStudentCourseTimeLineRecordsList(FnGetRights().ACCID);
        DS_RECORD.Tables[0].DefaultView.Sort = "DayVal";
        DT_RECORD = (DS_RECORD.Tables[0].DefaultView).ToTable();
        if (DT_RECORD.Rows.Count != 0)
        {
            RptrClassTimeline.DataSource = DT_RECORD;
            RptrClassTimeline.DataBind();
        }*/
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
                case "CLEAR":
                    FnClose();
                    break;
                case "FIND":
                    FnFindRecord();
                    break;
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
    protected void RptrEnrldCrss_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["CourseMasterName"].ToString().Trim(), 24);

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseOverViewPage(dr["CourseMasterName"].ToString(), FnIsNumeric(dr["CourseMasterId"].ToString()), FnIsNumeric(dr["OrganizationId"].ToString()), FnIsNumeric(dr["TutorId"].ToString()));

                //(item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseDetailsPage(dr["CourseTType"].ToString(), FnIsNumeric(dr["CrscAccId"].ToString()), dr["CourseMasterName"].ToString(), FnIsNumeric(dr["CourseMasterId"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    protected void RptrEnrldOrgs_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["OrganizationName"].ToString().Trim(), 50);
                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnRedirectNextPage("../CommonPages/OrgHome.aspx", "", "&ORGCID=" + FnEncryptQueryString(dr["OrgCompanyId"].ToString()) + "&ORGID=" + FnEncryptQueryString(dr["OrganizationId"].ToString()) + "&CNAME=" + dr["OrganizationName"].ToString().Trim());
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}