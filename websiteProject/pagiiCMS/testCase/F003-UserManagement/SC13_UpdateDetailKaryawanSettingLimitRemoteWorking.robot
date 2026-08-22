*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC10_DetailKaryawan.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC13_UpdateDetailKaryawanSettingLimitRemoteWorking.resource

*** Test Cases ***
TC04 Update Remote Working Quota diisi rentang 0 - 31
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
    Pilih dan klik detail salah satu data Employee List
    Klik "Limit Remote working" di "Menu Setting" Employee Detail
    Klik toggle Limit Remote Working
    Input field Remote working Quota

TC08 Update Additional Remote Limit
    Input field Additional Remote Limit
    Klik button "Save" Limit Remote Working

 