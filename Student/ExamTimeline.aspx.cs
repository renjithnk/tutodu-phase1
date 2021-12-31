using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_ExamTimeline : ClsPageEvents, IPageInterFace
{
    WebAppRegistration.WebAppRegitation objRegister = new WebAppRegistration.WebAppRegitation();
    WebAppCourseMaster.WebAppCourseMaster objCourseMaster = new WebAppCourseMaster.WebAppCourseMaster();

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
        try
        {
            DS_RECORD = objCourseMaster.FnGetStudentCourseExamRecordsList(FnGetRights().ACCID);
            //CourseGrp.Tables[0].DefaultView.Sort = "DayVal";
            DT_RECORD = (DS_RECORD.Tables[0].DefaultView).ToTable();
            if (DT_RECORD.Rows.Count != 0)
            {
                RptrExamTimeline.DataSource = DT_RECORD;
                RptrExamTimeline.DataBind();
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