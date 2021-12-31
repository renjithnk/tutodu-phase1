using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CommonPages_Default : ClsPageEvents, IPageInterFace
{
    WebAppGeneralList.WebAppGeneralList objGeneral = new WebAppGeneralList.WebAppGeneralList();
    WebAppCmsPage.WebAppCmsPage objCms = new WebAppCmsPage.WebAppCmsPage();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
                FnInitializeForm();
                string strVal = "";
                HyLnkAllCourses.NavigateUrl = FnRedirectNextPage("../CommonPages/SearchResult.aspx", strVal, strVal);
                HyLnkAllOrg.NavigateUrl = FnRedirectNextPage("../CommonPages/AcademyList.aspx", "", "&ORG=" + strVal);

                HyLnkAllCourses1.NavigateUrl = FnRedirectNextPage("../CommonPages/SearchResult.aspx", strVal, strVal);
                HyLnkAllOrg1.NavigateUrl = FnRedirectNextPage("../CommonPages/AcademyList.aspx", "", "&ORG=" + strVal);

                HyLnkAllCourses2.NavigateUrl = FnRedirectNextPage("../CommonPages/SearchResult.aspx", strVal, strVal);
                HyLnkAllOrg2.NavigateUrl = FnRedirectNextPage("../CommonPages/AcademyList.aspx", "", "&ORG=" + strVal);

                HyLnkSect4LearnMore.NavigateUrl = FnRedirectNextPage("../CommonPages/Academy.aspx", "", "&ORG=" + strVal);
                HyLnkSect6.NavigateUrl = FnRedirectNextPage("../CommonPages/ResourceLibrary.aspx", "", "&ORG=" + strVal);

                HylnkViewAllCoures.NavigateUrl = FnRedirectNextPage("../CommonPages/SearchResult.aspx", strVal, strVal);

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
        ViewState["DT_POP4"] = objGeneral.FnGetPopularCourseRecordsList(4);
        ViewState["DT_POP8"] = objGeneral.FnGetPopularCourseRecordsList(8);

        RptrPopularCourses.DataSource = ViewState["DT_POP4"] as DataSet;
        RptrPopularCourses.DataBind();

        RptrPopularCoursesMob.DataSource = ViewState["DT_POP8"] as DataSet;
        RptrPopularCoursesMob.DataBind();

        RptrPopularCoursesMob2.DataSource = ViewState["DT_POP8"] as DataSet;
        RptrPopularCoursesMob2.DataBind();

        RptrPartneringOrgs.DataSource = objGeneral.FnGetPopularOrganizationRecordsList(8);
        RptrPartneringOrgs.DataBind();

        RptrOurtutors.DataSource = objGeneral.FnGetPopularTutorRecordsList(8);
        RptrOurtutors.DataBind();
    }
    public void FnGetCMSData()
    {
        DataSet CmsData = objCms.FnGetHomePageRecords("");
        DataTable dt = (CmsData.Tables[0].DefaultView).ToTable();
        if (dt.Rows.Count != 0)
        {
            Img1MainSlider.Src = dt.Rows[0]["cSliderImage1"].ToString();
            Img2MainSlider.Src = dt.Rows[0]["cSliderImage2"].ToString();
            Img3MainSlider.Src = dt.Rows[0]["cSliderImage3"].ToString();

            pTagPopularCourseDesc.InnerText = dt.Rows[0]["cPopularCourseDesc"].ToString();

            ImgSec3.Src = dt.Rows[0]["cSection3Image"].ToString();
            pTagSec3.InnerText = dt.Rows[0]["cSection3Desc"].ToString();

            HdrSection4.InnerText = dt.Rows[0]["cSection4HdrText"].ToString();
            ImgSec4.Src = dt.Rows[0]["cSection4OrgBackImage"].ToString();
            pTagSec4.InnerText = dt.Rows[0]["cSection4Text"].ToString();

            Img1Sec5.Src = dt.Rows[0]["cSection5Image1"].ToString();
            HdrNew1.InnerText = dt.Rows[0]["cNewEvetHdr1"].ToString();
            pTag1Sec5.InnerText = dt.Rows[0]["cSection5Text1"].ToString();

            Img2Sec5.Src = dt.Rows[0]["cSection5Image2"].ToString();
            HdrNew2.InnerText = dt.Rows[0]["cNewEvetHdr2"].ToString();
            pTag2Sec5.InnerText = dt.Rows[0]["cSection5Text2"].ToString();

            RptrVideo1.DataSource = dt;
            RptrVideo1.DataBind();

            RptrVideo2.DataSource = dt;
            RptrVideo2.DataBind();

            H5Sec6.InnerText = dt.Rows[0]["cSection6Text"].ToString();
            pTag1Sec6.InnerText = dt.Rows[0]["cSection6TextMain"].ToString();
            pTag2Sec6.InnerText = dt.Rows[0]["cSection6TextMain2"].ToString();

            //Vdo1Sec5.src = "<source src='" + str + "' type='video/mp4'>";
            //HdrNew3.InnerText = dt.Rows[0]["cNewEvetHdr3"].ToString();
            //pTag3Sec5.InnerText = dt.Rows[0]["cSection5VideoText1"].ToString();

            //Vdo2Sec5.Src = dt.Rows[0]["cSection5Video2"].ToString();
            //HdrNew4.InnerText = dt.Rows[0]["cNewEvetHdr4"].ToString();
            //pTag4Sec5.InnerText = dt.Rows[0]["cSection5VideoText2"].ToString();


            //pTag1Sec6.InnerText = dt.Rows[0]["cSection6Text"].ToString();
            //pTag2Sec6.InnerText = dt.Rows[0]["cSection5VideoText2"].ToString();
        }
    }
    public string FnGetEventVideo(object PrmVal)
    {
        return "http://localhost:60073\\UploadedFiles\\Videos\\NewsEventVideo.mp4";
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
        throw new NotImplementedException();
    }
    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        /*try
       {
          switch (((Button)sender).CommandName.ToString().ToUpper())
           {
               case "SAVE":
                  if (TxtName.Text.Trim().Length <= 0)
                   {
                       FnPopUpAlert("Please enter the name");
                       FnFocus(TxtName);
                       return;
                   }
                   
                   break;
               case "DELETE":
                   
                   break;
               case "CLEAR":
                   //FnPopUpAlert(ObjCls.FnReportWindow("SA.HTML", "wELCOME"));
                   FnCancel();
                   break;
               case "CLOSE":
                   FnPopUpAlert(" You Have No permission To Close Record");
                   break;
               case "FIND":
                   FnFindRecord();
                   break;
           }
       }
       catch (Exception ex)
       {
           FnPopUpAlert(ex.Message);
       }*/
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

                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseDetailsPage(dr["CourseTType"].ToString(), FnIsNumeric(dr["AccId"].ToString()), dr["Name"].ToString(), FnIsNumeric(dr["ID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    protected void RptrPopularCoursesMob_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString(), 24);
                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseDetailsPage(dr["CourseTType"].ToString(), FnIsNumeric(dr["AccId"].ToString()), dr["Name"].ToString(), FnIsNumeric(dr["ID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    protected void RptrPopularCoursesMob2_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem item = e.Item;
                DataRowView dr = (DataRowView)e.Item.DataItem;
                (item.FindControl("LblName") as Label).Text = FnGetSubString(dr["Name"].ToString(), 24);
                (item.FindControl("HyLnkView") as HyperLink).NavigateUrl = FnGetCourseDetailsPage(dr["CourseTType"].ToString(), FnIsNumeric(dr["AccId"].ToString()), dr["Name"].ToString(), FnIsNumeric(dr["ID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    protected void LnkBttnViewAllCourses_Click(object sender, EventArgs e)
    {
        RptrPopularCourses.DataSource = objGeneral.FnGetPopularCourseRecordsList(0);
        RptrPopularCourses.DataBind();
    }
    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }
}