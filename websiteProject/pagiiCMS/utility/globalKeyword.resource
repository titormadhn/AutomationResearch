*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Dialogs
Resource   globalVariable.resource

*** Variables **

*** Keywords ***
#DEFAULT GLOBAL KEYWORD
#--Credentials--#
Masuk url staging
    Open Browser    https://hr-apps-stage.smtapps.net/login    chrome    options=add_argument("--load-extension\=${extension_captcha}")
    Maximize Browser Window
    Sleep    1s
Login HR dengan valid data
    Click Element    id=email
    Input Text    id=email    hr-test@smooets.com
    Click Element    id=password
    Input Text    id=password    password
    Pause Execution
    #handle captcha
    Sleep    2s
    Click Element    xpath=//span[text()='Sign In']

#--Import & Export--#
Import button
    Click Element    xpath=//span[normalize-space()='Import']
    Sleep    1s
Unhide element upload
    Execute JavaScript    document.querySelector("input[type='file']").style.display = 'block';
    Wait Until Element Is Visible    css=input[type='file']
Submit Import
    Click Element    xpath=//button[@type='submit']//span[@class='MuiButton-label'][normalize-space()='Import']
    Sleep    15s
Export button
    Click Element    xpath=//span[normalize-space()='Export']
    Sleep    1s

#--Search & Filter--#
Reset button
    Click Element    xpath=//span[normalize-space()='Reset']
    Sleep    1s
