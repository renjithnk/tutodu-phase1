using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseModuleDet : ClsPageEvents, IPageInterFace
{
    WebAppCourseModule.WebAppCourseModuleDetails objCourseModule = new WebAppCourseModule.WebAppCourseModuleDetails();
    DataView _dwFilterCourse = null;
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
                HyLnkBackTop.NavigateUrl = FnRedirectBackPage("CourseModules.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&WID=" + Request.QueryString["WID"].ToString() + "&INDX=3");
                HyLnkBackBottom.NavigateUrl = FnRedirectBackPage("CourseModules.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&WID=" + Request.QueryString["WID"].ToString() + "&INDX=3");
                //H4CrsName.InnerText = FnGetCourseName(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())));

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
    protected void RptrChapters_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            RepeaterItem item = e.Item;
            DataRowView dr = (DataRowView)e.Item.DataItem;
            Repeater RptrContents = e.Item.FindControl("RptrContents") as Repeater;

            _dwFilterCourse = new DataView(ViewState["DT"] as DataTable);
            _dwFilterCourse.RowFilter= "CourseChapterId =" + FnIsNumeric(dr["CourseChapterId"].ToString()) + " AND CourseWeekId=" + FnIsNumeric(FnDecryptQueryString(Request.QueryString["WID"].ToString())) + "";
            DataTable dt= _dwFilterCourse.ToTable(); 

            if (_dwFilterCourse.ToTable().Rows.Count >0)
            {
                RptrContents.DataSource = _dwFilterCourse.ToTable();
                RptrContents.DataBind();
            }
        }
    }

    protected void RptrContents_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            RepeaterItem item = e.Item;
            DataRowView dr = (DataRowView)e.Item.DataItem;
            (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseDetailsViewPage(Request.QueryString["CRSEID"].ToString(), Request.QueryString["WID"].ToString(), FnIsNumeric(dr["ID"].ToString()));
        }
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
        DS_RECORD = objCourseModule.FnGetCourseModuleDetails(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnIsNumeric(FnDecryptQueryString(Request.QueryString["WID"].ToString())));
        ViewState["DT"] = DS_RECORD.Tables[0];
        if ((ViewState["DT"] as DataTable).Rows.Count != 0)
        {
            H4CrsName.InnerText =  (ViewState["DT"] as DataTable).Rows[0]["CourseMaster"].ToString();
            H3WeekName.InnerText = (ViewState["DT"] as DataTable).Rows[0]["CourseWeekName"].ToString();
            SpnList.InnerText = (ViewState["DT"] as DataTable).Rows[0]["CourseWeekDesc"].ToString();

            DataView _dwFilter = new DataView(ViewState["DT"] as DataTable);
            string[] strSrcChapter = new string[2];
            strSrcChapter.SetValue("CourseChapterId", 0);
            strSrcChapter.SetValue("CourseChapterName", 1);

            RptrChapters.DataSource = _dwFilter.ToTable(true, strSrcChapter);
            RptrChapters.DataBind();
        }
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
}