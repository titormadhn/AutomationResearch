*** Settings **
Library    SeleniumLibrary

*** Keywords ***
input secara manual Maximum Check-in
    Wait Until Element Is Visible    (//input[@type='text'])[3]
    Click Element    (//input[@type='text'])[3]
    Press Keys    (//input[@type='text'])[3]    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    (//input[@type='text'])[3]    1200
    Sleep    2s

Klik button Update Setting
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[5]/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[5]/button
    Sleep    2s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    2s
    Capture Page Screenshot    EMBED