Select Start date
    Click Element    (//button[@aria-label='Change Date'])[1]
    Wait Until Element Is Visible    (//button[@type='button'])[21]
    FOR    ${counter}    IN RANGE    12
        Click Element    xpath=(//*[name()='svg'][@class='MuiSvgIcon-root'])[9]
        ${month}    Get Text    xpath=/html/body/div[2]/div[3]/div/div[1]/div/div/div[1]/div[1]/div/p
        Log    Current month: ${month}
        Run Keyword If    '${month}' == 'April 2025'    Exit For Loop
    END
    Wait Until Element Is Visible    //p[normalize-space()='15']
    Click Element    //p[normalize-space()='15']

#--Navigation Menu--#
Klik menu User Management
    Click Element    ${menu_userManagement}
    Wait Until Element Is Visible    ${page_userManagement}
    Sleep    1s
Klik menu Permit
    Click Element    ${menu_permit}
    Wait Until Element Is Visible    ${page_permit}
    Sleep    1s
Klik menu Reimburse
    Click Element    ${menu_reimburse}
    Wait Until Element Contains    ${page_reimburse}    Reimburse
    Sleep    3s
Klik menu Subscription
    Click Element    //span[normalize-space()='Subscription']
    Sleep    1s
Klik sub-menu History    
    Click Element    //span[normalize-space()='History']
    Wait Until Element Is Visible    //h5[normalize-space()='Premium Subscription Status']
    Sleep    1s   
Klik menu Attendance History
    Wait Until Element Is Visible    xpath=//span[text()='Attendance History']
    Click Element    xpath=//span[text()='Attendance History']
    Sleep    2s
Klik menu Overtime History
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[5]/div[2]/span
    Click Element    xpath=//*[@id="root"]/div/div[1]/div/ul/div[5]/div[2]/span
    Sleep    1s
Klik menu Leave Config
    Wait Until Element Is Visible    xpath=//span[text()='Leave']    
    Click Element    xpath=//span[text()='Leave']
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[6]/div[2]/div/div/div/div[1]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[6]/div[2]/div/div/div/div[1]
    Wait Until Page Contains    Leave List
    Sleep    2s
Klik menu Leave Management
    Wait Until Element Is Visible    //span[text()='Leave']
    Click Element    //span[text()='Leave']
    Wait Until Element Is Visible    //span[normalize-space()='Leave Management']
    Click Element    //span[normalize-space()='Leave Management']
    Sleep    2s
Klik Submenu Shift Setting
    Sleep    3s
    Click Element    //span[text()='Shift']
    Wait Until Element Is Visible    //div[@style='min-height: 0px; height: auto; transition-duration: 246ms;']
    Click Element    //span[normalize-space(text())='Shift Setting'] 
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/header/div/h1
    Sleep    5s
Klik Submenu invoice
    Wait Until Element Is Visible    (//div[@role='button'])[10]
    Click Element    (//div[@role='button'])[10]
    Sleep    2s
    Wait Until Element Is Visible    (//div[@role='button'])[11]
    Click Element    (//div[@role='button'])[11]
    Sleep    2s
Klik Submenu cash advance
    Click Element    //span[text()='Employee Facilities']
    Wait Until Element Is Visible    //span[text()='Employee Facilities']
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[11]/div[2]/div/div/div/div[1]/div/span
    Wait Until Element Is Visible    //h1[text()='cash advance']    10s
    Sleep    1s
Klik Submenu Office Inventory
    Click Element    //span[text()='Employee Facilities']
    Wait Until Element Is Visible    //span[text()='Employee Facilities']
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[11]/div[2]/div/div/div/div[2]/div/span
    Wait Until Element Is Visible    //h1[text()='office inventory']    10s
    Sleep    1s
Klik Submenu Master Inventory
    Wait Until Element Is Visible    //span[text()='Employee Facilities']
    Click Element    (//span[@style='white-space: normal;'])[11]
    Sleep    5s
    Click Element    (//div[@role='button' and starts-with(@class, 'MuiButtonBase-root')])[14]
    Wait Until Element Is Visible    (//div[@role='button'])[14]
Klik Export Activity menu
    Wait Until Element Is Visible    (//div[@role='button'])[12]
    Click Element    (//div[@role='button'])[12]
    Wait Until Page Contains    Activity List
    Sleep    2s
Klik Announcements menu
    Wait Until Element Is Visible    (//div[@role='button'])[13]
    Click Element    (//div[@role='button'])[13]
    Wait Until Element Is Visible    (//div[@role='button'])[14]
    Click Element    (//div[@role='button'])[14]
    Wait Until Page Contains    Announcements
    Sleep    2s
Klik Submenu Job Settings
    Wait Until Element Is Visible    (//div[@role='button'])[13]
    Click Element    (//div[@role='button'])[13]
    Wait Until Element Is Visible    (//div[@role='button'])[15]
    Click Element    (//div[@role='button'])[15]
    Click Element    (//div[@role='button'])[16]
    Wait Until Element Is Visible    //h1[text()='job titles']
    Sleep    2s
Klik Submenu Divison Management 
    Wait Until Element Is Visible    (//div[@role='button'])[13]
    Click Element    (//div[@role='button'])[13]
    Wait Until Element Is Visible    (//div[@role='button'])[15]
    Click Element    (//div[@role='button'])[15]
    Scroll Element Into View    (//div[@role='button'])[17]
    Wait Until Element Is Visible    (//div[@role='button'])[17]
    Click Element    (//div[@role='button'])[17]
    Wait Until Page Contains    Division List
    Sleep    2s
Klik Submenu Office Working Settings
    Wait Until Element Is Visible    (//div[@role='button'])[13]
    Click Element    (//div[@role='button'])[13]
    Wait Until Element Is Visible    (//div[@role='button'])[15]
    Click Element    (//div[@role='button'])[15]
    Scroll Element Into View    (//div[@role='button'])[18]
    Wait Until Element Is Visible    (//div[@role='button'])[18]
    Click Element    (//div[@role='button'])[18]
    Wait Until Page Contains    Office Working Setting
    Sleep    2s

Klik Submenu Mobile Feature Setting
        Wait Until Element Is Visible    (//div[@role='button'])[13]
    Click Element    (//div[@role='button'])[13]
    Wait Until Element Is Visible    (//div[@role='button'])[15]
    Click Element    (//div[@role='button'])[15]
    Scroll Element Into View    (//div[@role='button'])[20]
    Wait Until Element Is Visible    (//div[@role='button'])[20]
    Click Element    (//div[@role='button'])[20]
    Wait Until Page Contains    mobile feature setting
    Sleep    2s

Klik sub-submenu Approval Order Setting
    Wait Until Element Is Visible    (//div[@role='button'])[13]
    Click Element    (//div[@role='button'])[13]
    Wait Until Element Is Visible    (//div[@role='button'])[15]
    Click Element    (//div[@role='button'])[15]
    Wait Until Element Is Visible    (//div[@role='button'])[21]
    Click Element    (//div[@role='button'])[21]
    Wait Until Page Contains    Approval List
    Sleep    2s

Klik submenu Generate QR
    Wait Until Element Is Visible    (//div[@role='button'])[13]
    Click Element    (//div[@role='button'])[13]
    Wait Until Element Is Visible    (//div[@role='button'])[17]
    Click Element    (//div[@role='button'])[17]
    Wait Until Page Contains    QR Link
    Sleep    2s

#--Global Field--#
Input Notes
    Input Text    //textarea[@placeholder='Fill in notes']    Test Permit by Handsome People
    Sleep    1s

#CAPTCHA CONFIGURATION
verify captcha
    Unselect Frame
    Select Frame    //iframe[@title='recaptcha challenge expires in two minutes']
    Wait Until Element Is Visible    xpath=//*[@id="rc-imageselect"]/div[3]/div[2]/div[1]/div[1]/div[5]
    Click Element    xpath=//*[@id="rc-imageselect"]/div[3]/div[2]/div[1]/div[1]/div[5]
    verify button reset captcha
    Log To Console    \n${reset_button}
    ${reset_button}    Evaluate    ${reset_button} == False
    IF    ${reset_button} and ${many_try} == 1
        Sleep    10s
        Unselect Frame
        Select Frame    //iframe[@title='reCAPTCHA']
        Element Attribute Value Should Be    id=recaptcha-anchor    aria-checked    true
    END
verify button reset captcha
    ${reset_button}    Run Keyword And Return Status    Wait Until Element Is Visible    id=reset-button
    Log To Console    \ndari check${reset_button}
    IF    ${reset_button}
        Sleep    3s
        Click Element    id=reset-button
        Unselect Frame
        Sleep    15s
        handle captcha
        Set Global Variable    ${many_try}    ${many_try}+1
    ELSE
        Log To Console    Button reset is not found
    END
    Set Global Variable    ${reset_button}
handle captcha
    Select Frame    //iframe[@title='reCAPTCHA']
    Wait Until Element Is Visible    id=recaptcha-anchor
    Click Element    id=recaptcha-anchor
    Sleep    8s
    ${condition_captcha}    SeleniumLibrary.Get Element Attribute    id=recaptcha-anchor    aria-checked
    Log To Console    \n${condition_captcha}
    Run Keyword If    '${condition_captcha}' == 'false'    verify captcha    #Handle Captcha with condition true/false
    ${reset_button}    Evaluate    ${reset_button} == False    #Handle reset button karena kedetect aktifitas robot
    IF    ${reset_button} and ${many_try} == 1
        Unselect Frame
        Click Element    xpath=//span[text()='Sign In']    #//span[text()='Register']    
        Sleep    5s
        Wait Until Page Contains    Dashboard    #LOGIN
        ${reset_button}    Evaluate    ''
    END
    Log To Console    \n${reset_button} cek

#RANDOMIZE CONFIGURATION
random value huruf
    ${randomString}    Generate Random String    3    [LOWER]    #Setup Random with 3 string
    Set Global Variable    ${picEmail}    titotest.${randomString}@mail.com    #random email
    Set Global Variable    ${fullName}    Tito QA ${randomString}    #random field full name in add user - user management
random value angka
    ${randomNumber}    Generate Random String    8    [NUMBERS]
    Set Global Variable    ${NIK}    12312345${randomNumber}    #random field NIK in add user - user management