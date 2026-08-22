*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F022-WorkingTime/SD_SC02_UpdateLateCheck-InHours.resource

*** Test Cases ***
Update maximum check in dengan input manual
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu Office Working Settings
    input secara manual Maximum Check-in
    Klik button Update Setting
