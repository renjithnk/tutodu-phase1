using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Student_CourseForum : ClsPageEvents, IPageInterFace
{
    WebAppCourseForumDeatils.WebAppCourseForumDeatils objForum = new WebAppCourseForumDeatils.WebAppCourseForumDeatils();
    string strStyle = "";
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
        FnSetButtonInsertion(BtnSave);
    }
    public void FnAssignProperty()
    {
        throw new NotImplementedException();
    }
    public void FnClose()
    {
        base.FnClearId();
        TxtName.Text = "";
        FnInitializeForm();
        FnFocus(TxtName);
    }

    public void FnFindRecord()
    {
        DS_RECORD = objForum.FnGetCourseForumRecords("", FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnGetRights().CMPID);
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
        RptrForum.DataSource = ViewState["DT"] as DataTable;
        RptrForum.DataBind();
    }

    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        try
        {
            string strDate = DateTime.Now.ToString("dd/MMM/yyyy");
            switch (((Button)sender).CommandName.ToString().ToUpper())
            {
                case "SAVE":
                    if (TxtName.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the message");
                        FnFocus(TxtName);
                        return;
                    }
                    switch (((Button)sender).CommandArgument.ToString().ToUpper())
                    {
                        case "NEW":
                            _IsValidRecord = FnShowOutPutValid(objForum.FnCourseForumSave(strDate, FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), TxtName.Text.Trim(), TxtName.Text.Trim(), true, FnGetRights().CMPID));
                            break;
                        case "UPDATE":
                            _IsValidRecord = FnShowOutPutValid(objForum.FnCourseForumUpdate(ViewState["ID"].ToString(),strDate, FnGetRights().ACCID, FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), TxtName.Text.Trim(), TxtName.Text.Trim(), true, FnGetRights().CMPID));
                            break;
                    }
                    if (_IsValidRecord == true)
                    {
                        FnClose();
                    }
                    break;
                case "DELETE":
                    _IsValidRecord = FnShowOutPutValid(objForum.FnCourseForumDelete(ViewState["ID"].ToString(), FnGetRights().ACCID, FnGetRights().CMPID));
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

    protected void RptrForum_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;

                if (FnGetRights().ACCID == FnIsNumeric(dr["AccId"].ToString()))
                {
                    strStyle = "<li class='media'><div class='mr-3'><img src = " + dr["AccImageLivePath"].ToString().Trim() + " class='rounded-circle' width='40' height='40' alt='' /></div>"
                                + "<div class='media-body'><div class='media-chat-item' style='width:100%;'><h6>" + dr["AccName"].ToString().Trim() + "</h6><p>" + dr["Message"].ToString().Trim() + "</p></div>"
                                + "<div class='font-size-sm text-muted mt-2'>" + FnDateTime(dr["UpdateDate"].ToString().Trim(), "dd/MMM/yyyy h:mm tt") + "</div></div></li>";
                    (item.FindControl("LblAccMain") as Label).Text = strStyle;
                }
                else
                {
                    strStyle = "<li class='media media-chat-item-reverse'><div class='media-body'><div class='media-chat-item' style='width:100%;'><h6>" + dr["AccName"].ToString().Trim() + "</h6><p style='text-align:left;'> " + dr["Message"].ToString().Trim() + "</p></div>"
                        + "<div class='font-size-sm text-muted mt-2'>" + FnDateTime(dr["UpdateDate"].ToString().Trim(), "dd/MMM/yyyy h:mm tt") + "</div></div>"
                        + "<div class='ml-3'><img src = " + dr["AccImageLivePath"].ToString().Trim() + " class='rounded-circle' width='40' height='40' alt='' /></div></li>";
                    (item.FindControl("LblToMain") as Label).Text = strStyle;
                }

            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}