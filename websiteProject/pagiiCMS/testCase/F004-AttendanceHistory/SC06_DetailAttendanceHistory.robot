*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F004-AttendanceHistory/SD_SC06_DetailAttendanceHistory.resource

*** Test Cases ***
TC01 Detail attendance history sesuai dengan data yang diambil
    Masuk url staging
    Login HR dengan valid data
    Klik menu Attendance History
    Pilih satu user dan klik button loop detail
