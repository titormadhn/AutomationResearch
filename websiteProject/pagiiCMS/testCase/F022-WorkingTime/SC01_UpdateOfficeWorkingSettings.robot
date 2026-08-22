*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F022-WorkingTime/SD_SC01_UpdateOfficeWorkingSettings.resource
Test Setup    Masuk menu Office Working Settings

*** Test Cases ***
Update Maximum Check-In Time dengan input manual
    input secara manual Maximum Check-in Time
    Klik button Update Setting

Update Time Zone yang dipilih
    Klik Dropdown Time Zone
    Klik button Update Setting

*** Keywords ***
Masuk menu Office Working Settings
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu Office Working Settings