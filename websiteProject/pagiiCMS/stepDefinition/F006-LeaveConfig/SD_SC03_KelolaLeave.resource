*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
#Create Leave
Klik simbol "+" di ujung kanan atas halaman
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[1]/div[2]/div/div/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[1]/div[2]/div/div/button
    Wait Until Page Contains    Create Data
    Sleep    2s

Isi seluruh data
    Wait Until Element Is Visible    (//input[@placeholder='yyyy'])[1]
    Click Element    (//input[@placeholder='yyyy'])[1]
    Wait Until Element Is Visible    (//div[@role='button'][normalize-space()='2029'])[1]
    Click Element    (//div[@role='button'][normalize-space()='2029'])[1]
    Click Element    (//button[@type='button'])[30]
    Click Element    (//input[@placeholder='Total Leave *'])[1]
    Input Text    (//input[@placeholder='Total Leave *'])[1]    12
    Click Element    //*[@id="mui-component-select-accumulative"]
    Wait Until Element Is Visible    (//li[normalize-space()='1'])[1]
    Click Element    (//li[normalize-space()='1'])[1]
    Click Element    (//button[@type='submit'])[1]
    Capture Page Screenshot    EMBED
    Close Browser

#Update data leave
Klik simbol pensil pada kolom action
    Wait Until Element Is Visible    (//button[@type='button'])[9]
    Sleep    5s
    Click Element    (//button[@type='button'])[9]
    Wait Until Page Contains    Update Data
    Sleep    2s

Update Seluruh Data
    Wait Until Element Is Visible    (//input[@placeholder='yyyy'])[1]
    Click Element    (//input[@placeholder='yyyy'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='2030'])[1]
    Click Element    (//div[normalize-space()='2030'])[1]
    Click Element    (//button[@type='button'])[33]
    Click Element    (//input[@placeholder='Total Leave *'])[1]
    Press Keys    (//input[@placeholder='Total Leave *'])[1]    CTRL+A    BACKSPACE
    Input Text    (//input[@placeholder='Total Leave *'])[1]    13
    Click Element    //*[@id="mui-component-select-accumulative"]
    Wait Until Element Is Visible    (//li[normalize-space()='2'])[1]
    Click Element    (//li[normalize-space()='2'])[1]
    Click Element    (//button[@type='submit'])[1]
    Capture Page Screenshot    EMBED
    Close Browser

#Delete data leave
Klik icon sampah pada kolom action
    Wait Until Element Is Visible    (//button[@type='button'])[10]
    Click Element    (//button[@type='button'])[10]
    Wait Until Element Is Visible    (//button[normalize-space()='Yes'])[1]
    Click Element    (//button[normalize-space()='Yes'])[1]
    Capture Page Screenshot    EMBED
    Close Browser
