using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Calendar1 : ClsPageEvents, IPageInterFace
{
    WebAppCourseCalender.WebAppCourseCalender objCalender = new WebAppCourseCalender.WebAppCourseCalender();
    DataView _dwFilterCalender = null;

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

        TxtFromDate.DateText = DateTime.Now.ToString("dd/MMM/yyy");
        TxtToDate.DateText = DateTime.Now.ToString("dd/MMM/yyy");

        FnGridViewBinding("");
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
        FnGridViewBinding("");
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        try
        {
            DT_RECORD = objCalender.FnGetStudentCalenderRecords(FnGetRights().ACCID, TxtFromDate.DateText, TxtToDate.DateText).Tables[0];
            RptrMainCalender.DataSource = DT_RECORD;
            RptrMainCalender.DataBind();
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
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

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }
    protected void ClndrAtt_SelectionChanged(object sender, EventArgs e)
    {
        try
        {
            TxtFromDate.DateText = ClndrAtt.SelectedDate.ToString("dd/MMM/yyyy");
            TxtToDate.DateText = ClndrAtt.SelectedDate.ToString("dd/MMM/yyyy");
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    protected void RptrMainCalender_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            RepeaterItem item = e.Item;
            DataRowView dr = (DataRowView)e.Item.DataItem;
            (item.FindControl("LblName") as Label).Text = "<p><span class='SpanBoldStyle'>Event Type :</span> <span >" + dr["EventType"].ToString().Trim()  + "</span><span class='SpanPaddingStyle'>Event Location :</span> <span >" + dr["EventLocation"].ToString().Trim() + "</span></p>";
            (item.FindControl("LblTime") as Label).Text = "<p><span class='SpanBoldStyle'>Start Time :</span> <span >" + dr["StartTime"].ToString().Trim() + "</span><span class='SpanPaddingStyle'>End Time :</span> <span >" + dr["EndTime"].ToString().Trim() + "</span></p>";
            (item.FindControl("LblDoc") as Label).Text = "<span class='SpanBoldStyle'>Documents :</span> ";
            FnBindDocumetPath((item.FindControl("HyLnkDoc") as HyperLink), dr["DocFile"].ToString().Trim(), "DOC");

            //_dwFilterCalender = new DataView(ViewState["DT"] as DataTable);
            //_dwFilterCalender.RowFilter = "CourseChapterId =" + FnIsNumeric(dr["CourseChapterId"].ToString()) + " AND CourseWeekId=" + FnIsNumeric(FnDecryptQueryString(Request.QueryString["WID"].ToString())) + "";
        }
    }

    protected void RptrContents_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}