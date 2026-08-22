*** Settings **
Library    SeleniumLibrary

*** Keywords ***

Input field Working Hour dengan jam kerja standard 8 jam
    Wait Until Element Is Visible    //input[@name='working_time']    
    Click Element    //input[@name='working_time']
    Press Keys    //input[@name='working_time']    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    //input[@name='working_time']    9
    Sleep    2s

Klik button Update Setting
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[5]/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[5]/button
    Sleep    2s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    2s
    Capture Page Screenshot    EMBED