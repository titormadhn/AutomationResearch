*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource

*** Keywords ***
Klik Detail dengan ikon kaca pembesar di salah satu User
    Wait Until Element Is Visible    ${fieldsearch}
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    DamarAutomation
    Sleep    2s
    Wait Until Page Contains    DamarAutomation
    Click Element    (//div[@title='Detail'])[1]
    Sleep    2s
   
Klik dropdwon History
    Scroll Element Into View    (//div[@role='button'])[17]
    Wait Until Element Is Visible    (//div[@role='button'])[17]
    Click Element    (//div[@role='button'])[17]
    Sleep    2s

Klik Menu Contract
    Scroll Element Into View    (//div[@role='button'])[18]
    Wait Until Element Is Visible    (//div[@role='button'])[18]
    Click Element    (//div[@role='button'])[18]
    Sleep    2s
    Wait Until Element Is Visible    (//button[@aria-label='Detail'])[1]
    Click Element    (//button[@aria-label='Detail'])[1]
    Wait Until Page Contains    Contract Information
    Sleep    2s
    Capture Page Screenshot    EMBED
    Click Element    (//button[@aria-label='close'])[1]

Klik ikon pensil untuk update/edit contract
    Wait Until Element Is Visible    (//button[@aria-label='Edit'])[1]
    Click Element    (//button[@aria-label='Edit'])[1]
    Wait Until Page Contains    Update Contract
    Sleep    2s
    Capture Page Screenshot    EMBED

Klik field Employment Type & Update Employment Type
    Wait Until Element Is Visible    //*[@id="mui-component-select-employment_type"]
    Click Element    //*[@id="mui-component-select-employment_type"]
    Wait Until Element Is Visible    (//li[normalize-space()='Internship'])[1]
    Click Element    (//li[normalize-space()='Internship'])[1]
    Sleep    2s

Klik field main salary & update main salary
    Wait Until Element Is Visible    (//input[@placeholder='0'])[1]
    Click Element    //input[@placeholder='0']
    Press Keys   //input[@placeholder='0']    CTRL+A    BACKSPACE
    Input Text    (//input[@placeholder='0'])[1]    6000000
    Sleep    2s

Klik field start date & update start date
    Click Element    (//input[@placeholder='dd-mm-yyyy'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='2025'])[1]
    Click Element    (//div[normalize-space()='2025'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='Jan'])[1]
    Click Element    (//div[normalize-space()='Jan'])[1]
    Wait Until Element Is Visible    //p[normalize-space()='16']
    Click Element    //p[normalize-space()='16']
    Click Element    //span[normalize-space()='OK']
    Sleep    2s

Klik field end date & update end date
    Click Element    (//input[@placeholder='dd-mm-yyyy'])[2]
    Wait Until Element Is Visible    (//div[normalize-space()='2026'])[1]
    Click Element    (//div[normalize-space()='2026'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='Jun'])[1]
    Click Element    (//div[normalize-space()='Jun'])[1]
    Wait Until Element Is Visible    //p[normalize-space()='12']
    Click Element    //p[normalize-space()='12']
    Click Element    //span[normalize-space()='OK']
    Sleep    2s

klik field reminder & update reminder
    Wait Until Element Is Visible    (//input[@placeholder='Enter reminder'])[1]
    Click Element    (//input[@placeholder='Enter reminder'])[1]
    Press Keys    (//input[@placeholder='Enter reminder'])[1]    CTRL+A    BACKSPACE
    Input Text    (//input[@placeholder='Enter reminder'])[1]    4
    Sleep    2s    

klik field external document & update external document
    Wait Until Element Is Visible    (//input[@placeholder='Insert external document link'])[1]
    Click Element    (//input[@placeholder='Insert external document link'])[1]
    Press Keys    (//input[@placeholder='Insert external document link'])[1]    CTRL+A    BACKSPACE
    Input Text    (//input[@placeholder='Insert external document link'])[1]    https://docs.google.com/document/handsome people
    Sleep    2s

Klik Button Update Contract
    Wait Until Element Is Visible    (//button[@id='submit'])[1]
    Click Element    (//button[@id='submit'])[1]
    Sleep    2s

Klik Button Yes
    Wait Until Element Is Visible    (//h2[normalize-space()='Confirmation'])[1]
    Click Element    //button[@id='btnConfirm']
    Wait Until Page Contains    Contract updated successfully
    sleep    2s
    Capture Element Screenshot    //*[@id="ct-container"]/div[2]/div[2]/div    EMBED
    Wait Until Element Is Visible    (//button[@aria-label='Detail'])[1]
    Click Element    (//button[@aria-label='Detail'])[1]
    Wait Until Page Contains    Contract Information
    Sleep    2s
    Capture Page Screenshot    EMBED