using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseModuleDetails : ClsPageEvents, IPageInterFace
{
    WebAppCourseModule.WebAppCourseModuleDetails objCourseModule = new WebAppCourseModule.WebAppCourseModuleDetails();
    WebAppCourseModuleCompletion.WebAppCourseModuleCompletion ObjComplete = new WebAppCourseModuleCompletion.WebAppCourseModuleCompletion();
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
                HyLnkBackTop.NavigateUrl = FnRedirectBackPage("CourseModuleDet.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&WID=" + Request.QueryString["WID"].ToString() + "&INDX=3");
                HyLnkBackBottom.NavigateUrl = FnRedirectBackPage("CourseModuleDet.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&WID=" + Request.QueryString["WID"].ToString() + "&INDX=3");

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
        DS_RECORD = objCourseModule.FnGetCourseMaterialDetails(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnIsNumeric(FnDecryptQueryString(Request.QueryString["WID"].ToString())), FnIsNumeric(FnDecryptQueryString(Request.QueryString["MTLID"].ToString())));
        ViewState["DT"] = DS_RECORD.Tables[0];
        if ((ViewState["DT"] as DataTable).Rows.Count != 0)
        {
            H4CrsName.InnerText = (ViewState["DT"] as DataTable).Rows[0]["CourseMaster"].ToString();
            H3WeekName.InnerText = (ViewState["DT"] as DataTable).Rows[0]["CourseWeekName"].ToString() + " - " + (ViewState["DT"] as DataTable).Rows[0]["CourseChapterName"].ToString() + " - " + (ViewState["DT"] as DataTable).Rows[0]["Name"].ToString();
            LblDesc.Text = (ViewState["DT"] as DataTable).Rows[0]["Description"].ToString();

            string strSrc = "";
            if ((ViewState["DT"] as DataTable).Rows[0]["ModuleType"].ToString().Equals("IMAGE FILE"))
            {
                strSrc = "..\\UploadedFiles\\CourseDocuments\\" + (ViewState["DT"] as DataTable).Rows[0]["ImagePath"].ToString();
            }
            else if ((ViewState["DT"] as DataTable).Rows[0]["ModuleType"].ToString().Equals("DOC FILE"))
            {
                strSrc = "..\\UploadedFiles\\CourseDocuments\\" + (ViewState["DT"] as DataTable).Rows[0]["DocPath"].ToString();
            }
            else if ((ViewState["DT"] as DataTable).Rows[0]["ModuleType"].ToString().Equals("VIDEO FILE"))
            {
                strSrc = "..\\UploadedFiles\\CourseDocuments\\" + (ViewState["DT"] as DataTable).Rows[0]["VideoPath"].ToString();
            }
            FnSetDocumentStype((ViewState["DT"] as DataTable).Rows[0]["ModuleType"].ToString(), strSrc);

            //FnGetCourePopUp(LnkDoc, H4CrsName.InnerText, "IMAGE FILE", Request.QueryString["CRSEID"].ToString(), Request.QueryString["WID"].ToString(), Request.QueryString["MTLID"].ToString());
        }
    }
    private void FnSetDocumentStype(string PrmDocumeyType, string PrmSrcPath)
    {
        int nHght = (PrmDocumeyType.Equals("DOC FILE") ? 800 : 400);
        string strStyle = "<div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'>"
                            + "<a data-toggle='collapse' data-parent='#accordion' href='#collapse1' style='color:black;' >" + PrmDocumeyType + "</a></h4></div>"
                            + "<div id = 'collapse1' class='panel-collapse collapse in'><div class='panel-body'>"
                            + "<iframe style = 'width:100%;height:"+ nHght +"px; ' id='FrmDocument' runat='server' name='FrmDocument' frameBorder='0' scrolling='yes' src=" + PrmSrcPath + "></iframe>"
                            + "</div></div></div></div>";
        LblDocStyle.Text = strStyle;
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
        try
        {
            FnShowOutPutValidPopUp(ObjComplete.FnCourseModuleCompletionSave(FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["MTLID"].ToString())), FnIsNumeric(FnDecryptQueryString(Request.QueryString["WID"].ToString())), FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), "Course Module Complete", true, FnGetRights().USERID, FnGetRights().CMPID));
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
}