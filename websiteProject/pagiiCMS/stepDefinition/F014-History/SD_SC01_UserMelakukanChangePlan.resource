*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Klik button change plan
    Click Element    //span[normalize-space()='Change Plan']
    Wait Until Element Is Visible    //p[normalize-space()='3 MONTHS']
    Capture Element Screenshot    //div[@role='dialog']    EMBED
    Sleep    1s
    
Klik button select plan
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[3]/div/div[2]/div/div/div[2]/div/div/div[4]/button
    Click Element    xpath=/html/body/div[2]/div[3]/div/div[2]/div/div/div[2]/div/div/div[4]/button
    Sleep    1s

Muncul dialog popup dan klik button yes
    Wait Until Element Contains    (//div[@id='swal2-content'])[1]    Are you sure you want to change your packet plan?
    Click Element    id=btnConfirm
    Sleep    3s
    Capture Page Screenshot    embed
    Sleep    1s
