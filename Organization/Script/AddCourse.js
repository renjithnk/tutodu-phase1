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
    var TxtCourseName = document.getElementById('ContentPlaceHolder1_TxtCourseName');
    var DdlCourseCat = document.getElementById('ContentPlaceHolder1_DdlCourseCat');
    var DdlCourseSubCat = document.getElementById('ContentPlaceHolder1_DdlCourseSubCat');
    var DdlAcadLevel = document.getElementById('ContentPlaceHolder1_DdlAcadLevel');
    var DdlCourseMedium = document.getElementById('ContentPlaceHolder1_DdlCourseMedium');
    var TxtOrgCourseNo = document.getElementById('ContentPlaceHolder1_TxtOrgCourseNo');

    if (!isEmpty(TxtCourseName, 'Please enter course Name.', TxtCourseName) && 
        isListSelected(DdlCourseCat, 'Please select course category', DdlCourseCat, 0) &&
        isListSelected(DdlCourseSubCat, 'Please select course sub category', DdlCourseSubCat, 0) &&
        isListSelected(DdlAcadLevel, 'Please select academic level', DdlAcadLevel, 0) &&
        isListSelected(DdlCourseMedium, 'Please select course medium', DdlCourseMedium, 0) &&
        !isEmpty(TxtOrgCourseNo, 'Please enter organization course no.', TxtOrgCourseNo))
    {
        return true;
    }
    else
    {
        return false;
    }
}