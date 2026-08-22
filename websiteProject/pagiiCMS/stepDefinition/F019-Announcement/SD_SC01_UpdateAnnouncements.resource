*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
input field Announcements
    Wait Until Element Is Visible    (//textarea[@placeholder='Fill in announcement message (min. 8 alphanumeric characters)'])[1]
    Click Element    (//textarea[@placeholder='Fill in announcement message (min. 8 alphanumeric characters)'])[1]
    Press Keys    (//textarea[@placeholder='Fill in announcement message (min. 8 alphanumeric characters)'])[1]    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    (//textarea[@placeholder='Fill in announcement message (min. 8 alphanumeric characters)'])[1]    Announcements
    Sleep    2s

Klik button Update
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/button
    Sleep    3s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    3s
    Capture Page Screenshot    EMBED
