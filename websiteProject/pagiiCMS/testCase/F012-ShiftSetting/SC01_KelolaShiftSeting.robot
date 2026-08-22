*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F012-ShiftSetting/SD_SC01_KelolaShiftSeting.resource
Test Setup    Masuk Submenu Shift Setting

*** Test Cases ***
Create Shift 
    Klik Add New
    Input field Start Shift
    Input field End Shift
    Klik Update Setting

Update field Min check in period minutes
    Input field min check in period minutes
    Klik Update Setting

Delete Shift sebelum terdapat list employee di Shift Management
    Klik button Delete pada shift kosong
    Klik Update Setting

*** Keywords ***
Masuk Submenu Shift Setting
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu Shift Setting