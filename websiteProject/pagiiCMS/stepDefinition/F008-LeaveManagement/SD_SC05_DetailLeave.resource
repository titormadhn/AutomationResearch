*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Pilih Search by Leave date dengan status All
    Click Element    //input[@type='checkbox']
    Click Button    (//button[@aria-label='Change Date'])[1]
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[3]/div/div[1]/div
    Click Button    (//button[@type='button'])[20]
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[3]/div/div[1]/div/div
    Click Button    (//button[@type='button'])[24]
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[2]/div[1]/main
    Click Button    (//button[@type='button'])[7]
    Sleep    5s
    Click Element    //span[normalize-space()='Apply']
    Sleep    1s

Pilih satu user dengan klik button detail
    Wait Until Element Is Visible    (//button[@type='button'])[18]
    Click Element    (//button[@type='button'])[18]
    Wait Until Element Is Visible    //h2[normalize-space()='Leave Details']
    Sleep    1s

Edit seluruh field pada form Leave Details
    Click Element    //div[starts-with(@class, 'MuiAccordionSummary-content') and contains(@class, 'MuiAccordionSummary-contentGutters')]
    Wait Until Element Is Visible    //div[starts-with(@class, 'MuiCollapse-wrapperInner') and contains(@class, 'MuiCollapse-vertical')]
    Click Element    //input[@name='total_days']
    Wait Until Element Is Visible    //input[@name='total_days']
    Input Text    //input[@name='total_days']    9
    #Start date
    Click Element    (//input[@class='MuiInputBase-input MuiOutlinedInput-input'])[2]
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div[2]
    Click Element    (//span[@class='MuiIconButton-label'])[9]
    Click Element    //span[text()='OK']
    #End date
    Click Element    (//input[@placeholder='dd-mm-yyyy'])[4]
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div[2]
    Click Element    //h6[text()='2025']
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]
    Click Element    //div[text()='2028']
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]
    Click Element    //div[text()='Jan']
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]
    Click Element    (//p[text()='1'])[1]
    Click Element    //span[text()='OK']
    #Leave Statement
    Click Element    //textarea[@placeholder='Fill in leave statement']
    Press Keys    //textarea[@placeholder='Fill in leave statement']    CTRL+a    BACKSPACE
    Input Text    //textarea[@placeholder='Fill in leave statement']    Pergi bersama teman teman QA
    #Status
    Click Element    (//div[@id='mui-component-select-status'])[2]
    Wait Until Element Is Visible    //ul[@role='listbox']
    Click Element    //li[normalize-space()='Approved']
    Input Notes
    Sleep    1s

Klik button Update apabila telah selesai
    Click Element    //span[normalize-space()='Update']
    Sleep    2s
    Capture Page Screenshot
    Sleep    1s