using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseGrades : ClsPageEvents, IPageInterFace
{
    WebAppExamGrade.WebAppCourseExamGrading ObjLst = new WebAppExamGrade.WebAppCourseExamGrading();

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
    public void GetCourseDet()
    {
        
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
        DS_RECORD = ObjLst.FnGetCourseGradeList(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())),FnGetRights().ACCID);
        RptrGrades.DataSource = DS_RECORD.Tables[0];
        RptrGrades.DataBind();
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
        throw new NotImplementedException();
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }

    protected void RptrGrades_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnRedirectNextPage("CourseGradeList.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&INDX=7&EXMID=" + FnEncryptQueryString(dr["CourseExamMasterId"].ToString().ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}