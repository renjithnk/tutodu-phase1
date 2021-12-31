using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseAttendance : ClsPageEvents, IPageInterFace
{
    WebAppCourseAttendance.WebAppCourseAttendance objAtt = new WebAppCourseAttendance.WebAppCourseAttendance();

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
        TxtDateLeave.Text = DateTime.Now.ToString("dd/MMM/yyy");
        DdlStatus.SelectedIndex = 1;
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
        DdlStatus.SelectedIndex = 1;
        TxtLeaveReason.Text = "";
        FnInitializeForm();
        FnFocus(DdlStatus);
    }

    public void FnFindRecord()
    {
        DS_RECORD = objAtt.FnGetCourseAttendanceRecords("", FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnGetRights().ACCID,TxtDateLeave.Text,FnGetRights().CMPID);
        ViewState["DT"] = DS_RECORD.Tables[0];
        FnGridViewBinding("");
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        ViewState["ID"] = PrmDataId;
        DataRow drVal = (PrmDtRecord.Select("ID=" + PrmDataId.Trim() + "") as DataRow[])[0];

        TxtDateLeave.Text = FnDateTime(drVal["TrDate"].ToString().Trim(), "dd/MMM/yyyy");
        DdlStatus.Text = drVal["AttendanceStatus"].ToString().Trim();
        TxtLeaveReason.Text = drVal["Remarks"].ToString().Trim();
        FnSetButtonUpdation(BtnSave);
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        RptrAttendance.DataSource = ViewState["DT"] as DataTable;
        RptrAttendance.DataBind();
    }

    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        try
        {
            switch (((Button)sender).CommandName.ToString().ToUpper())
            {
                case "SAVE":
                    if (TxtDateLeave.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the date");
                        FnFocus(TxtDateLeave);
                        return;
                    }
                    if (DdlStatus.SelectedValue.ToString()=="0")
                    {
                        FnPopUpAlert("Please select the status");
                        FnFocus(DdlStatus);
                        return;
                    }
                    if (DdlStatus.SelectedValue.ToString() == "LEAVE" && TxtLeaveReason.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the leave status");
                        FnFocus(TxtLeaveReason);
                        return;
                    }
                    switch (((Button)sender).CommandArgument.ToString().ToUpper())
                    {
                        case "NEW":
                            _IsValidRecord = FnShowOutPutValidPopUp(objAtt.FnCourseAttendancekSave(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnGetRights().ACCID,DdlStatus.SelectedValue.ToString(),TxtDateLeave.Text,TxtLeaveReason.Text.Trim(), FnGetRights().CMPID,FnGetRights().USERID));
                            break;
                        case "UPDATE":
                            _IsValidRecord = FnShowOutPutValidPopUp(objAtt.FnCourseAttendanceUpdate(ViewState["ID"].ToString(), FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnGetRights().ACCID, DdlStatus.SelectedValue.ToString(), TxtDateLeave.Text, TxtLeaveReason.Text.Trim(), FnGetRights().CMPID, FnGetRights().USERID));
                            break;
                    }
                    if (_IsValidRecord == true)
                    {
                        FnClose();
                    }
                    break;
                case "DELETE":
                    _IsValidRecord = FnShowOutPutValidPopUp(objAtt.FnCourseAttendanceDelete(ViewState["ID"].ToString(), FnGetRights().CMPID, FnGetRights().USERID));
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

    protected void ClndrAtt_SelectionChanged(object sender, EventArgs e)
    {
        try
        {
            TxtDateLeave.Text = ClndrAtt.SelectedDate.ToString("dd/MMM/yyyy");
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptrAttendance_ItemCommand(object source, RepeaterCommandEventArgs e)
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
                _IsValidRecord = FnShowOutPutValidPopUp(objAtt.FnCourseAttendanceDelete(ViewState["ID"].ToString(), FnGetRights().CMPID,FnGetRights().USERID));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptrAttendance_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                string str = dr["IsApprove"].ToString();
                (item.FindControl("LnkEdit") as LinkButton).Visible = (FnIsNumeric(dr["IsApprove"].ToString()) == 1 || FnIsNumeric(dr["IsApprove"].ToString()) == -1 ? false : true);
                (item.FindControl("LnkDelete") as LinkButton).Visible = (FnIsNumeric(dr["IsApprove"].ToString()) == 1 || FnIsNumeric(dr["IsApprove"].ToString()) == -1 ? false : true);
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}