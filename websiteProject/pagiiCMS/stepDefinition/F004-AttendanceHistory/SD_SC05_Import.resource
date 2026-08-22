*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Klik button import
    Import button

Download excel template
    Wait Until Element Is Visible    xpath=//p[text()='Download Excel Template']
    Click Element    xpath=//p[text()='Download Excel Template']
    Sleep    1s 
    Capture Page Screenshot    Embed
    Capture Element Screenshot    xpath=//p[text()='Download Excel Template']    Embed
    File Should Exist    C:/Users/titor/Downloads/NewFormatImportAttendance.xlsx

Upload file excel
    Wait Until Element Is Visible    //h2[normalize-space()='Import Attendance History']
    Choose File    xpath=//input[@type='file']    C:/Users/titor/Downloads/NewFormatImportAttendance.xlsx
    Sleep    5s

Klik button confirm import
    Submit Import
    Capture Page Screenshot    Embed
