*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Variables ***
#Test Data
${JAM_Start}    0700
${JAM_End}    1634
${KEY_CTRL}    CTRL
${SHIFT}    Shift 9

*** Keywords ***
#Create Shift
Klik Add New
    Click Button    (//button[@type='button'])[4]
    Wait Until Element Is Visible    //div[starts-with(@class, 'MuiGrid-root')][7]
    Sleep    5s

Input field Start Shift
    Press Keys    //input[@value='08:00']    CTRL+a    BACKSPACE
    Input Text    (//input[@type='text'])[13]    ${JAM_Start}
    Sleep    1s

Input field End Shift
    Press Keys    (//input[@value='17:00'])[2]    CTRL+a    BACKSPACE
    Wait Until Element Is Visible    (//input[@type='text'])[13] 
    Input Text    (//input[@type='text'])[14]   ${JAM_End}
    Sleep    1s

#Update Shift
Input field min check in period minutes
    Press Keys    //input[@name='min']    CTRL+a    BACKSPACE
    Input Text    //input[@name='min']    30
    Capture Element Screenshot    //input[@name='min']    embed

#Delete Shift
Klik button Delete pada shift kosong
    Scroll Element Into View    //span[normalize-space()='Update Setting']
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[1]/div[7]/div/button/span[1]
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[1]/div[7]/div/button/span[1]
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]

#Submit Button
Klik Update Setting
    Scroll Element Into View    //span[normalize-space()='Update Setting']
    Click Element    //span[normalize-space()='Update Setting']
    Sleep    3s
    Capture Page Screenshot    embed
