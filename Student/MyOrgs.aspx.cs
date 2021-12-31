using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_MyOrgs : ClsPageEvents, IPageInterFace
{
    WebAppOrgAssign.WebAppOrganizationAssigining objOrgassign = new WebAppOrgAssign.WebAppOrganizationAssigining();
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
        throw new NotImplementedException();
    }

    public object FnGetGridRowCount(string PrmFlag)
    {
        throw new NotImplementedException();
    }

    public void FnGridViewBinding(string PrmFlag)
    {
        try
        {
            RptrEnrldOrgs.DataSource = objOrgassign.FnGetOrganizationAssiginingRecords("", "", FnGetRights().ACCID.ToString(), "", "", "", "");
            RptrEnrldOrgs.DataBind();
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
        throw new NotImplementedException();
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }

    protected void RptrEnrldOrgs_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["OrganizationName"].ToString().Trim(), 50);
                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnRedirectNextPage("../CommonPages/OrgHome.aspx", "", "&ORGCID=" + FnEncryptQueryString(dr["OrgCompanyId"].ToString()) + "&ORGID=" + FnEncryptQueryString(dr["OrganizationId"].ToString()) + "&CNAME=" + dr["OrganizationName"].ToString().Trim());
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}