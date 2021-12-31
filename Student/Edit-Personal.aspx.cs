using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing.Imaging;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Edit_Personal : ClsPageEvents, IPageInterFace
{
    WebAppRegistration.WebAppRegitation objRegister = new WebAppRegistration.WebAppRegitation();
    WebAppGeneralList.WebAppGeneralList objGeneral = new WebAppGeneralList.WebAppGeneralList();
    WebAppLog.WebAppLog objLog = new WebAppLog.WebAppLog();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
                FnNullDropDownList(DrpState);
                FnRedirectStudentPage(HyLnkDashboard, HyLnkCourses, HyLnkOrg, HyLnkCalendar, HyLnkTimeline, HyLnkExams, HyLnkNotif, HyLnkProfile, HyLnkEditProfile, HyLnkPwdReset); 
                TxtEmail.Attributes.Add("readonly", "readonly");
                FnBindingDropDownList(FnGetCountryRecords(), DrpCountry, "");
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
        TxtEmail.Text = _strEmail;
        FnFindRecord();
        LblErrMsgPerInf.Text = "";
    }
    protected void DrpCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            FnBindingDropDownList(FnGetStateRecords(DrpCountry.SelectedValue.ToString()), DrpState, "");
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
        Session["IMG_1"] = "";
        Session["DOC_1"] = "";
        ViewState["IMG_1"] = "";
        ViewState["DOC_1"] = "";

        TxtFname.Text = "";
        TxtLName.Text = "";
        TxtDate.DateText = "";
        TxtParentName.Text = "";
        TxtAdd1.Text = "";
        TxtAdd2.Text = "";
        TxtPhone1.Text = "";
        TxtPhone2.Text = "";
        DrpCountry.SelectedIndex = 0;
        DrpState.SelectedIndex = 0;
        TxtCity.Text = "";
    }
    public void FnFindRecord()
    {
        try
        {
            if (FnGetRights().ACCID > 0)
            {
                DS_RECORD = objRegister.FnGetRegister(FnGetRights().ACCID);
                if (DS_RECORD.Tables[0].Rows.Count != 0)
                {
                    ViewState["ID"] = FnGetRights().ACCID.ToString();
                    TxtEmail.Text = DS_RECORD.Tables[0].Rows[0]["Email"].ToString();
                    TxtFname.Text = DS_RECORD.Tables[0].Rows[0]["Name"].ToString();
                    TxtLName.Text = DS_RECORD.Tables[0].Rows[0]["LastName"].ToString();
                    TxtDate.DateText = FnDateTime(DS_RECORD.Tables[0].Rows[0]["Dob"].ToString(), "dd-MMM-yyyy");
                    TxtParentName.Text = DS_RECORD.Tables[0].Rows[0]["ParentName"].ToString();
                    TxtAdd1.Text = DS_RECORD.Tables[0].Rows[0]["CAddress"].ToString();
                    TxtAdd2.Text = DS_RECORD.Tables[0].Rows[0]["PAddress"].ToString();
                    TxtPhone1.Text = DS_RECORD.Tables[0].Rows[0]["MobNo"].ToString();
                    TxtPhone2.Text = DS_RECORD.Tables[0].Rows[0]["PhoneNo"].ToString();
                    DrpCountry.SelectedValue = DS_RECORD.Tables[0].Rows[0]["NationalityId"].ToString();
                    FnBindingDropDownList(FnGetStateRecords(DS_RECORD.Tables[0].Rows[0]["NationalityId"].ToString()), DrpState, "");
                    DrpState.SelectedValue = DS_RECORD.Tables[0].Rows[0]["StateId"].ToString();
                    TxtCity.Text = DS_RECORD.Tables[0].Rows[0]["City"].ToString();
                    TxtZip.Text = DS_RECORD.Tables[0].Rows[0]["PinCode"].ToString();

                    FnBindDocumetPath(HyLnkImage, DS_RECORD.Tables[0].Rows[0]["ImagePath"].ToString(), "PRF");
                    FnBindDocumetPath(HyLnkDoc, DS_RECORD.Tables[0].Rows[0]["DocFilePath"].ToString(), "DOC");

                    Session["IMG_1"] = DS_RECORD.Tables[0].Rows[0]["ImagePath"].ToString();
                    Session["DOC_1"] = DS_RECORD.Tables[0].Rows[0]["DocFilePath"].ToString();
                    ViewState["IMG_1"] = DS_RECORD.Tables[0].Rows[0]["ImagePath"].ToString();
                    ViewState["DOC_1"] = DS_RECORD.Tables[0].Rows[0]["DocFilePath"].ToString();

                    BtnSave.Text = "Update Personal Info";
                    BtnSave.CommandArgument = "UPDATE";
                }
                else
                {
                    Session["IMG_1"] = "";
                    Session["DOC_1"] = "";
                    ViewState["IMG_1"] = "";
                    ViewState["DOC_1"] = "";


                    BtnSave.Text = "Save Personal Info";
                    BtnSave.CommandArgument = "NEW";
                }
            }     
            else
            {
                Session["IMG_1"] = "";
                Session["DOC_1"] = "";
                ViewState["IMG_1"] = "";
                ViewState["DOC_1"] = "";

                BtnSave.Text = "Save Personal Info";
                BtnSave.CommandArgument = "NEW";
            }
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
        throw new NotImplementedException();
    }
    public void FnPrintRecord()
    {
        throw new NotImplementedException();
    }
    private void FnBinDoc()
    {
        try
        {
            if (Session["IMG_1"] != null)
            {
                if (Session["IMG_1"].ToString().Trim().Length > 0)
                {
                    ViewState["IMG_1"] = Session["IMG_1"].ToString();
                }
            }
            if (Session["DOC_1"] != null)
            {
                if (Session["DOC_1"].ToString().Trim().Length > 0)
                {
                    ViewState["DOC_1"] = Session["DOC_1"].ToString();
                }
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    public void ManiPulateDataEvent_Clicked(object sender, EventArgs e)
    {
        try
        {
            switch (((Button)sender).CommandName.ToString().ToUpper())
            {
                case "SAVE":
                    if (TxtFname.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the first name");
                        FnFocus(TxtFname);
                        return;
                    }
                    if (TxtLName.Text.Trim().Length <= 0)
                    {
                        FnPopUpAlert("Please enter the last name");
                        FnFocus(TxtLName);
                        return;
                    }
                    FnBinDoc();
                    switch (((Button)sender).CommandArgument.ToString().ToUpper())
                    {
                        case "NEW":
                            _IsValidId = FnShowOutPutValidRedirect(objRegister.FnStudentSave(TxtFname.Text, TxtLName.Text, TxtParentName.Text, FnGetRights().USERGROUPID, TxtDate.DateText, TxtEmail.Text.Trim(), "", TxtAdd1.Text, TxtAdd2.Text, ViewState["IMG_1"].ToString(), null, TxtPhone1.Text, TxtPhone2.Text, FnIsNumeric(DrpCountry.SelectedValue), FnIsNumeric(DrpState.SelectedValue), 0, 0, FnGetRights().USERID, TxtCity.Text, ViewState["DOC_1"].ToString(), TxtZip.Text, 0, ""));
                            break;
                        case "UPDATE":
                            _IsValidId = FnShowOutPutValidRedirect(objRegister.FnStudentUpdate(ViewState["ID"].ToString(), TxtFname.Text, TxtLName.Text, TxtParentName.Text, FnGetRights().USERGROUPID, TxtDate.DateText, TxtEmail.Text.Trim(), "", TxtAdd1.Text, TxtAdd2.Text, ViewState["IMG_1"].ToString(), TxtPhone1.Text, TxtPhone2.Text, FnIsNumeric(DrpCountry.SelectedValue), FnIsNumeric(DrpState.SelectedValue), 0, 0, FnGetRights().USERID, TxtCity.Text, ViewState["DOC_1"].ToString(), TxtZip.Text, 0, ""));
                            break;
                    }
                    // return PrmPage + "?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" +  + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=" + strPage + "&SEARCH=" + PrmSearchText.Trim() + PrmQueryString;

                    if (_IsValidId > 0)
                    {
                        Response.Redirect(FnRedirectNextPage(Request.QueryString["UID"].ToString(), Request.QueryString["UGRPID"].ToString(), FnEncryptQueryString(_IsValidId.ToString()), Request.QueryString["CID"].ToString(), "Profile.aspx", "", ""));
                    }
                    break;
                case "DELETE":
                    _IsValidId = FnShowOutPutValidRedirect(objRegister.FnStudentDelete(ViewState["ID"].ToString(), TxtFname.Text, FnGetRights().USERGROUPID, FnGetRights().USERID));
                    break;
                case "CLEAR":
                    FnClose();
                    break;
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
    protected void FileUpProfPic_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        try
        {
            string[] allowed = FnGetImageFormat(ref _strFileFormat);
            if (FileUpProfPic.PostedFile != null && FileUpProfPic.PostedFile.ContentLength > 0)
            {
                if (allowed.Contains(Path.GetExtension(e.FileName)))
                {
                    if (FnValidateFileSize(FileUpProfPic, 900, 255, 600) == true)
                    {
                        Session["IMG_1"] = FnSaveUploadFileName(e.FileName, "STU");
                        FileUpProfPic.PostedFile.SaveAs(FnServerUploadPath(FnDocFilePath("PRF", Session["IMG_1"].ToString().Trim())));
                        //string dest = Server.MapPath(Request.ApplicationPath) + FnDocFilePath("PRF", Session["IMG_1"].ToString().Trim());
                        //FileUpProfPic.PostedFile.SaveAs(dest);
                        //FnGenerateThumbnail(dest);
                    }
                }
                else
                {
                    FileUpProfPic.Attributes.Clear();
                    FileUpProfPic.Dispose();
                    Session["IMG_1"] = "";
                    FnPopUpAlert(_strFileFormat);
                    return;
                }
            }
            else
            {
                FnPopUpAlert(_strFileFormat);
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(_strFileFormat);
            throw ex;
        }
    }
    protected void LnkCrop_Click(object sender, EventArgs e)
    {
        try
        {
            FnGetCroptWindow(Session["IMG_1"].ToString(), "PROFILE IMAGE CROPING", "PROFILE", "150", "150");
        }
        catch (Exception ex)
        {
            FnPopUpAlert("Invalid Image");
        }
    }
    protected void FileUpResume_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        try
        {
            string[] allowed = FnGetPdfFormat(ref _strFileFormat);
            if (FileUpResume.PostedFile != null && FileUpResume.PostedFile.ContentLength > 0)
            {
                if (allowed.Contains(Path.GetExtension(e.FileName)))
                {
                    if (FnValidateFileSize(FileUpProfPic, 900, 255, 600) == true)
                    {
                        Session["DOC_1"] = FnSaveUploadFileName(e.FileName, "DOC");
                        FileUpResume.PostedFile.SaveAs(FnServerUploadPath(FnDocFilePath("DOC", Session["DOC_1"].ToString().Trim())));
                    }
                }
                else
                {
                    FileUpResume.Attributes.Clear();
                    FileUpResume.Dispose();
                    Session["DOC_1"] = "";
                    FnPopUpAlert(_strFileFormat);
                    return;
                }
            }
            else
            {
                FnPopUpAlert(_strFileFormat);
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(_strFileFormat);
            throw ex;
        }
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }
    public bool ThumbnailCallback()
    {
        return false;
    }
    public void FnGenerateThumbnail(string PrmVal)
    {
        string path = Server.MapPath(PrmVal);
        System.Drawing.Image image = System.Drawing.Image.FromFile(path);
        using (System.Drawing.Image thumbnail = image.GetThumbnailImage(150, 175, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero))
        {
            using (MemoryStream memoryStream = new MemoryStream())
            {
                thumbnail.Save(memoryStream, ImageFormat.Png);
                byte[] bytes = new byte[memoryStream.Length];
                memoryStream.Position = 0;
                memoryStream.Read(bytes, 0, (int)bytes.Length);
                Session["IMGBYTES"] = bytes;
                Session["IMG_TEMPID"] = Request.QueryString["TEMPID"].ToString();
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                //ImgThump.Src = "data:image/png;base64," + base64String;
            }
        }
    }
}