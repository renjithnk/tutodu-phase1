using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseTimeSheet : ClsPageEvents, IPageInterFace
{
    WebAppCourseSubMaster.WebAppCourseSubMaster ObjLst = new WebAppCourseSubMaster.WebAppCourseSubMaster();

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
        DS_RECORD = ObjLst.FnGetCourseSubMasterDetails(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())));
        RptrTimeSheet.DataSource = DS_RECORD.Tables[0];
        RptrTimeSheet.DataBind();
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