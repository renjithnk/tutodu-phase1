function ValidateMasterData()  
{
    if(ValidateAdd()==true)
    {
        return true;
    }
    else
    {
        return false;
    }
}
function ValidateAdd()  
{
    return true;
    /*var TxtEmail = document.getElementById('ContentPlaceHolder1_TxtEmail');
    var TxtPass = document.getElementById('ContentPlaceHolder1_TxtPass');
    var TxtConPass = document.getElementById('ContentPlaceHolder1_TxtConPass');
    var DdlUserGrp = document.getElementById('ContentPlaceHolder1_DdlUserGrp');

    if (!isEmpty(TxtEmail, 'Please enter Name.', TxtEmail) && 
        isListSelected(DdlUserGrp, 'Please select user group.', DdlUserGrp, 0) &&
        !isEmpty(TxtPass, 'Please enter the password.', TxtPass) &&
        FnCheckPassword(TxtPass) &&
        !isEmpty(TxtConPass, 'Please select the confirm password', TxtConPass) &&
        isNotEqualToString(TxtPass, TxtConPass, "Mismatch the New Password & Retype password "))
    {
        return true;
    }
    else
    {
        return false;
    }*/
}
function FnGetRadioButtonPopUp(PrmURL, PrmHeader, PrmWidth, PrmHeight) {
    if (document.getElementById('ContentPlaceHolder1_TabContainer1_TabPanel1_RadBtStudent_1').checked == false)
    {
        return false;
    }
    var ReportWinChld = dhtmlwindow.open('ReportWinChld', 'iframe', PrmURL, PrmHeader, 'width=' + PrmWidth + 'px,height=' + PrmHeight + 'px,resize=0,scrolling=0,center=1', 'recal');
}