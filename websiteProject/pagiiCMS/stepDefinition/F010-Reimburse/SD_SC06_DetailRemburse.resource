*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Klik action "Detail"
    Click Element    (//button[@type='button'])[12]
    Wait Until Element Is Visible    //div[contains(text(),'Reimburse Detail')]
    Sleep    1s

Enter field Notes
    Click Element    //input[@placeholder='Enter Notes']
    Input Text    //input[@placeholder='Enter Notes']    Test Reimburse by Handsome People
    Sleep    1s

Pilih status
    Click Element    //div[@id='mui-component-select-status']
    Click Element    //li[normalize-space()='Rejected']
    Sleep    5s

Upload HR Attachment
    Choose File    ${loc_uploadImg}    ${path_photoImg}
    Sleep    1s
    Click Element    ${loc_setOriImg}
    Sleep    1s

Klik button update
    Click Element    //span[normalize-space()='Update']
    Wait Until Element Is Visible    (//div)[189]
    Sleep    2s
    Capture Page Screenshot    EMBED
    Sleep    1s