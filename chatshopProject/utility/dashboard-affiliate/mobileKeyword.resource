*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem
Library    Dialogs
Resource    ../../utility/dashboard-affiliate/variable.resource

*** Keywords ***
# For Mobile Background
Wait Captcha Solved
    [Arguments]    ${timeout}=2 min
    Wait Until Keyword Succeeds
    ...    ${timeout}
    ...    1 sec
    ...    Captcha Token Exist
Captcha Token Exist
    ${token}=    AppiumLibrary.Execute Script
    ...    return document.getElementById('g-recaptcha-response').value;
    Should Not Be Empty    ${token}
User telah membuka website pagii affiliate Mobile
    [Arguments]    ${url}=${BASE_URL}
    &{caps}=    Create Dictionary
    ...    platformName=Android
    ...    appium:platformVersion=${PLATFORM_VERSION}
    ...    appium:deviceName=${DEVICE_NAME}
    ...    appium:automationName=UiAutomator2
    ...    browserName=Chrome
    ...    appium:chromedriverAutodownload=${True}
    ...    appium:noReset=${True}
    ...    appium:autoGrantPermissions=${True}
    Open Application    ${REMOTE_URL}    &{caps}
    Sleep    5s
    Go To Url    ${url}
    # Simpan context/handle awal (setara affiliate_handle di versi desktop)
    # ${contexts}=    Get Contexts
    # Log To Console    Available Contexts: ${contexts}
    # ${handles}=    Get Window Handles
    # Set Global Variable    ${affiliate_handle}    ${handles}[0]
    # Log To Console    Affiliate Handle: ${affiliate_handle}
    Sleep    1s
User input form login dengan data valid mobile
    Wait Until Element Is Visible    xpath=//input[@name="username"]
    Input Text    xpath=//input[@name="username"]    ${username}
    Wait Until Element Is Visible    xpath=//input[@name="password"]
    Input Text    xpath=//input[@name="password"]   ${password}
    Wait Captcha Solved
    Wait Until Element Is Visible    xpath=//form/button
    Click Element    xpath=//form/button
User berada di halaman Dashboard Affiliator Mobile
    Wait Until Page Contains Element    xpath=//main/div/div/div[1]/div[1]/div[2]/p[1]