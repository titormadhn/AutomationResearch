*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Input search field
    Input Text    ${fieldsearch}    Helsa    #jika data sick habis ganti namanya
    Sleep    5s

Klik action "Detail"
    Click Element    (//button[@type='button'])[15]
    Wait Until Element Is Visible    //h2[normalize-space()='Permit Detail']
    Capture Page Screenshot    EMBED

Pilih start date
    Click Element    //div[@role='dialog']//div[1]//div[1]//div[1]//input[1]
    Sleep    1s 
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[1]/button[1]/span[1]/h6
    Sleep    1s 
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[125]
    Sleep    1s
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[1]
    Sleep    1s
    Click Element    (//span[@class='MuiIconButton-label'])[6]
    Sleep    1s
    Click Element    //span[normalize-space()='OK']
    Sleep    1s

Pilih end date
    Click Element    //div[@role='dialog']//div[2]//div[1]//div[1]//input[1]
    Sleep    1s 
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[1]/button[1]/span[1]/h6
    Sleep    1s 
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[125]
    Sleep    1s
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[1]
    Sleep    1s
    Click Element    (//span[@class='MuiIconButton-label'])[6]
    Sleep    1s
    Click Element    //span[normalize-space()='OK']

Input total date
    Click Element    //textarea[@placeholder='Fill in total days']
    Input Text    //textarea[@placeholder='Fill in total days']    1
    Sleep    1s

Input permit statement
    Scroll Element Into View    //textarea[@placeholder='Fill in leave statement']
    Click Element    //textarea[@placeholder='Fill in leave statement']
    Input Text    //textarea[@placeholder='Fill in leave statement']    Test Permit Statement
    Sleep    1s

Pilih status
    Click Element    //div[@id='mui-component-select-status']
    Click Element    //li[normalize-space()='Approved']
    Sleep    1s

Klik button update
    Click Element    //span[normalize-space()='Update']
    Wait Until Element Is Visible    (//div)[189]
    Sleep    2s
    Capture Page Screenshot    EMBED
    Sleep    1s
    