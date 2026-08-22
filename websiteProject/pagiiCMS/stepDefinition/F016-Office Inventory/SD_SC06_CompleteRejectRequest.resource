*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
#complete request
Klik button complete pada kolom action untuk user dengan status On Going
    Wait Until Element Is Visible    (//button[@id='btn_complete'])[1]
    Scroll Element Into View    (//button[@id='btn_complete'])[1]
    Click Element    (//button[@id='btn_complete'])[1]
    Sleep    2s

Input Completed Date
    Wait Until Element Is Visible    (//button[@aria-label='Change Date'])[1]
    Click Element    (//button[@aria-label='Change Date'])[1]
    Wait Until Element Is Visible    (//button[@class='MuiButtonBase-root MuiIconButton-root MuiPickersDay-day'])[1]
    Click Element    (//button[@class='MuiButtonBase-root MuiIconButton-root MuiPickersDay-day'])[1]
    Sleep    2s

Input field Condition
    Wait Until Element Is Visible    (//textarea[@placeholder='Enter inventory condition'])[1]
    Input Text    (//textarea[@placeholder='Enter inventory condition'])[1]    Good Condition
    Sleep    2s

Input Photo of Condition
    Choose File    (//input[@id='fileUpload'])[1]    ${path_photoImg}
    Sleep    2s

Klik Button Submit
    Wait Until Element Is Visible    (//button[@id='btnYes'])[1]
    Click Element    (//button[@id='btnYes'])[1]
    Wait Until Element Is Visible    (//button[normalize-space()='Yes'])[1]
    Click Element    (//button[normalize-space()='Yes'])[1]
    Sleep    3s
    Capture Page Screenshot    EMBED

#reject request with reason
Klik button reject pada kolom action untuk user dengan status Request
    Wait Until Element Is Visible    (//button[@id='btn_reject'])[1]
    Click Element    (//button[@id='btn_reject'])[1]
    Sleep    2s

Input field Reason
    Wait Until Element Is Visible    (//textarea[@placeholder='Enter inventory condition'])[1]
    Click Element    (//textarea[@placeholder='Enter inventory condition'])[1]
    Input Text    (//textarea[@placeholder='Enter inventory condition'])[1]    text
    Sleep    2s

Klik Button Yes
    Wait Until Element Is Visible    (//button[@id='btnYes'])[1]
    Click Element    (//button[@id='btnYes'])[1]
    Sleep    7s
    Capture Page Screenshot    EMBED

#reject request on Detail Request
Klik button Detail pada kolom action untuk user dengan status Rejected
    Wait Until Element Is Visible    (//button[@id='btn_detail'])[5]
    Click Element    (//button[@id='btn_detail'])[5]
    Sleep    3s

Klik dropdown status
    Wait Until Element Is Visible    (//div[@class='MuiButtonBase-root MuiAccordionSummary-root MuiAccordionSummary-gutters css-xy9yce'])[1]
    Click Element    (//div[@class='MuiButtonBase-root MuiAccordionSummary-root MuiAccordionSummary-gutters css-xy9yce'])[1]
    Sleep    5s
    Capture Page Screenshot    EMBED
