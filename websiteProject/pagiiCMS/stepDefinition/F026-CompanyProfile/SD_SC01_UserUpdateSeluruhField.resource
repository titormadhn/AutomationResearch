*** Settings **
Library    SeleniumLibrary
Resource    ../../utility/globalKeyword.resource

*** Variables ***
#Test Data
${fieldName}    WGS3
${fieldPICName}    HR WGS
${fieldBranchName}    Branch WGS
${fieldAddress}    Jl. Soekarno-Hatta No.104, Babakan Ciparay, Kec. Babakan Ciparay, Kota Bandung, Jawa Barat 40223
${fieldLatitude}    6.935502984540817
${fieldLongitude}    107.57846844380592
${fieldGPSRadius}    10

*** Keywords ***
Klik Menu dengan bacaan General Setting
    Wait Until Element Is Visible    (//div[@role='button'])[13]
    Click Element    (//div[@role='button'])[13]
    Sleep    2s

Klik submenu Company Profile
    Scroll Element Into View    (//div[@role='button'])[16]
    Wait Until Element Is Visible    (//div[@role='button'])[16]
    Click Element    (//div[@role='button'])[16]
    Wait Until Page Contains    company profile
    Sleep    2s

Update field Name
    Wait Until Element Is Visible    //input[@placeholder='Update your company name']
    Click Element    //input[@placeholder='Update your company name']
    Press Keys    //input[@placeholder='Update your company name']    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    //input[@placeholder='Update your company name']    ${fieldName}
    Sleep    2s

Update field PIC Name
    Wait Until Element Is Visible    //input[@placeholder='PIC Name']
    Click Element    //input[@placeholder='PIC Name']
    Press Keys    //input[@placeholder='PIC Name']    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    //input[@placeholder='PIC Name']    ${fieldPICName}
    Sleep    2s

Klik button Add More untuk menambahkan Address
    Scroll Element Into View    //span[normalize-space()='Add More']
    Wait Until Element Is Visible    //span[normalize-space()='Add More']
    Click Element    //span[normalize-space()='Add More']
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[6]/div/div[2]/div/div/div/div/input
    Sleep    2s

Input Name Branch
    Scroll Element Into View    //input[@placeholder='Branch name']
    Wait Until Element Is Visible    //input[@placeholder='Branch name']
    Click Element    //input[@placeholder='Branch name']
    Press Keys    //input[@placeholder='Branch name']    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    //input[@placeholder='Branch name']    ${fieldBranchName}
    Sleep    2s

Input field Address
    Scroll Element Into View    (//input[@placeholder='Update your company address'])[2]
    Wait Until Element Is Visible    (//input[@placeholder='Update your company address'])[2]
    Click Element    (//input[@placeholder='Update your company address'])[2]
    Press Keys    (//input[@placeholder='Update your company address'])[2]    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    (//input[@placeholder='Update your company address'])[2]    ${fieldAddress}        
    Sleep    2s

Input field Latitude
    Scroll Element Into View    (//input[@placeholder='Input latitude'])[2]
    Wait Until Element Is Visible    (//input[@placeholder='Input latitude'])[2]
    Click Element    (//input[@placeholder='Input latitude'])[2]
    Press Keys    (//input[@placeholder='Input latitude'])[2]    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    (//input[@placeholder='Input latitude'])[2]    ${fieldLatitude}
    Sleep    2s

Input Field Longitude
    Scroll Element Into View    (//input[@placeholder='Input longitude'])[2]
    Wait Until Element Is Visible    (//input[@placeholder='Input longitude'])[2]
    Click Element    (//input[@placeholder='Input longitude'])[2]
    Press Keys    (//input[@placeholder='Input longitude'])[2]    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    (//input[@placeholder='Input longitude'])[2]    ${fieldLongitude}
    Sleep    2s

Input field GPS Radius
    Scroll Element Into View    (//input[@placeholder='Max GPS radius'])[2]
    Wait Until Element Is Visible    (//input[@placeholder='Max GPS radius'])[2]
    Click Element    (//input[@placeholder='Max GPS radius'])[2]
    Press Keys    (//input[@placeholder='Max GPS radius'])[2]    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    (//input[@placeholder='Max GPS radius'])[2]    ${fieldGPSRadius}
    Sleep    2s

Update Logo
    Scroll Element Into View    //input[@name='formLogo']
    Choose File    //input[@name='formLogo']    ${path_photoImg}
    Sleep    5s

Klik button Update Profile
    Scroll Element Into View    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/button
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/button
    Sleep    2s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    2s
