*** Settings ***
Library    AppiumLibrary
Resource    ../utility/variable.resource

*** Keywords ***
#----------Open Aplication-------------#

#Flutter Android-----
User membuka aplikasi GherkinPilot
    Open Application    127.0.0.1:4723
    ...    platformName=Android
    ...    platfromVersion=8.1
    ...    deviceName=2bbbd23d9805
    ...    app=C:/Users/titor/Downloads/gherkin-pilot.apk    
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=9999    #set timeout

Open google chrome and view yopmail 
    Open Application    127.0.0.1:4723
    ...    platformName=Android
    ...    platfromVersion=8.1
    ...    deviceName=2bbbd23d9805
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=9999
    ...    appActivity=com.google.android.apps.chrome.Main    #Cara carinya di cmd : adb shell dumpsys window | find "mCurrentFocus"
    ...    appPackage=com.android.chrome    #Sebelahan sama appActivity
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.android.chrome:id/signin_fre_dismiss_button"]
    Click Element    //android.widget.Button[@resource-id="com.android.chrome:id/signin_fre_dismiss_button"]
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.android.chrome:id/more_button"]
    Click Element    //android.widget.Button[@resource-id="com.android.chrome:id/more_button"]
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.android.chrome:id/ack_button"]
    Click Element    //android.widget.Button[@resource-id="com.android.chrome:id/ack_button"]
    Wait Until Element Is Visible    //android.widget.LinearLayout[@resource-id="com.android.chrome:id/search_box"]
    Click Element    //android.widget.LinearLayout[@resource-id="com.android.chrome:id/search_box"]
    Input Text    //android.widget.EditText[@resource-id="com.android.chrome:id/url_bar"]    yopmail
    Wait Until Element Is Visible    //android.widget.TextView[@resource-id="com.android.chrome:id/line_1" and @text="yopmail"]
    Click Element    //android.widget.TextView[@resource-id="com.android.chrome:id/line_1" and @text="yopmail"]
    Wait Until Element Is Visible    //android.view.View[@text="YOPmail"]
    Click Element    //android.view.View[@text="YOPmail"]
    ${locator}    Set Variable    //android.webkit.WebView[@text="YOPmail - Disposable Email Address - Anonymous and temporary inbox"]/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]
    Wait Until Element Is Visible    ${locator}    15s
    Click Element    ${locator}
    Input Text    android=new UiSelector().className("android.widget.EditText").instance(0)    ${textMailnator}
    Click Element    //android.widget.Button[@text=""]
    # Wait Until Element Is Visible    android=new UiSelector().text("")
    # Click Element    //android.widget.Button[@text=""]
    Sleep    5s    # Handling manualiy for close iklan in emailnator yopmail
    Wait Until Element Is Visible    //android.view.View[@text="Inbox"]/android.view.View[1]
    Click Element    //android.view.View[@text="Inbox"]/android.view.View[1]
    Sleep    1s

#Native Android-----
User membuka aplikasi GherkinPilot Native
    Open Application    127.0.0.1:4723
    ...    platformName=Android
    ...    platfromVersion=8.1
    ...    deviceName=2bbbd23d9805
    ...    app=C:/Users/titor/Downloads/gherkin_piloting_nativeAndro_update.apk  
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=9999

#----------Registration-------------#

#Flutter Android-----
User tap button "Register Here"
    Click Element    //android.view.View[@content-desc="Register Here"]

Get OTP From Mailnator
    Wait Until Element Is Visible    //android.view.View[@text="YOPmail - Mail viewer"]/android.view.View[2]/android.view.View/android.view.View/*[4]    20s
    ${otp}=    Get Text    //android.view.View[@text="YOPmail - Mail viewer"]/android.view.View[2]/android.view.View/android.view.View/*[4]
    Log To Console    ${otp}
    Set Global Variable    ${otp}