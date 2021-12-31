using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseModules : ClsPageEvents, IPageInterFace
{
    WebAppCourseWeek.WebAppCourseWeek objCourseWeek = new WebAppCourseWeek.WebAppCourseWeek();
    string strVal = "";
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
        FnGridViewBinding("");
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        DS_RECORD = objCourseWeek.FnGetCourseWeekRecords("", FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnGetRights().CMPID);
        RptrCrsWeeks.DataSource = DS_RECORD.Tables[0];
        RptrCrsWeeks.DataBind();
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

    protected void RptrCrsWeeks_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                strVal = objCourseWeek.FnGetCourseWeekCompletion(FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnIsNumeric(dr["Id"].ToString()));
                if (strVal == "Complete")
                {
                    (item.FindControl("LblVal") as Label).Text = strVal;
                    (item.FindControl("LblVal1") as Label).Visible = false;
                }
                else
                {
                    (item.FindControl("LblVal") as Label).Visible = false;
                    (item.FindControl("LblVal1") as Label).Text = strVal;
                }

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnRedirectNextPage("CourseModuleDet.aspx", "", " &CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&WID=" + FnEncryptQueryString(dr["Id"].ToString()) + "&INDX=3");
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}