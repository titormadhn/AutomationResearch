*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Pilih salah satu nama yang akan di approve
    Wait Until Element Is Visible    //h1[normalize-space()='overtime history']
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    Nisa
    Sleep    1s

Klik action approve
    Wait Until Element Is Visible    xpath=(//*[name()='path'])[73]
    Click Element    (//button[@type='button'])[26]
    Sleep    1s

Input field note pada form overtime approve
    Wait Until Element Is Visible    //h2[normalize-space()='Overtime Approve']
    Click Element    //textarea[@placeholder='Fill in notes']
    Input Text    //textarea[@placeholder='Fill in notes']    Test Overtime Approve by Handsome People
    Sleep    1s

Klik button approve
    Click Element    xpath=/html/body/div[2]/div[3]/div/div[3]/button[2]
    Sleep    3s
    Capture Page Screenshot    embed
    Sleep    1s