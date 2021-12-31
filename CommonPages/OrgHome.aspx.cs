using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CommonPages_OrgHome : ClsPageEvents, IPageInterFace
{
    WebAppCourseMaster.WebAppCourseMaster objCourse= new WebAppCourseMaster.WebAppCourseMaster();
    WebAppCmsOrgPage.WebAppCmsOrgPage objCms = new WebAppCmsOrgPage.WebAppCmsOrgPage();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
                if (FnGetOrgAccId() > 0)
                {
                    FnInitializeForm();
                }
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public override void FnInitializeForm()
    {
        FnGetCMSData();
        FnGridViewBinding("");
    }
    public void FnGetCMSData()
    {
        DT_RECORD = objCms.FnGetHomePageRecords("", FnIsNumeric(FnDecryptQueryString(Request.QueryString["ORGCID"].ToString()))).Tables[0];
        if (DT_RECORD.Rows.Count != 0)
        {
            ImgSrcHdr.Src = FnSetFilePathOnly(DT_RECORD.Rows[0]["cSliderImage1"].ToString());
            HdrOrgName.InnerText = DT_RECORD.Rows[0]["cOrgName"].ToString().Trim();
            LblOrgContent.Text = DT_RECORD.Rows[0]["cHeaddingDesc"].ToString().Trim();
            PrPublic.InnerText = DT_RECORD.Rows[0]["cPublicDesc"].ToString().Trim();
            PrPrivate.InnerText = DT_RECORD.Rows[0]["cPrivateDesc"].ToString().Trim();
            PrContact1.InnerText = DT_RECORD.Rows[0]["cContactNo1"].ToString().Trim();
            PrContact2.InnerText = DT_RECORD.Rows[0]["cContactNo2"].ToString().Trim();
            PrLocationMap.InnerText = DT_RECORD.Rows[0]["cAddress"].ToString().Trim();
        }
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
        ViewState["DT"] = objCourse.FnGetOrganizationCourseList(8, FnIsNumeric(FnDecryptQueryString(Request.QueryString["ORGCID"].ToString()))).Tables[0];
        RptrPopularCourses.DataSource = ViewState["DT"] as DataTable;
        RptrPopularCourses.DataBind();

        DataView _dwList = new DataView(ViewState["DT"] as DataTable);
        _dwList.RowFilter = " CourseTType='Public'";
        RptrPubCourses.DataSource = _dwList.ToTable();
        RptrPubCourses.DataBind();
        
        _dwList = new DataView(ViewState["DT"] as DataTable);
        _dwList.RowFilter = " CourseTType='Private'";
        RptrPriCourses.DataSource = _dwList.ToTable();
        RptrPriCourses.DataBind();
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

    protected void LnkBttnSearch_Click(object sender, EventArgs e)
    {

    }

    protected void RptrPopularCourses_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString().Trim(), 24);

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseOrgDetailsPage(FnIsNumeric(dr["AccId"].ToString()), dr["Name"].ToString(), FnIsNumeric(dr["ID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptrPriCourses_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString().Trim(), 24);

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseOrgDetailsPage( FnIsNumeric(dr["AccId"].ToString()), dr["Name"].ToString(), FnIsNumeric(dr["ID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptrPubCourses_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString().Trim(), 24);

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseOrgDetailsPage(FnIsNumeric(dr["AccId"].ToString()), dr["Name"].ToString(), FnIsNumeric(dr["ID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}