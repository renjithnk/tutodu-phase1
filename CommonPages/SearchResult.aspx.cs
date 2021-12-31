using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CommonPages_SearchResult : ClsPageEvents, IPageInterFace
{
    WebAppGeneralList.WebAppGeneralList objGenList = new WebAppGeneralList.WebAppGeneralList();
    WebAppCommonGen.WebAppCommonGeneral objCommGen = new WebAppCommonGen.WebAppCommonGeneral();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
                ViewState["medID"] = "";
                ViewState["OrgID"] = "";
                ViewState["Cat"] = "";
                ViewState["DurType"] = "";
                ViewState["AcdLevID"] = "";
                ViewState["Fee"] = "";
                ViewState["Cur"] = "";

                TxtSearchKey.Text = Request.QueryString["SEARCH"].ToString();
                FnGetCourseLanguages();
                FnGetAcademicLevel();
                FGetCourseCategory();
                FnGetCourseDuration();
                FnGetCourseFee();
                FnGetSortItems();
                FnGetOrganization();
                FnGetCurrency();
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

    public void FnGetSortItems()
    {
        try
        {
            DataTable dt2 = new DataTable();
            dt2.Columns.Add("Name");
            dt2.Rows.Add("Price - Low to high");
            dt2.Rows.Add("Price - High to Low");
            dt2.Rows.Add("Enrollment Date");
            dt2.Rows.Add("Rating");
            dt2.Rows.Add("Newest");

            RptrSortItems.DataSource = dt2;
            RptrSortItems.DataBind();

            RptrSortItemsMob.DataSource = dt2;
            RptrSortItemsMob.DataBind();
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public void FGetCourseCategory()
    {
        try
        {
            DataTable dt2 = new DataTable();
            dt2.Columns.Add("Name");
            dt2.Rows.Add("Tuition");
            dt2.Rows.Add("On Demand");
            //dt2.Rows.Add("Private");
            dt2.Rows.Add("Public");

            ChkBxCat.DataSource = dt2;
            ChkBxCat.DataValueField = "Name";
            ChkBxCat.DataTextField = "Name";
            ChkBxCat.DataBind();

            ChkBxCatMob.DataSource = dt2;
            ChkBxCatMob.DataValueField = "Name";
            ChkBxCatMob.DataTextField = "Name";
            ChkBxCatMob.DataBind();
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public void FnGetOrganization()
    {
        try
        {
            ChkBxOrg.DataSource = objGenList.FnGetPopularOrganizationRecordsList(0);
            ChkBxOrg.DataValueField = "ID";
            ChkBxOrg.DataTextField = "NAME";
            ChkBxOrg.DataBind();

            ChkBxOrgMob.DataSource = objGenList.FnGetPopularOrganizationRecordsList(0);
            ChkBxOrgMob.DataValueField = "ID";
            ChkBxOrgMob.DataTextField = "NAME";
            ChkBxOrgMob.DataBind();
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public void FnGetCurrency()
    {
        try
        {
            DataTable dt2 = new DataTable();
            dt2.Columns.Add("Name");
            dt2.Rows.Add("INR");
            dt2.Rows.Add("DOLLAR");
            dt2.Rows.Add("POUND");
            dt2.Rows.Add("EURO");

            ChkBxCurrency.DataSource = dt2;
            ChkBxCurrency.DataValueField = "Name";
            ChkBxCurrency.DataTextField = "Name";
            ChkBxCurrency.DataBind();
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public void FnGetCourseDuration()
    {
        try
        {
            DataTable dt2 = new DataTable();
            dt2.Columns.Add("Name");
            dt2.Rows.Add("Days");
            dt2.Rows.Add("Weeks");
            dt2.Rows.Add("Months");

            ChkBxDur.DataSource = dt2;
            ChkBxDur.DataValueField = "Name";
            ChkBxDur.DataTextField = "Name";
            ChkBxDur.DataBind();

            ChkBxDurMob.DataSource = dt2;
            ChkBxDurMob.DataValueField = "Name";
            ChkBxDurMob.DataTextField = "Name";
            ChkBxDurMob.DataBind();
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public void FnGetAcademicLevel()
    {
        try
        {
            ChkBxLevel.DataSource = objCommGen.FnGetAcademicLevelRecords("", "");
            ChkBxLevel.DataValueField = "ID";
            ChkBxLevel.DataTextField = "NAME";
            ChkBxLevel.DataBind();

            ChkBxLevelMob.DataSource = objCommGen.FnGetAcademicLevelRecords("", "");
            ChkBxLevelMob.DataValueField = "ID";
            ChkBxLevelMob.DataTextField = "NAME";
            ChkBxLevelMob.DataBind();
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public void FnGetCourseLanguages()
    {
        try
        {
            ChkBxLang.DataSource = objGenList.FnGetCourseMediumRecords(0);
            ChkBxLang.DataValueField = "ID";
            ChkBxLang.DataTextField = "NAME";
            ChkBxLang.DataBind();

            ChkBxLangMob.DataSource = objGenList.FnGetCourseMediumRecords(0);
            ChkBxLangMob.DataValueField = "ID";
            ChkBxLangMob.DataTextField = "NAME";
            ChkBxLangMob.DataBind();

        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public void FnGetCourseFee()
    {
        try
        {
            DataTable dt2 = new DataTable();
            dt2.Columns.Add("Name");
            dt2.Rows.Add("0");
            dt2.Rows.Add("<1000");
            dt2.Rows.Add("1000-2000");
            dt2.Rows.Add("2000<");

            ChkBxFee.DataSource = dt2;
            ChkBxFee.DataValueField = "Name";
            ChkBxFee.DataTextField = "Name";
            ChkBxFee.DataBind();

            ChkBxFeeMob.DataSource = dt2;
            ChkBxFeeMob.DataValueField = "Name";
            ChkBxFeeMob.DataTextField = "Name";
            ChkBxFeeMob.DataBind();
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
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
        try
        {
            ViewState["DT"] = objGenList.FnGetCourseAdvanceSearchDetails(TxtSearchKey.Text.Trim(), ViewState["Cat"].ToString().Trim(), ViewState["OrgID"].ToString().Trim(), ViewState["medID"].ToString().Trim(), ViewState["Cat"].ToString().Trim(), "", ViewState["DurType"].ToString().Trim(), ViewState["AcdLevID"].ToString().Trim()).Tables[0];
            FnGridViewBinding("");
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
        try
        {
            DataView _dwList = new DataView(ViewState["DT"] as DataTable);
            if (_dwList.ToTable().Rows.Count > 0)
            {
                RptrSearchResults.DataSource = _dwList.ToTable();
                RptrSearchResults.DataBind();

                RptrSearchResultsMob.DataSource = _dwList.ToTable();
                RptrSearchResultsMob.DataBind();

                //RptRelatedSrch.DataSource = _dwList.ToTable();
                //RptRelatedSrch.DataBind();

                DivSearchErrMsg.Visible = false;
                DivSearchErrMsg2.Visible = false;
            }
            else
            {
                DivSearchErrMsg.Visible = true;
                DivSearchErrMsg2.Visible = true;

                RptrSearchResults.DataSource = null;
                RptrSearchResults.DataBind();

                RptrSearchResultsMob.DataSource = null;
                RptrSearchResultsMob.DataBind();
            }
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

    protected void ChkBxLang_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["medID"] = FnGetCheckboxListValue(ChkBxLang);
        FnFindRecord();
    }
    protected void ChkBxCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["Cat"] = FnGetCheckboxListValue(ChkBxCat);
        FnFindRecord();
    }
    protected void ChkBxDur_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["DurType"] = FnGetCheckboxListValue(ChkBxDur);
        FnFindRecord();
    }
    protected void ChkBxLevel_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["AcdLevID"] = FnGetCheckboxListValue(ChkBxLevel);
        FnFindRecord();
    }

    protected void ChkBxOrg_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["OrgID"] = FnGetCheckboxListValue(ChkBxOrg);
        FnFindRecord();
    }
    protected void ChkBxFee_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["Fee"] = FnGetCheckboxListValue(ChkBxFee);
        FnFindRecord();
    }
    //===================================================================================
    protected void ChkBxLangMob_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["medID"] = FnGetCheckboxListValue(ChkBxCatMob);
        FnFindRecord();
    }

    protected void ChkBxCatMob_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["Cat"] = FnGetCheckboxListValue(ChkBxCatMob);
        FnFindRecord();
    }

    protected void ChkBxDurMob_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["DurType"] = FnGetCheckboxListValue(ChkBxDurMob);
        FnFindRecord();

    }
    protected void ChkBxLevelMob_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["AcdLevID"] = FnGetCheckboxListValue(ChkBxLevelMob);
        FnFindRecord();
    }

    protected void ChkBxOrgMob_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["OrgID"] = FnGetCheckboxListValue(ChkBxOrgMob);
        FnFindRecord();
    }

    protected void ChkBxFeeMob_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["Fee"] = FnGetCheckboxListValue(ChkBxFeeMob);
        FnFindRecord();
    }
    protected void ChkBxCurrency_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewState["Cur"] = FnGetCheckboxListValue(ChkBxCurrency);
        FnFindRecord();
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }

    protected void RptrSearchResultsMob_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString().Trim(), 24);

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseDetailsPage(dr["CourseTType"].ToString(), FnIsNumeric(dr["AccId"].ToString()), dr["Name"].ToString(), FnIsNumeric(dr["ID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptrSearchResults_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString().Trim(), 24);
                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseDetailsPage(dr["CourseTType"].ToString(), FnIsNumeric(dr["AccId"].ToString()), dr["Name"].ToString(), FnIsNumeric(dr["ID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void RptRelatedSrch_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString().Trim(), 24);

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseDetailsPage(dr["CourseTType"].ToString(), FnIsNumeric(dr["AccId"].ToString()), dr["Name"].ToString(), FnIsNumeric(dr["ID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    protected void LnlSearch_Click(object sender, EventArgs e)
    {
        FnFindRecord();
    }
}