using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Student_CourseNotesList : ClsPageEvents, IPageInterFace
{
    WebAppCourseNote.WebAppCourseNote objNote = new WebAppCourseNote.WebAppCourseNote();

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
                HyLnkBackTop.NavigateUrl = FnRedirectBackPage("CourseNotes.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&INDX=6");
                HyLnkBackBottom.NavigateUrl = FnRedirectBackPage("CourseNotes.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&INDX=6");

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
    }

    public void FnFindRecord()
    {
        DS_RECORD = objNote.FnGetCourseNoteDetails (FnIsNumeric(FnDecryptQueryString( Request.QueryString["CRSEID"].ToString())), FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["NOTEID"].ToString())));
        if (DS_RECORD.Tables[0].Rows.Count > 0)
        {
            H4CrsName.InnerText = DS_RECORD.Tables[0].Rows[0]["CourseMasterName"].ToString();
            H4NoteTitle.InnerText = DS_RECORD.Tables[0].Rows[0]["Name"].ToString();
        }
        RptrNotes.DataSource = DS_RECORD.Tables[0];
        RptrNotes.DataBind();
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        
    }

    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        
    }
}