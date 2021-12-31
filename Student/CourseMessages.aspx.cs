using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseMessages : ClsPageEvents, IPageInterFace
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
                string strTutor = "", strTutorId = "";
                H4CrsName.InnerText = FnGetCourseName(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), ref strTutor,ref strTutorId);
                TxtTutorName.Text = strTutor;
                ViewState["TUT_ID"] = strTutorId;
                FnInitializeForm();
                TxtSubject.Focus();
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
        FnSetButtonInsertion(BtnSave);
    }
    public void FnAssignProperty()
    {
        throw new NotImplementedException();
    }

    public void FnClose()
    {
        base.FnClearId();
        TxtEditor.Text = "";
        TxtSubject.Text = "";
        FnInitializeForm();
        FnFocus(TxtSubject);
    }

    public void FnFindRecord()
    {
        DS_RECORD = objNote.FnGetStudentCourseMessageRecords(FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())));
        ViewState["DT"] = DS_RECORD.Tables[0];
        FnGridViewBinding("");
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        ViewState["ID"] = PrmDataId;
        DataRow drVal = (PrmDtRecord.Select("ID=" + PrmDataId.Trim() + "") as DataRow[])[0];
        TxtSubject .Text = drVal["Name"].ToString().Trim();
        TxtEditor.Text = drVal["Remarks"].ToString().Trim();
        FnSetButtonUpdation(BtnSave);
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        RptrMessage.DataSource = ViewState["DT"] as DataTable;
        RptrMessage.DataBind();
    }

    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        try
        {
            //Session["DOC_1"].ToString()
            string strDate = DateTime.Now.ToString("dd/MMM/yyyy");
            switch (((Button)sender).CommandName.ToString().ToUpper())
            {
                case "SAVE":
                    if (TxtSubject.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the subject");
                        FnFocus(TxtSubject);
                        return;
                    }
                    switch (((Button)sender).CommandArgument.ToString().ToUpper())
                    {
                        case "NEW":
                            _IsValidRecord = FnShowOutPutValidPopUp(objNote.FnCourseMessageSave(TxtSubject.Text.Trim(), strDate, FnGetRights().ACCID, FnIsNumeric(ViewState["TUT_ID"].ToString()), FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), TxtEditor.Text.Trim(), true, 0));
                            break;
                        case "UPDATE":
                            _IsValidRecord = FnShowOutPutValidPopUp(objNote.FnCourseMessageUpdate(ViewState["ID"].ToString(),TxtSubject.Text.Trim(), strDate, FnGetRights().ACCID, FnIsNumeric(ViewState["TUT_ID"].ToString()), FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), TxtEditor.Text.Trim(), true));
                            break;
                    }
                    if (_IsValidRecord == true)
                    {
                        FnClose();
                    }
                    break;
                case "DELETE":
                    _IsValidRecord = FnShowOutPutValidPopUp(objNote.FnCourseMessageDelete(ViewState["ID"].ToString(), FnGetRights().ACCID));
                    FnClose();
                    break;
                case "CLEAR":
                    FnClose();
                    break;
                case "FIND":
                    FnFindRecord();
                    break;
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptrMessage_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString().Trim(), 20);

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnRedirectNextPage("CourseMessageList.aspx", "", "&CRSEID=" + Request.QueryString["CRSEID"].ToString() + "&INDX=12&MSGID=" + FnEncryptQueryString(dr["Id"].ToString().ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptrMessage_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        try
        {
            ViewState["ID"] = e.CommandArgument.ToString();
            if (e.CommandName == "EDIT")
            {
                FnGetDataRowBinding(ViewState["ID"].ToString(), ViewState["DT"] as DataTable);
            }
            if (e.CommandName == "DELETE")
            {
                _IsValidRecord = FnShowOutPutValidPopUp(objNote.FnCourseMessageDelete(ViewState["ID"].ToString(), FnGetRights().ACCID));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}