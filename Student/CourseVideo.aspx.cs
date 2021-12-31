using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CourseVideo : ClsPageEvents, IPageInterFace
{
    protected override void Page_Load(object sender, EventArgs e)
    {
        WebAppCourseModule.WebAppCourseModuleDetails objModule = new WebAppCourseModule.WebAppCourseModuleDetails();
        DataListVideo.DataSource = objModule.FnGetCourseMaterialDetails(FnIsNumeric(FnDecryptQueryString(Request.QueryString["CRSEID"].ToString())), FnIsNumeric(FnDecryptQueryString(Request.QueryString["WID"].ToString())), FnIsNumeric(FnDecryptQueryString(Request.QueryString["MTLID"].ToString()))).Tables[0];
        DataListVideo.DataBind();
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
        throw new NotImplementedException();
    }

    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }

    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        throw new NotImplementedException();
    }

   
}