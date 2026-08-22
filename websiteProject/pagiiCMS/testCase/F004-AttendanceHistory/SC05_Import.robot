*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F004-AttendanceHistory/SD_SC05_Import.resource
Test Setup    Buka menu attendance history

*** Test Cases ***
TC01 Download Excel Template
    Klik button import
    Download excel template

TC03 Import data dengan seluruh data di excel terisi
    Klik button import
    Upload file excel
    Klik button confirm import

*** Keywords ***
Buka menu attendance history
    Masuk url staging
    Login HR dengan valid data
    Klik menu Attendance History