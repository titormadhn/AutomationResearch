*** Settings **
Library    SeleniumLibrary
Library    Collections
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Variables ***

*** Keywords ***
#Create Division
Klik icon "+" pada sebelah kanan halaman untuk create Divison
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div[1]/div[2]/div/div/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div[1]/div[2]/div/div/button
    Wait Until Page Contains    Create Division
    Sleep    2s

Input Divison Name field
    Wait Until Element Is Visible    (//input[@placeholder='Enter division name'])[1]
    Click Element    (//input[@placeholder='Enter division name'])[1]
    Input Text    (//input[@placeholder='Enter division name'])[1]    Divison Test
    Sleep    2s

Input Description
    Wait Until Element Is Visible    (//textarea[@placeholder='Enter division description'])[1]
    Click Element    (//textarea[@placeholder='Enter division description'])[1]
    Input Text    (//textarea[@placeholder='Enter division description'])[1]    Test Description
    Sleep    2s

Klik button Create Division
    Wait Until Element Is Visible    (//button[@id='submit'])[1]
    Click Element    (//button[@id='submit'])[1]
    Sleep    3s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    2s
    Capture Page Screenshot    EMBED

#Update Division
Klik icon Pensil untuk update Division di salah satu Divison
    Wait Until Element Is Visible    (//button[@type='button'])[9]
    Click Element    (//button[@type='button'])[9]
    Wait Until Page Contains    Update Division
    Sleep    2s

Update Field Divison Name
    Wait Until Element Is Visible    (//input[@placeholder='Enter division name'])[1]
    Click Element    (//input[@placeholder='Enter division name'])[1]
    Press Keys    (//input[@placeholder='Enter division name'])[1]    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    (//input[@placeholder='Enter division name'])[1]    Quality Assurance
    Sleep    2s

Update Field Description
    Wait Until Element Is Visible    //textarea[@placeholder='Enter division description']
    Click Element    //textarea[@placeholder='Enter division description']
    Press Keys    //textarea[@placeholder='Enter division description']    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    //textarea[@placeholder='Enter division description']    Test Quality Assurance
    Sleep    2s

Klik button Update Divison
    Wait Until Element Is Visible    //button[@id='submit']
    Click Element    //button[@id='submit']
    Sleep    2s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    2s
    Capture Page Screenshot    EMBED

#Delete Division
Klik icon Sampah untuk Delete Division di salah satu Divison
    Wait Until Element Is Visible    (//button[@id='delete'])[1]
    Click Element    (//button[@id='delete'])[1]
    Sleep    2s

Klik Yes pada pop up confirmation
    Wait Until Element Is Visible    //button[@id='btnConfirm']
    Click Element    //button[@id='btnConfirm']
    Sleep    2s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    2s
    Capture Page Screenshot    EMBED
