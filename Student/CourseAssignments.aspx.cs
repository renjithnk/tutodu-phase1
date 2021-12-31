using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseAssignments : ClsPageEvents, IPageInterFace
{
    WebAppExamMaster.WebAppCourseExamMaster objExam = new WebAppExamMaster.WebAppCourseExamMaster();

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
        DS_RECORD = objExam.FnGetCourseExamAssignmentRecords(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())));
        ViewState["DT"] = DS_RECORD.Tables[0];
        FnGridViewBinding("");
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
        RptrAssignment.DataSource = ViewState["DT"] as DataTable;
        RptrAssignment.DataBind();
    }

    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        throw new NotImplementedException();
    }

    protected void RptrAssignment_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString().Trim(), 20);
                (item.FindControl("LblActive") as Label).Attributes.Add("class", (dr["Active"].ToString() == "True" ? "active-status" : "Inactive-status"));
                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnRedirectNextPage("CourseAssignmentList.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&INDX=4&ASGID=" + FnEncryptQueryString(dr["Id"].ToString().ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptrAssignment_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }    
}