*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F004-AttendanceHistory/SD_SC04_Export.resource
Test Setup    Buka menu attendance history

*** Test Cases ***
TC09 Export data dengan search dan filter
    Klik export dengan search keyword dan filter

*** Keywords ***
Buka menu attendance history
    Masuk url staging
    Login HR dengan valid data
    Klik menu Attendance History


