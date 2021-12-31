using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Student_CourseMessageList : ClsPageEvents, IPageInterFace
{
    WebAppNotification.WebAppNotification objNote = new WebAppNotification.WebAppNotification();

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
                HyLnkBackTop.NavigateUrl = FnRedirectBackPage("CourseMessages.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&INDX=12");
                HyLnkBackBottom.NavigateUrl = FnRedirectBackPage("CourseMessages.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&INDX=12");

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
        DS_RECORD = objNote.FnGetCourseMessageDetails(FnIsNumeric(FnDecryptQueryString(Request.QueryString["MSGID"].ToString())));
        if (DS_RECORD.Tables[0].Rows.Count > 0)
        {
            H4CrsName.InnerText = DS_RECORD.Tables[0].Rows[0]["CourseMasterName"].ToString();
            H4NoteTitle.InnerText = DS_RECORD.Tables[0].Rows[0]["Name"].ToString();
        }
        RptrNotes.DataSource = DS_RECORD.Tables[0];
        RptrNotes.DataBind();

        DT_RECORD = objNote.FnGetCourseMessageParentDetails(FnIsNumeric(FnDecryptQueryString(Request.QueryString["MSGID"].ToString()))).Tables[0];
        if (DT_RECORD.Rows.Count > 0)
        {
            string strStyle = "<li class='media'><div class='mr-3'><img src = " + DT_RECORD.Rows[0]["FrmAccImageLivePath"].ToString().Trim() + " class='rounded-circle' width='40' height='40' alt='' /></div>"
                      + "<div class='media-body'><div class='media-chat-item' style='width:100%;background-color: rgb(66, 165, 245)!important;color: white;'><h6>" + DT_RECORD.Rows[0]["FrmAccName"].ToString().Trim() + "</h6><p>" + DT_RECORD.Rows[0]["Remarks"].ToString() + "</p></div>"
                      + "<div class='font-size-sm text-muted mt-2'>" + FnDateTime(DT_RECORD.Rows[0]["UpdateDate"].ToString(), "dd/MMM/yyyy h:mm tt") + "</div></div></li>";
            LblReply.Text = strStyle;
        }
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