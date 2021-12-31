using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_OrgMaster : ClsMasterPageEvents
{
    CultureInfo culture = new CultureInfo("en-GB");
    WebAppOrgAssign.WebAppOrganizationAssigining ObjAsgn = new WebAppOrgAssign.WebAppOrganizationAssigining();
    WebAppGeneralList.WebAppGeneralList ObjGeneral = new WebAppGeneralList.WebAppGeneralList();

    protected override void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FnRedirectPage();
            FnOrginaztionProfilBinding();
            if (Session["UID"] != null)
            {
                if (FnIsNumeric(Session["UID"].ToString()) > 0)
                {
                    AnchrBtnLogin.Visible = false;
                    AnchrBtnJoin.Visible = true;
                    DivNotLogged.Visible = false;
                    DivLogged.Visible = true;
                    FnInitializeForm();
                }
                else
                {
                    AnchrBtnLogin.Visible = true;
                    AnchrBtnJoin.Visible = false;
                }
            }
            else
            {
                Response.Redirect(FnLogOutUrl());
            }
        }
    }
    public void FnInitializeForm()
    {
        DivErrMsgLogMod.Visible = false;
        LblErrMsgCapLogMod.Text = "";
        LblErrMsgDetLogMod.Text = "";
        DivErrMsgRegMod.Visible = false;
        LblErrMsgCapRegMod.Text = "";
        LblErrMsgDetRegMod.Text = "";
        FnProfilBinding();
        FnGetCMSData();
    }
    public void FnProfilBinding()
    {
        if (FnGetAccId() > 0)
        {
            DT_PGEMASTER = FnGetProfileDetails();
            if (DT_PGEMASTER.Rows.Count != 0)
            {
                H6ProfileName.InnerText = FnGetSubString(DT_PGEMASTER.Rows[0]["Name"].ToString().Trim() + " " + DT_PGEMASTER.Rows[0]["LastName"].ToString().Trim(), 24);
                TxtName.Value = FnGetSubString(DT_PGEMASTER.Rows[0]["Name"].ToString().Trim() + " " + DT_PGEMASTER.Rows[0]["LastName"].ToString().Trim(), 24);
                TxtMail.Value = DT_PGEMASTER.Rows[0]["Email"].ToString().Trim();

                ImgProf.Src = DT_PGEMASTER.Rows[0]["ImageLivePath"].ToString();
            }
            else
            {
                H6ProfileName.InnerText = "Guest";
            }
        }
        else
        {
            ImgProf.Src = FnGetImagePath("");
            H6ProfileName.InnerText = "Guest";
        }
    }
    public void FnOrginaztionProfilBinding()
    {
        if (FnGetOrgAccId() > 0)
        {
           

            DT_PGEMASTER = FnGetOrganizationDetails();
            if (DT_PGEMASTER.Rows.Count != 0)
            {
                LblOrgName.Text = FnGetSubString(DT_PGEMASTER.Rows[0]["Name"].ToString().Trim() + DT_PGEMASTER.Rows[0]["LastName"].ToString().Trim(), 50);
                ImgOrgLogo.ImageUrl = DT_PGEMASTER.Rows[0]["ImageLivePath"].ToString();
                ViewState["REGNO"] = DT_PGEMASTER.Rows[0]["CompanyRegNo"].ToString();
                FnBindingDropDownList(ObjGeneral.FnGetOrgDepartmentList(FnIsNumeric(DT_PGEMASTER.Rows[0]["CompanyId"].ToString())).Tables[0], DdlOrgDepartment, "");
            }
        }
        else
        {
            ImgOrgLogo.ImageUrl = FnGetImagePath("");
        }
    }
    public void FnGetCMSData()
    {
        DT_PGEMASTER = FnGetCMSDataTable();
        if (DT_PGEMASTER.Rows.Count != 0)
        {
            HyLnktopCourse1.Text = DT_PGEMASTER.Rows[0]["cSection8TopCourse1"].ToString();
            HyLnktopCourse2.Text = DT_PGEMASTER.Rows[0]["cSection8TopCourse2"].ToString();
            HyLnktopCourse3.Text = DT_PGEMASTER.Rows[0]["cSection8TopCourse3"].ToString();
            HyLnktopCourse4.Text = DT_PGEMASTER.Rows[0]["cSection8TopCourse4"].ToString();
            HyLnktopCourse5.Text = DT_PGEMASTER.Rows[0]["cSection8TopCourse5"].ToString();
            HyLnktopCourse6.Text = DT_PGEMASTER.Rows[0]["cSection8TopCourse6"].ToString();
            HyLnktopCourse7.Text = DT_PGEMASTER.Rows[0]["cSection8TopCourse7"].ToString();
            HyLnktopCourse8.Text = DT_PGEMASTER.Rows[0]["cSection8TopCourse8"].ToString();

            HyLnkNewCourse1.Text = DT_PGEMASTER.Rows[0]["cSection8NewCourse1"].ToString();
            HyLnkNewCourse2.Text = DT_PGEMASTER.Rows[0]["cSection8NewCourse2"].ToString();
            HyLnkNewCourse3.Text = DT_PGEMASTER.Rows[0]["cSection8NewCourse3"].ToString();
            HyLnkNewCourse4.Text = DT_PGEMASTER.Rows[0]["cSection8NewCourse4"].ToString();
            HyLnkNewCourse5.Text = DT_PGEMASTER.Rows[0]["cSection8NewCourse5"].ToString();
            HyLnkNewCourse6.Text = DT_PGEMASTER.Rows[0]["cSection8NewCourse6"].ToString();
            HyLnkNewCourse7.Text = DT_PGEMASTER.Rows[0]["cSection8NewCourse7"].ToString();
            HyLnkNewCourse8.Text = DT_PGEMASTER.Rows[0]["cSection8NewCourse8"].ToString();

            aTagHelp1.InnerText = DT_PGEMASTER.Rows[0]["cSection8Help1"].ToString();

            HyLnkContactUs.Text = DT_PGEMASTER.Rows[0]["cSection8Help2"].ToString();
            HyLnkFeedBack.Text = DT_PGEMASTER.Rows[0]["cSection8Help3"].ToString();
            HyLnkFaq.Text = DT_PGEMASTER.Rows[0]["cSection8Help4"].ToString();
            HyLnkAboutUs.Text = DT_PGEMASTER.Rows[0]["cSection8Help5"].ToString();

            aTagHelp6.InnerText = DT_PGEMASTER.Rows[0]["cSection8Help6"].ToString();
            pTagAdd.InnerText = DT_PGEMASTER.Rows[0]["cSection8GetTouch"].ToString();
            aTagFacebook.HRef = DT_PGEMASTER.Rows[0]["cSection8SocialMedia1"].ToString();
            aTagTwitter.HRef = DT_PGEMASTER.Rows[0]["cSection8SocialMedia2"].ToString();
            aTagInstagram.HRef = DT_PGEMASTER.Rows[0]["cSection8SocialMedia3"].ToString();
            aTagDribble.HRef = DT_PGEMASTER.Rows[0]["cSection8SocialMedia4"].ToString();

        }
    }

    protected void LnkBttnLogMod_Click(object sender, EventArgs e)
    {
        try
        {
            if (TxtEmailLogMod.Value != "" && TxtPassLogMod.Value != "")
            {
                string strUID = "0", strGRPID = "0", strACCID = "0", strCID = "0", strAPPROVE = "0", strACTIVE = "0";
                string loginResult = FnAppLogin(TxtEmailLogMod.Value, TxtPassLogMod.Value);
                if (loginResult != null)
                {
                    string[] strArr = loginResult.Split('/');
                    strUID = strArr[0].ToString();
                    strGRPID = strArr[1].ToString();
                    strACCID = strArr[2].ToString();
                    strACTIVE = strArr[3].ToString();
                    strAPPROVE = strArr[4].ToString();
                    strCID = strArr[5].ToString();
                    if (FnIsNumeric(strAPPROVE) >= 0)
                    {
                        if (FnIsNumeric(strACTIVE) > 0)
                        {
                            Session["UID"] = strUID;
                            if (strGRPID.Equals("2"))//STUDENT LOGIN
                            {
                                if (FnIsNumeric(strACCID) == 0)
                                {
                                    Response.Redirect(FnRedirectPage("../Student/Edit-Personal.aspx", strUID, strGRPID, strACCID, strCID));
                                }
                                else
                                {
                                    Response.Redirect(FnRedirectPage("../Student/Dashboard.aspx", strUID, strGRPID, strACCID, strCID));
                                }
                            }
                            else if (strGRPID.Equals("5") || strGRPID.Equals("8") || strGRPID.Equals("15") || strGRPID.Equals("10"))//ADMINISTRATOR & (TUTOR & STUDENT) & //ORGANIZATION LOGIN
                            {
                                Response.Redirect(FnRedirectPage("~/AdminHome.aspx", strUID, strGRPID, strACCID, strCID));
                            }
                        }
                        else
                        {
                            LnkBttnResendEmail.Visible = true;
                            DivErrMsgLogMod.Visible = true;
                            LblErrMsgCapLogMod.Text = "Oops ! ";
                            LblErrMsgDetLogMod.Text = "Please activate your account.";
                        }
                    }
                    else
                    {
                        DivErrMsgLogMod.Visible = true;
                        LblErrMsgCapLogMod.Text = "Oops ! ";
                        LblErrMsgDetLogMod.Text = "Account disabled, Contact admin.";
                    }
                }
                else
                {
                    DivErrMsgLogMod.Visible = true;
                    LblErrMsgCapLogMod.Text = "Oops ! ";
                    LblErrMsgDetLogMod.Text = "Invalid Email id / Password.";
                }
            }
            else
            {
                DivErrMsgLogMod.Visible = true;
                LblErrMsgCapLogMod.Text = "Oops ! ";
                LblErrMsgDetLogMod.Text = "Email id or Password cannot be blank.";
            }
        }
        catch (Exception ex)
        {
            string str = ex.Message;
        }

    }

    protected void LnkBttnRegMod_Click(object sender, EventArgs e)
    {
        try
        {
            if (RadioButtonList1.SelectedValue != null)
            {
                if (RadioButtonList1.SelectedValue == "Student")
                {
                    if (TxtEmailRegMod.Value != "" && TxtPassRegMod.Value != "" && TxtConPassRegMod.Value != "")
                    {
                        if (TxtPassRegMod.Value == TxtConPassRegMod.Value)
                        {
                            var regResult = FnSaveStudent(TxtEmailRegMod.Value, TxtPassRegMod.Value);
                            if (regResult != null)
                            {
                                if (regResult == "0/Can not Insert ,This Email details already exists.")
                                {
                                    DivErrMsgRegMod.Visible = true;
                                    LblErrMsgCapRegMod.Text = "Oops!";
                                    LblErrMsgDetRegMod.Text = "User with email id already exists in our system.";
                                }
                                else
                                {
                                    FnRedirectAbsolutePath();
                                }
                            }
                            else
                            {
                                DivErrMsgRegMod.Visible = true;
                                LblErrMsgCapRegMod.Text = "Oops!";
                                LblErrMsgDetRegMod.Text = "Error occured please try again.";
                            }
                        }
                        else
                        {
                            DivErrMsgRegMod.Visible = true;
                            LblErrMsgCapRegMod.Text = "Oops!";
                            LblErrMsgDetRegMod.Text = "Password not matching.";
                        }
                    }
                    else
                    {
                        DivErrMsgRegMod.Visible = true;
                        LblErrMsgCapRegMod.Text = "Oops!";
                        LblErrMsgDetRegMod.Text = "Email id or password cannot be blank.";
                    }
                }
                else if (RadioButtonList1.SelectedValue == "Tutor")
                {
                    if (TxtEmailRegMod.Value != "" && TxtPassRegMod.Value != "" && TxtConPassRegMod.Value != "")
                    {
                        if (TxtPassRegMod.Value == TxtConPassRegMod.Value)
                        {
                            var regResult = FnSaveTutor(TxtEmailRegMod.Value, TxtPassRegMod.Value);
                            if (regResult != null)
                            {
                                if (regResult == "0/Can not Insert ,This Email details already exists.")
                                {
                                    DivErrMsgRegMod.Visible = true;
                                    LblErrMsgCapRegMod.Text = "Oops!";
                                    LblErrMsgDetRegMod.Text = "User with email id already exists in our system.";
                                }
                                else
                                {
                                    FnRedirectAbsolutePath();
                                    //string path = HttpContext.Current.Request.Url.AbsolutePath;
                                    //Response.Redirect(path + "?regcomplt");
                                }
                            }
                            else
                            {
                                DivErrMsgRegMod.Visible = true;
                                LblErrMsgCapRegMod.Text = "Oops!";
                                LblErrMsgDetRegMod.Text = "Error occured please try again.";
                            }
                        }
                        else
                        {
                            DivErrMsgRegMod.Visible = true;
                            LblErrMsgCapRegMod.Text = "Oops!";
                            LblErrMsgDetRegMod.Text = "Password not matching.";
                        }
                    }
                    else
                    {
                        DivErrMsgRegMod.Visible = true;
                        LblErrMsgCapRegMod.Text = "Oops!";
                        LblErrMsgDetRegMod.Text = "Email id or password cannot be blank.";
                    }
                }
                else if (RadioButtonList1.SelectedValue == "Organization")
                {
                    if (TxtEmailRegMod.Value != "" && TxtPassRegMod.Value != "" && TxtConPassRegMod.Value != "")
                    {
                        if (TxtPassRegMod.Value == TxtConPassRegMod.Value)
                        {
                            var regResult = FnSaveOrganization(TxtEmailRegMod.Value, TxtPassRegMod.Value);
                            if (regResult != null)
                            {
                                if (regResult == "0/Can not Insert ,This Email details already exists.")
                                {
                                    DivErrMsgRegMod.Visible = true;
                                    LblErrMsgCapRegMod.Text = "Oops!";
                                    LblErrMsgDetRegMod.Text = "User with email id already exists in our system.";
                                }
                                else
                                {
                                    FnRedirectAbsolutePath();
                                }
                            }
                            else
                            {
                                DivErrMsgRegMod.Visible = true;
                                LblErrMsgCapRegMod.Text = "Oops!";
                                LblErrMsgDetRegMod.Text = "Error occured please try again.";
                            }
                        }
                        else
                        {
                            DivErrMsgRegMod.Visible = true;
                            LblErrMsgCapRegMod.Text = "Oops!";
                            LblErrMsgDetRegMod.Text = "Password not matching.";
                        }
                    }
                    else
                    {
                        DivErrMsgRegMod.Visible = true;
                        LblErrMsgCapRegMod.Text = "Oops!";
                        LblErrMsgDetRegMod.Text = "Email id or password cannot be blank.";
                    }
                }
                else
                {
                    DivErrMsgRegMod.Visible = true;
                    LblErrMsgCapRegMod.Text = "Oops!";
                    LblErrMsgDetRegMod.Text = "Error occured please try again.";
                }
            }
            else
            {
                DivErrMsgRegMod.Visible = true;
                LblErrMsgCapRegMod.Text = "Oops!";
                LblErrMsgDetRegMod.Text = "Select user type.";
            }
        }
        catch (Exception ex)
        {
            string str = ex.Message;
        }
    }

    protected void LnkBttnResendEmail_Click(object sender, EventArgs e)
    {
        try
        {
            var result = FnResentMail(TxtEmailLogMod.Value, TxtPassLogMod.Value);
            if (result == "1")
            {
                DivErrMsgRegMod.Visible = true;
                LblErrMsgCapRegMod.Text = "Hooray!";
                LblErrMsgDetRegMod.Text = "Email Sent, Please check your spam or junk folder.";
            }
        }
        catch (Exception ex)
        {
            string str = ex.Message;
        }
    }

    protected void LnkBttnMyProfile_Click(object sender, EventArgs e)
    {
        if (FnGetUserGrpId() > 0)
        {
            if (FnGetUserGrpId() == 2) //student
            {
                Response.Redirect(FnRedirectPage("../Student/Profile.aspx", ""));
            }
            else if (FnGetUserGrpId() == 5) //tutor
            {
                Response.Redirect(FnRedirectPage("../Tutor/TutorProfile.aspx", ""));
            }
            else if (FnGetUserGrpId() == 8) //org
            {
                Response.Redirect(FnRedirectPage("../Organization/OrgProfile.aspx", ""));
            }
            else if (FnGetUserGrpId() == 10) //admin
            {
                Response.Redirect(FnRedirectPage("../Admin/AdminProfile.aspx", ""));
            }
            else if (FnGetUserGrpId() == 15) //admin
            {
                Response.Redirect(FnRedirectPage("../Student/Profile.aspx", ""));
            }
            else
            {
                Response.Redirect(FnRedirectPage("../CommonPages/Index.aspx", ""));
            }
        }
        else
        {
            Response.Redirect(FnRedirectPage("../CommonPages/Index.aspx", ""));
        }
    }

    protected void LnkBttnDashboard_Click(object sender, EventArgs e)
    {
        if (FnGetUserGrpId() > 0)
        {
            if (FnGetUserGrpId() == 2) //student
            {
                Response.Redirect(FnRedirectPage("../Student/Dashboard.aspx", ""));
            }
            else if (FnGetUserGrpId() == 5) //tutor
            {
                Response.Redirect(FnRedirectPage("../Tutor/Dashboard.aspx", ""));
            }
            else if (FnGetUserGrpId() == 8) //org
            {
                Response.Redirect(FnRedirectPage("../Organization/Dashboard.aspx", ""));
            }
            else if (FnGetUserGrpId() == 10) //admin
            {
                Response.Redirect(FnRedirectPage("../Admin/Dashboard.aspx", ""));
            }
            else if (FnGetUserGrpId() == 15) //admin
            {
                Response.Redirect(FnRedirectPage("../Student/Dashboard.aspx", ""));
            }
            else
            {
                Response.Redirect(FnRedirectPage("../CommonPages/Index.aspx", ""));
            }
        }
        else
        {
            Response.Redirect(FnRedirectPage("../CommonPages/Index.aspx", ""));
        }
    }

    protected void LnkBttnLogOut_Click(object sender, EventArgs e)
    {
        Response.Redirect(FnRedirectPage("../CommonPages/Logout.aspx", ""));
    }
    private void FnRedirectPage()
    {
        HyLnkLogOut.NavigateUrl = FnLogOutUrl();

        ImgOrgLogo.PostBackUrl = "~/CommonPages/OrgHome.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&ORGID=" + Request.QueryString["ORGID"].ToString() + "&ORGCID=" + Request.QueryString["ORGCID"].ToString() + "&CNAME=" + Request.QueryString["CNAME"].ToString();
        HyLnkTutodu.NavigateUrl = "~/CommonPages/Index.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&ORGID=" + Request.QueryString["ORGID"].ToString() + "&ORGCID=" + Request.QueryString["ORGCID"].ToString() + "&CNAME=" + Request.QueryString["CNAME"].ToString();
        HyLnkTutodu1.NavigateUrl = "~/CommonPages/Index.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&ORGID=" + Request.QueryString["ORGID"].ToString() + "&ORGCID=" + Request.QueryString["ORGCID"].ToString() + "&CNAME=" + Request.QueryString["CNAME"].ToString();

        HyLnkOrgHome.NavigateUrl = "~/CommonPages/OrgHome.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&ORGID=" + Request.QueryString["ORGID"].ToString() + "&ORGCID=" + Request.QueryString["ORGCID"].ToString() + "&CNAME=" + Request.QueryString["CNAME"].ToString();
        HyLnkOrgAbout.NavigateUrl = "~/CommonPages/OrgAboutUs.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&ORGID=" + Request.QueryString["ORGID"].ToString() + "&ORGCID=" + Request.QueryString["ORGCID"].ToString() + "&CNAME=" + Request.QueryString["CNAME"].ToString();
        HyLnkOrgRes.NavigateUrl = "~/CommonPages/OrgResources.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&ORGID=" + Request.QueryString["ORGID"].ToString() + "&ORGCID=" + Request.QueryString["ORGCID"].ToString() + "&CNAME=" + Request.QueryString["CNAME"].ToString();
        HyLnkOrgNews.NavigateUrl = "~/CommonPages/OrgNews.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&ORGID=" + Request.QueryString["ORGID"].ToString() + "&ORGCID=" + Request.QueryString["ORGCID"].ToString() + "&CNAME=" + Request.QueryString["CNAME"].ToString();
        HyLnkOrgContact.NavigateUrl = "~/CommonPages/OrgContactsUs.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&ORGID=" + Request.QueryString["ORGID"].ToString() + "&ORGCID=" + Request.QueryString["ORGCID"].ToString() + "&CNAME=" + Request.QueryString["CNAME"].ToString();

        HyLnkContactUs.NavigateUrl = "~/CommonPages/ContactUs.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE";
        HyLnkFaq.NavigateUrl = "~/CommonPages/FAQ.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE";
        HyLnkFeedBack.NavigateUrl = "~/CommonPages/Blog.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE";
        HyLnkAboutUs.NavigateUrl = "~/CommonPages/AboutUs.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE";

        HyLnktopCourse1.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnktopCourse1.Text.Trim();
        HyLnktopCourse2.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnktopCourse2.Text.Trim();
        HyLnktopCourse3.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnktopCourse3.Text.Trim();
        HyLnktopCourse4.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnktopCourse4.Text.Trim();
        HyLnktopCourse5.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnktopCourse5.Text.Trim();
        HyLnktopCourse6.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnktopCourse6.Text.Trim();
        HyLnktopCourse7.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnktopCourse7.Text.Trim();
        HyLnktopCourse8.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnktopCourse8.Text.Trim();

        HyLnkNewCourse1.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnkNewCourse1.Text.Trim();
        HyLnkNewCourse2.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnkNewCourse2.Text.Trim();
        HyLnkNewCourse3.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnkNewCourse3.Text.Trim();
        HyLnkNewCourse4.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnkNewCourse4.Text.Trim();
        HyLnkNewCourse5.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnkNewCourse5.Text.Trim();
        HyLnkNewCourse6.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnkNewCourse6.Text.Trim();
        HyLnkNewCourse7.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnkNewCourse7.Text.Trim();
        HyLnkNewCourse8.NavigateUrl = "~/CommonPages/SearchResult.aspx?UID=" + Request.QueryString["UID"].ToString() + "&UGRPID=" + Request.QueryString["UGRPID"].ToString() + "&ACCID=" + Request.QueryString["ACCID"].ToString() + "&CID=" + Request.QueryString["CID"].ToString() + "&TTYPE=NONE&SEARCH=" + HyLnkNewCourse8.Text.Trim();
    }
    protected void LnkBtnJoinOrg_Click(object sender, EventArgs e)
    {
        try
        {
            bool bVal = false;
            if (FnGetUserGrpId() == 2)
            {
                bVal = FnShowOutPutValidPopUp(ObjAsgn.FnOrganizationAssiginingSave(ViewState["REGNO"].ToString(), FnGetAccId().ToString(), "", FnGetOrgAccId().ToString(), "Organization Student Joining Request ", true, FnGetUserId().ToString(), TxtOrgNo.Value, "", FnIsNumeric(DdlOrgDepartment.SelectedValue.ToString())));
            }
            else
            {
                bVal = FnShowOutPutValidPopUp(ObjAsgn.FnOrganizationAssiginingSave(ViewState["REGNO"].ToString(), "", FnGetAccId().ToString(), FnGetOrgAccId().ToString(), "Organization Tutor Joining Request ", true, FnGetUserId().ToString(), TxtOrgNo.Value, "", FnIsNumeric(DdlOrgDepartment.SelectedValue.ToString())));
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }
}
