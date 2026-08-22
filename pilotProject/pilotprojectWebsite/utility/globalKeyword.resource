*** Settings ***
Library    SeleniumLibrary
Resource   variable.resource
Resource   ../../pilotprojectMobile/platformAndroid/utility/variable.resource
Resource   ../stepDefinition/login/sd_25_login_with_valid_credential.resource
Resource   ../stepDefinition/login/sd_26_unsucessfull_login_with_invalid_credential.resource
Library    String
Library    RequestsLibrary
Library    Collections
Library    DatabaseLibrary

*** Keywords ***
#--Yopmail For Native Android--#
Open yopmail via web browser for get OTP
    Open Browser    https://www.yopmail.com    chrome
    Set Selenium Timeout    10s
    SeleniumLibrary.Wait Until Element Is Visible    //img[@id="logoacc"]
    SeleniumLibrary.Input Text    //input[@id="login"]    ${textMailnator}
    SeleniumLibrary.Click Button    //div[@id="refreshbut"]/button
    Sleep    10s
    Select Frame    //iframe[@id="ifmail"]
    ${OTP}=    SeleniumLibrary.Get Text    //p[contains(text(),"OTP to confirm")]/following-sibling::div
    Set Global Variable    ${OTP}
    Log    ${OTP}
    Close Browser

#--Global Keyword Website--#
Open url staging
    Open Browser    https://gherkin-pilot-web.stagingapps.net/    chrome
    Maximize Browser Window
    Sleep    1s

Get valid OTP from new tab YOPmail 
    Execute Javascript   window.open('https://www.yopmail.com', '_blank');
    Set Selenium Timeout    10s
    Switch Window    YOPmail - Disposable Email Address - Anonymous and temporary inbox
    Wait Until Element Is Visible    //img[@id="logoacc"]
    ${textMailnator-web}    Get Substring    ${field_email-web}    0    -12
    Input Text    id=login    ${textMailnator-web}
    Click Button    //div[@id="refreshbut"]/button
    Sleep    10s
    Select Frame    id=ifmail
    ${otp_web}    Get Text    xpath=//*[@id="mail"]/div/div/div[2]/div
    Set Global Variable    ${otp_web}
    Switch Window    MAIN
    Sleep    1s

Login with valid data
    the user is on the login page
    Input Text    id=user_email    tito136@yopmail.com 
    Input Text    id=user_password    P@ssw0rd
    SetUp Captcha Valid
    clicks the login button

#--Global Keyword API for Validation--#
API validation successfuly registered    #API Get List Registered user
    ${response}    GET  ${baseURL}/v1/users  params=email=${field_email-web}  expected_status=200
    Log    ${response.json()}[data][users][0][email]
    Should Be Equal As Strings    ${field_email-web}  ${response.json()}[data][users][0][email]
    Log    Is Matched!!

#--Global Keyword Data Base for Validation--#
Connect To Gherkin API DB     #Connection for database
    Connect To Database
    ...    psycopg2
    ...    db_name=gherkin_api_db
    ...    db_user=gherkin
    ...    db_password=6q3Jpx75N5SyuQgc5
    ...    db_host=192.168.0.105
    ...    db_port=5416

DB validation successfuly registered    #Query Database search Email
    ${sql}=    Catenate    SELECT email FROM users WHERE email = '${field_email-web}'
    Check Row Count    ${sql}   ==    1
    Disconnect From Database
