using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_SwitchToTutor : ClsPageEvents, IPageInterFace
{
    WebAppRegistration.WebAppRegitation objRegister = new WebAppRegistration.WebAppRegitation();
    WebAppStudentTutorReq.WebAppStudentTutorReq objStudentTutorReg = new WebAppStudentTutorReq.WebAppStudentTutorReq();

    protected override void Page_Load(object sender, EventArgs e)
    {
        try
        {
            base.Page_Load(sender, e);
            if (!IsPostBack)
            {
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
        if (Session["grpid"] != null)
        {
            if (Session["grpid"].ToString() == "15")
            {
                GetProfileDetTutStu();
            }
            else if (Session["grpid"].ToString() == "2")
            {
                GetProfileDet();
            }

            DataSet TutStudentDet = objStudentTutorReg.FnGetTutorStudentRequestRecords("", Convert.ToInt32(Session["accid"]));
            TutStudentDet.Tables[0].DefaultView.RowFilter = "TutorId = '" + Session["accid"].ToString() + "'";
            DataTable dtTut = (TutStudentDet.Tables[0].DefaultView).ToTable();
            if (dtTut.Rows.Count != 0)
            {

                string Approval = dtTut.Rows[0]["IsApprove"].ToString();
                if (Approval == "1")
                {
                    Response.Redirect("../Tutor/Dashboard.aspx");
                }
                else if (Approval == "0")
                {
                    PTagErrMsg.InnerText = "*Request Pending.";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "Notify('Oops!', 'Request Pending',  'icon-checkmark-circle2', 'warning');", true);
                }
                else if (Approval == "-1")
                {
                    PTagErrMsg.InnerText = "*Request Rejected.";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "Notify('Oops!', 'Request Rejected',  'icon-checkmark-circle2', 'danger');", true);
                }
            }
            else
            {
                PTagErrMsg.InnerText = "*Request Not Found.";
            }

            DataSet StudentTutDet = objStudentTutorReg.FnGetStudentTutorRequestRecords("", Convert.ToInt32(Session["accid"]));
            StudentTutDet.Tables[0].DefaultView.RowFilter = "StudentId = '" + Session["accid"].ToString() + "'";
            DataTable dt = (StudentTutDet.Tables[0].DefaultView).ToTable();
            if (dt.Rows.Count != 0)
            {

                string Approval = dt.Rows[0]["IsApprove"].ToString();
                if (Approval == "1")
                {
                    Response.Redirect("../Tutor/Dashboard.aspx");
                }
                else if (Approval == "0")
                {
                    PTagErrMsg.InnerText = "*Request Pending.";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "Notify('Oops!', 'Request Pending',  'icon-checkmark-circle2', 'warning');", true);
                }
                else if (Approval == "-1")
                {
                    PTagErrMsg.InnerText = "*Request Rejected.";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "Notify('Oops!', 'Request Rejected',  'icon-checkmark-circle2', 'danger');", true);
                }
            }
            else
            {
                PTagErrMsg.InnerText = "*Request Not Found.";
            }
        }
        else
        {
            Response.Redirect("../CommonPages/Index.aspx");
        }
    }

    public void GetProfileDetTutStu()
    {
        try
        {
            if (Session["accid"] != null)
            {
                if (Session["accid"].ToString() != "0")
                {
                    DataSet ds = objRegister.FnGetTutorRecords(Session["accid"].ToString(), "", Convert.ToInt32(Session["grpid"]), Convert.ToString(Session["emailid"]), 0);
                    if (ds.Tables[0].Rows.Count != 0)
                    {
                        string fstname = ds.Tables[0].Rows[0]["Name"].ToString();
                        string lstname = ds.Tables[0].Rows[0]["LastName"].ToString();
                        PProfileEmail.InnerText = ds.Tables[0].Rows[0]["Email"].ToString();
                        PProfilePhone.InnerText = ds.Tables[0].Rows[0]["MobNo"].ToString();
                        H5ProfileName.InnerText = (char.ToUpper(fstname[0]).ToString() + fstname.Substring(1) + " " + char.ToUpper(lstname[0]).ToString() + lstname.Substring(1));
                        LblStuName.Text = (char.ToUpper(fstname[0]).ToString() + fstname.Substring(1) + " " + char.ToUpper(lstname[0]).ToString() + lstname.Substring(1));
                        //H5ProfileName.InnerText = char.ToUpper(fstname[0]).ToString() + fstname.Substring(1);
                    }
                    else
                    {
                        H5ProfileName.InnerText = "Guest";
                    }
                }
                else
                {
                    H5ProfileName.InnerText = "Guest";
                }
            }
        }
        catch (Exception ex)
        {
            FnPopUpAlert(ex.Message);
        }
    }

    public void GetProfileDet()
    {
        try
        {
            if (Session["accid"] != null)
            {
                if (Session["accid"].ToString() != "0")
                {
                    DataSet ds = objRegister.FnGetStudentRecords(Session["accid"].ToString(), "", Convert.ToInt32(Session["grpid"]), Convert.ToString(Session["emailid"]));
                    if (ds.Tables[0].Rows.Count != 0)
                    {
                        string fstname = ds.Tables[0].Rows[0]["Name"].ToString();
                        string lstname = ds.Tables[0].Rows[0]["LastName"].ToString();
                        PProfileEmail.InnerText = ds.Tables[0].Rows[0]["Email"].ToString();
                        PProfilePhone.InnerText = ds.Tables[0].Rows[0]["MobNo"].ToString();
                        H5ProfileName.InnerText = (char.ToUpper(fstname[0]).ToString() + fstname.Substring(1) + " " + char.ToUpper(lstname[0]).ToString() + lstname.Substring(1));
                        //H5ProfileName.InnerText = char.ToUpper(fstname[0]).ToString() + fstname.Substring(1);
                        LblStuName.Text = (char.ToUpper(fstname[0]).ToString() + fstname.Substring(1) + " " + char.ToUpper(lstname[0]).ToString() + lstname.Substring(1));
                    }
                    else
                    {
                        H5ProfileName.InnerText = "Guest";
                    }
                }
                else
                {
                    H5ProfileName.InnerText = "Guest";
                }
            }
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
    protected void LnkBttnSentLeaveRqst_Click(object sender, EventArgs e)
    {
        if (Session["accid"] != null)
        {
            if (Session["accid"].ToString() != "0")
            {
                var result = objStudentTutorReg.FnStudentTutorRequestSave(Convert.ToInt32(Session["accid"].ToString()), Convert.ToInt32(Session["loginid"].ToString()));
                if (result == "1/Request Inserted Successfully")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "Notify('Success', 'Request Sent',  'icon-checkmark-circle2', 'success');", true);
                    TxtRemarks.Text = "";
                    PTagErrMsg.InnerText = "*Request Sent";
                }
                if (result == "0/Can not Insert ,This student request is already exists.")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "Notify('Oops!', 'Request already exists',  'icon-checkmark-circle2', 'warning');", true);
                    TxtRemarks.Text = "";
                }
                if (result == "0/Can not Insert ,This tutor request is already exists.")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "Notify('Oops!', 'Request already exists',  'icon-checkmark-circle2', 'warning');", true);
                    TxtRemarks.Text = "";
                }
            }
        }
    }

    public void FnGetDataRowBinding(string PrmDataId, DataTable PrmDtRecord)
    {
        throw new NotImplementedException();
    }
}