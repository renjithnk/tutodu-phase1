
function FnGetMaxMark(PrmAssessmentCtrl, PrmDestControl)
{
    var strId = document.getElementById(PrmAssessmentCtrl).value;
    Web_GetResultService.FnGetMaxMark(strId, ValAssessmentMaxMarkValueSuccess, ValFailed, PrmDestControl);
}
function ValAssessmentMaxMarkValueSuccess(ress, PrmDestControl) {
    document.getElementById(PrmDestControl).value = ress;
}
