*** Settings ***
Resource    ../../utility/globalKeyword.resource
Library    OperatingSystem

*** Keywords ***
Akses Halaman
    Masuk url staging

Login dengan menggunakan kredensial HR
    Login HR dengan valid data

Klik menu "User Management"
    Click Element    ${menu_userManagement}
    Wait Until Element Is Visible    ${page_userManagement}
    Sleep    1s    

Klik "Import" button
    Import button

Klik label text link "download Excel Template"
    Click Element    xpath=//p[normalize-space()='download Excel Template']
    Sleep    1s
    Capture Page Screenshot    Embed
    Capture Element Screenshot    xpath=//p[normalize-space()='download Excel Template']    Embed
    File Should Exist    C:/Users/titor/Downloads/User_Import_Template_20250326.xlsx

Upload dokumen yang akan di import 
    Wait Until Element Is Visible    xpath=//h2[normalize-space()='Import User']
    Unhide element upload
    Choose File    css=input[type='file']    C:/Users/titor/Downloads/User_Import_Template_20250326.xlsx
    Sleep    5s

Klik "send Import" button
    Submit Import
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div/div[1]
    Capture Page Screenshot    Embed
    Sleep    5s

Pilih dropdown "Employment Status"
    Click Element    xpath=//div[@id='mui-component-select-employment_status']
    Wait Until Element Is Visible    xpath=//ul[@role='listbox']
    Click Element    xpath=//li[normalize-space()='Inactive']
    Wait Until Element Contains    xpath=//div[@class='MuiGrid-root MuiGrid-item MuiGrid-grid-xs-12']    Inactive
    Sleep    1s

Klik "Export" button
    Export button
    Wait Until Element Is Visible    xpath=//*[@id="panel1a-header"]/div[1]
    Capture Page Screenshot    Embed

Klik label text link "here" untuk melihat guideline pengisian tempalte sheet sebelum di import
    Click Element    xpath=//p[normalize-space()='here']
    Wait Until Element Is Visible    xpath=//h2[normalize-space()='Excel Template Guideline']
    Capture Page Screenshot    Embed
    