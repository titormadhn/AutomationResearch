*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Library    DateTime

*** Keywords ***
#Add Contract with condition
Klik Detail dengan ikon kaca pembesar di salah satu User
    Wait Until Element Is Visible    ${fieldsearch}
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    DamarAutomation
    Sleep    2s
    Wait Until Page Contains    DamarAutomation
    Click Element    (//div[@title='Detail'])[1]
    Sleep    2s

Klik button Add Contract
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[3]/div/div/div/div/div[3]/button[1]
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[3]/div/div/div/div/div[3]/button[1]
    Sleep    2s

Pilih dropdown Employment Type ${employmentType}
    Click Element    //*[@id="mui-component-select-employment_type"]
    Wait Until Element Is Visible    //*[@id="menu-employment_type"]/div[3]/ul/li[1]
    Click Element    ${employmentType}
    Sleep    2s

Input main salary ${mainSalary}
    Click Element    (//input[@placeholder='0'])[1]
    Input Text    (//input[@placeholder='0'])[1]    ${mainSalary}
    Sleep    2s

Pilih Start Date
    Click Element    (//input[@placeholder='dd-mm-yyyy'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='2024'])[1]
    Click Element    (//div[normalize-space()='2024'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='Dec'])[1]
    Click Element    (//div[normalize-space()='Dec'])[1]
    Wait Until Element Is Visible    //p[normalize-space()='16']
    Click Element    //p[normalize-space()='16']
    Click Element    //span[normalize-space()='OK']
    Sleep    2s

Pilih End Date
    Click Element    (//input[@aria-invalid='end date is not valid'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='2026'])[1]
    Click Element    (//div[normalize-space()='2026'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='Jun'])[1]
    Click Element    (//div[normalize-space()='Jun'])[1]
    Wait Until Element Is Visible    //p[normalize-space()='12']
    Click Element    //p[normalize-space()='12']
    Click Element    //span[normalize-space()='OK']
    Sleep    2s

Input Reminder ${reminder}
    Click Element    (//input[@placeholder='Enter reminder'])[1]
    Input Text    (//input[@placeholder='Enter reminder'])[1]    ${reminder}
    Sleep    2s

Input External Document ${externalDocument}
    Click Element    (//input[@placeholder='Insert external document link'])[1]    
    Input Text    (//input[@placeholder='Insert external document link'])[1]    ${externalDocument}
    Sleep    2s

Click button Add Contract
    Click Button    //*[@id="submit"]
    Wait Until Element Is Visible    //*[@id="btnConfirm"]
    Click Button    //*[@id="btnConfirm"]
    Wait Until Page Contains    Employment Status
    Sleep    2s
    Capture Page Screenshot    EMBED

#TC04 Add Contract dengan Start Date dimulai sesudah tanggal hari ini
Select Employment Type
    Click Element    //*[@id="mui-component-select-employment_type"]
    Wait Until Element Is Visible    //*[@id="menu-employment_type"]/div[3]/ul/li[1]
    Click Element    //*[@id="menu-employment_type"]/div[3]/ul/li[1]
    Sleep    2s

Input field main salary
    Click Element    (//input[@placeholder='0'])[1]
    Input Text    (//input[@placeholder='0'])[1]    4000000
    Sleep    2s

Input field Reminder
    Click Element    (//input[@placeholder='Enter reminder'])[1]
    Input Text    (//input[@placeholder='Enter reminder'])[1]    5
    Sleep    2s

Input field External Document
    Click Element    (//input[@placeholder='Insert external document link'])[1]    
    Input Text    (//input[@placeholder='Insert external document link'])[1]    https://docs.google.com/document
    Sleep    2s

Pilih Next Day
    Click Element    (//input[@placeholder='dd-mm-yyyy'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='2025'])[1]
    Click Element    (//div[normalize-space()='2025'])[1]
    Wait Until Element Is Visible    (//div[normalize-space()='May'])[1]
    Click Element    (//div[normalize-space()='May'])[1]
    Wait Until Element Is Visible    //p[normalize-space()='7']
    Click Element    //p[normalize-space()='7']
    Click Element    //span[normalize-space()='OK']
    Sleep    2s