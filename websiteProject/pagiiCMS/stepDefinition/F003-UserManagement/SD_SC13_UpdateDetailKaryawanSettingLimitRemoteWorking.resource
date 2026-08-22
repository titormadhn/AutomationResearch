*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../../utility/globalVariable.resource

*** Keywords ***
Klik "Limit Remote working" di "Menu Setting" Employee Detail
    Scroll Element Into View    (//footer[@class='jss43'])[1]
    Click Element    //span[normalize-space()='Setting']
    Click Element    //span[normalize-space()='Limit Remote Working']
    Wait Until Element Contains    (//div)[128]    Limit Remote Working
    Sleep    5s

Klik toggle Limit Remote Working
    ${status_toggle}=    Get Element Attribute    //input[@type='checkbox']    checked
    Run Keyword Unless    '${status_toggle}' == 'true'    Click Element    xpath=//input[@type='checkbox']    #kondisi kalau belum aktif, klik biar aktif.

Input field Remote working Quota
    ${field_remote}    Set Variable    //input[@placeholder='Enter remote working quota']
    Click Element    ${field_remote}
    Input Text    ${field_remote}    7
    Sleep    1s

Input field Additional Remote Limit
    Click Element    //input[@placeholder='Enter additional remote limit']
    Input Text    //input[@placeholder='Enter additional remote limit']    3
    Sleep    1s

Klik button "Save" Limit Remote Working
    Click Element    //button[@type='submit']
    Sleep    5s
    Wait Until Element Is Visible    (//div[@class='swal2-header'])[1]
    Click Element    //button[@id='btnConfirm']
    Wait Until Element Contains    //div[@id='ct-container']    User updated
    Capture Page Screenshot    EMBED
    Sleep    1s
