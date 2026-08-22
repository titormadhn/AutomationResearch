*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalKeyword.resource

*** Variables ***
#-- TEST DATA--#
${name}    Alvarez Gina
${NIK}    0004667480000000
${EMAIL}    alvarezgina@wgs.com
${tlp}    089336783770
${Address}    Jl.Legok Kucing No.74 RT.05/19 Dipatiukur-Kota Bandung Jawa Barat

*** Keywords ***
Klik menu 'User Management' pada sidebar
    Wait Until Element Is Visible    xpath=//span[text()='User Management']    7s
    Click Element    xpath=//span[text()='User Management']
    Sleep    7s

Klik edit button
    Click Button    xpath=(//button[@type='button'])[17]
    Wait Until Element Is Visible    //h2[text()='Update User']    10s

Update Full Name
    Input Text    //input[@name='name']    ${name}
    Capture Element Screenshot    //input[@name='name']    embed

Update NIK/Employee ID
    Input Text    //input[@name='nik']    ${NIK}
    Wait Until Element Is Visible    //input[@name='nik']
    Capture Element Screenshot    //input[@name='nik']    embed

Update Date of Birthday
    Click Element    //input[@placeholder='dd-mm-yyyy']
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div
    Scroll Element Into View    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[100]
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[99]
    #bulan
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[6]
    #tanggal
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div[2]/div/div[4]/div[2]/button/span[1]/p
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div[2]/div/div[4]/div[2]/button/span[1]/p
    #klik oke
    Click Element    //button[span[text()='OK']]/span[1]
    Sleep    3s
    Capture Element Screenshot    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[2]/div[2]     embed

Update Email Address
    Click Element    xpath=//input[@placeholder='Email']
    Input Text    xpath=//input[@placeholder='Email']    ${EMAIL}
    Capture Element Screenshot    xpath=//input[@placeholder='Email']    embed
    
Update Phone Number
    Click Element    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[3]/div[2]/div/div
    Press Keys       xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[3]/div[2]/div/div    CTRL+a    BACKSPACE
    Wait Until Element Is Visible    //input[@name='phone'][1]    7s
    Input Text    //input[@name='phone'][1]    ${tlp}
    Capture Element Screenshot    //input[@name='phone'][1]    embed

Update Address
    Click Element    xpath=//textarea[@placeholder='Address']
    Input Text    xpath=//textarea[@placeholder='Address']    ${Address}
    Capture Element Screenshot    xpath=//textarea[@placeholder='Address']    embed

Update Photo
    Choose File    ${loc_uploadImg}    ${path_photoImg}
    Sleep    1s
    Click Element    ${loc_setOriImg}
    Sleep    1s

Update Division
    Click Element    xpath=(//*[@id="controllable-states-demo"])[1]
    Scroll Element Into View    id=controllable-states-demo-option-12
    Click Element    id=controllable-states-demo-option-12
    Sleep    3s
    Capture Element Screenshot    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[7]/div[1]    embed

Update Job Title
    Click Element    xpath=(//*[@id="controllable-states-demo"])[2]
    Click Element    id=controllable-states-demo-option-3
    Capture Element Screenshot    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[7]/div[2]    embed

Update Supervisor
    Click Element    //*[@id="free-solo-demo"]
    Input Text    //*[@id="free-solo-demo"]    Chief Operation
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[8]/div[1]
    Capture Element Screenshot    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[8]/div[1]    embed

Update Approval Type
    Click Element    xpath=(//*[@id="mui-component-select-approval_type"])[2]
    Wait Until Element Is Visible    xpath=(//*[@id="mui-component-select-approval_type"])[2]
    Click Element    xpath=(//li[normalize-space()='Master'])[1]
    Capture Element Screenshot    xpath=//label[text()='Approval Type']  embed

Klik button Update User
    Click Element    //span[text()='Update User']
    Capture Element Screenshot    //span[text()='Update User']    embed
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[2]/div[1]/main
    Capture Page Screenshot    embed
    Sleep    3s

