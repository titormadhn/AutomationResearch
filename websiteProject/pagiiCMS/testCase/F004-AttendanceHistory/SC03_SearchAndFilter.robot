*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F004-AttendanceHistory/SD_SC03_SearchAndFilter.resource
Test Setup    Buka menu attendance history

*** Test Cases ***
Search keyword berdasarkan nama dengan filter Type dan start-end date
    [Template]    Search keyword berdasarkan nama dengan filter Type dan start-end date
    ${typeRemote}    #TC02
    ${typeAll}    #TC01

*** Keywords ***
Buka menu attendance history
    Masuk url staging
    Login HR dengan valid data
    Klik menu Attendance History

Search keyword berdasarkan nama dengan filter Type dan start-end date
    [Arguments]    ${filterType}
    Klik checkbox filter
    Pilih filter Type ${filterType}
    Input start date
    Klik field Search & input keyword
    
