*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F022-WorkingTime/SD_SC03_UpdateTotalWorkingHours.resource

*** Test Cases ***
Update working hours dengan jam kerja standard 8 jam
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu Office Working Settings
    Input field Working Hour dengan jam kerja standard 8 jam
    Klik button Update Setting
