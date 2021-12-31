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
    var TxtUName = document.getElementById('ContentPlaceHolder1_TxtUName');
    var TxtEmail = document.getElementById('ContentPlaceHolder1_TxtEmail');
    var TxtPass = document.getElementById('ContentPlaceHolder1_TxtPass');
    var TxtConPass = document.getElementById('ContentPlaceHolder1_TxtConPass');
    var DdlUserGrp = document.getElementById('ContentPlaceHolder1_DdlUserGrp');

    if (!isEmpty(TxtUName, 'Please enter User Name.', TxtUName) && 
        !isEmpty(TxtEmail, 'Please enter Email Addres.', TxtEmail) && 
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
    }
}
function FnCheckPassword(inputtxt)
{
    var paswd = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{7,15}$/;
    if (inputtxt.value.match(paswd))
    {
        return true;
    }
    else
    {
        alert('To check a password between 7 to 15 characters which contain at least one numeric digit ,one upper case ,one Lower case and a special character')
        inputtxt.focus();
        inputtxt.select();
        return false;
    }
}