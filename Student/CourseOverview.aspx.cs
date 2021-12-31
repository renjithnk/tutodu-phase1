using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseOverview : ClsPageEvents, IPageInterFace
{
    WebAppCourseMaster.WebAppCourseMaster objCourseMaster = new WebAppCourseMaster.WebAppCourseMaster();
    WebAppEducation.WebAppEducation objEdu = new WebAppEducation.WebAppEducation();
    WebAppExperience.WebAppExperienceDetails objExp = new WebAppExperience.WebAppExperienceDetails();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
                HyperLink HyLnkProfile=null , HyLnkEditProfile = null, HyLnkPwdReset = null;
                FnRedirectStudentPage(HyLnkDashboard, HyLnkCourses, HyLnkOrg, HyLnkCalendar, HyLnkTimeline, HyLnkExams, HyLnkNotif, HyLnkProfile, HyLnkEditProfile, HyLnkPwdReset);
                FnRedirectStudentCoursePage(HyLnkOverView, HyLnkAnnouncement, HyLnkModules, HyLnkAssignments, HyLnkQuiz, HyLnkNotes, HyLnkGrades, HyLnkCourseForum, HyLnkAttendance, HyLnkCertificates, HyLnkEMeet, HyLnkMessage, HyLnkInstTime, HyLnkPractice);
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
        DS_RECORD = objCourseMaster.FnGetCourseDetails(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())));
        if (DS_RECORD.Tables[0].Rows.Count != 0)
        {
            H4CrsName.InnerText = DS_RECORD.Tables[0].Rows[0]["Name"].ToString();
            SpnDuration.InnerText = FnIsNumeric(DS_RECORD.Tables[0].Rows[0]["Duration"].ToString()).ToString() + " " + DS_RECORD.Tables[0].Rows[0]["DurationType"].ToString();
            SpnCourseDesc.InnerText = DS_RECORD.Tables[0].Rows[0]["CourseIntroduction"].ToString();
            ImgCourse.Src = FnGetCourseImagePath(DS_RECORD.Tables[0].Rows[0]["ImageLivePath"].ToString());
            LblGrade.Text  = DS_RECORD.Tables[0].Rows[0]["CourseGrading"].ToString();
            LblSylabus.Text = DS_RECORD.Tables[0].Rows[0]["CourseSyllabus"].ToString();
            LblCertificate.Text = DS_RECORD.Tables[0].Rows[0]["CourseExams"].ToString() + " " + DS_RECORD.Tables[0].Rows[0]["CourseCertificate"].ToString();
            HdrTutorName.InnerText = DS_RECORD.Tables[0].Rows[0]["PrimaryTutorName"].ToString();
            ImgTutor.Src = FnGetCourseImagePath(DS_RECORD.Tables[0].Rows[0]["TutorImageLivePath"].ToString());
            SpnTutorDesc.InnerText = DS_RECORD.Tables[0].Rows[0]["TutorInformation"].ToString();

            DT_RECORD = objEdu.FnGetEducationRecords("", "", FnIsNumeric(DS_RECORD.Tables[0].Rows[0]["PrimaryTutorId"].ToString()), FnGetRights().CMPID).Tables[0];
            if (DT_RECORD.Rows.Count != 0)
            {
                RptrPriTutEduDet.DataSource = DT_RECORD;
                RptrPriTutEduDet.DataBind();
            }

            DT_RECORD = objExp.FnGetExperienceRecords("", "", FnIsNumeric(DS_RECORD.Tables[0].Rows[0]["PrimaryTutorId"].ToString()), FnGetRights().CMPID).Tables[0];
            if (DT_RECORD.Rows.Count != 0)
            {
                RptrPriTutExpDet.DataSource = DT_RECORD;
                RptrPriTutExpDet.DataBind();
            }

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