*** Settings **
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
# Update Maximum Check-In Time dengan input manual
input secara manual Maximum Check-in Time
    Wait Until Element Is Visible    (//input[@type='text'])[2]
    Click Element    (//input[@type='text'])[2]
    Press Keys    (//input[@type='text'])[2]    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    (//input[@type='text'])[2]    18:05
    Sleep    2s

# Update Time Zone yang dipilih
Klik Dropdown Time Zone
    Wait Until Element Is Visible    //div[@id='mui-component-select-time_zone']
    Click Element    //div[@id='mui-component-select-time_zone']
    Wait Until Element Is Visible    (//li[normalize-space()='(UTC+09:00) Eastern Indonesia Time'])[1]
    Click Element    (//li[normalize-space()='(UTC+09:00) Eastern Indonesia Time'])[1]
    Sleep    2s

#Submit button
Klik button Update Setting
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[5]/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[5]/button
    Sleep    2s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    2s
    Capture Page Screenshot    EMBED
