*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    Collections
Library    AppiumLibrary
Library    String

*** Variables ***
${BASE_URL}     https://apistaging.optikmelawai.com/api/v2
${ENDPOINT}     auth/register/verify/phone/request
${HEADERS}      {"Content-Type": "application/json"}
${PHONE_NUMBER}     081573313196

*** Test Cases ***
Get Credential From HTTP Response
    Create Session    auth_api    ${BASE_URL}    headers=${HEADERS}
    ${body}=          Create Dictionary    phone_number=${PHONE_NUMBER}
    ${response}=      Post Request    auth_api    ${ENDPOINT}    json=${body}

    # Ambil status_code dari response dengan menggunakan Get From Dictionary
    ${status_code}=   Get From Dictionary    ${response.json()}    status

    # Memastikan status_code adalah True jika nilainya benar
    Run Keyword If    '${status_code}' == 'True'    Log    Status code is True
    Run Keyword If    '${status_code}' != 'True'    Log    Status code is False

    # Ambil credential dari response JSON
    ${credential}=       Get From Dictionary    ${response.json()}    data.credential
    Log To Console       Extracted Credential: ${credential}

    # # Gunakan credential untuk langkah berikutnya
    # Use Credential For Automation    ${credential}


    #------------------------------------------REFERENSI OTP HIT HTTP LOG----------------------------------------------#
*** Variables ***
${otp}

*** Keywords ***
User berada pada home device
    Open Application    127.0.0.1:4723
    ...    platformName=Android
    ...    platfromVersion=11
    ...    deviceName=OPPO A9 2020
    ...    udid=f698a49d
    ...    appPackage=com.melawai.staging
    ...    appActivity=com.melawai.MainActivity
    ...    automationName=UiAutomator2
    ...    noReset=true

User tap icon melawai aplikasi
    Wait Until Page Contains Element    //android.widget.Button[@content-desc="INGATKAN SAYA NANTI"]
    Click Element    //android.widget.Button[@content-desc="INGATKAN SAYA NANTI"]
    Sleep    1s

Aplikasi melawai sukses terbuka
    Element Should Be Visible    //android.view.View[@content-desc="Selamat datang di Optik Melawai"]

User berada di halaman DAFTAR
    Wait Until Page Contains Element    //android.widget.Button[@content-desc="DAFTAR"]
    Click Element    //android.widget.Button[@content-desc="DAFTAR"]
    Sleep    1s

User input Nomor Telepon
    Wait Until Page Contains Element    //android.widget.EditText
    Input Text    //android.widget.EditText    6281992000193
    Sleep    1s

User tap button Lanjutkan
    Wait Until Page Contains Element    //android.widget.Button[@content-desc="LANJUTKAN"]
    Click Element    //android.widget.Button[@content-desc="LANJUTKAN"]
    Sleep    1s

User ambil OTP
    Wait Until Page Contains Element    //android.view.View[@content-desc="http log"]
    Click Element    //android.view.View[@content-desc="http log"]
    Sleep    1s
    # Wait Until Page Contains Element    //android.view.View[@content-desc="url: https://apistaging.optikmelawai.com/api/v2/auth/register/verify/phone/request statusCode: 200 requestTime: 13:29:56    duration: 725ms"]
    Wait Until Page Contains Element     //android.view.View[contains(@content-desc,'https://apistaging.optikmelawai.com/api/v2/auth/register/verify/phone/request')]
    Click Element    //android.view.View[contains(@content-desc,'https://apistaging.optikmelawai.com/api/v2/auth/register/verify/phone/request')]
    Sleep    1s
    Wait Until Page Contains Element     //android.view.View[contains(@content-desc,'Response')]
    Click Element    //android.view.View[contains(@content-desc,'Response')]
    Sleep    1s
    Wait Until Page Contains Element     //android.view.View[contains(@content-desc,'data:{...}')]
    Click Element    //android.view.View[contains(@content-desc,'data:{...}')]
    Sleep    1s
    # Wait Until Page Contains Element     //android.view.View[@content-desc="credential:8911,"]
    Wait Until Page Contains Element     //android.view.View[contains(@content-desc,'credential:')]
    ${otp}    Get Element Attribute    //android.view.View[contains(@content-desc,'credential:')]    content-desc
    Sleep    1s
    ${otp}    Get Substring    ${otp}    11    15
    Log To Console    ${otp}
    Wait Until Page Contains Element     //android.widget.Button[@content-desc="Kembali"]
    Click Element    //android.widget.Button[@content-desc="Kembali"]
    Sleep    1s
    Wait Until Page Contains Element     //android.widget.Button[@content-desc="Kembali"]
    Click Element    //android.widget.Button[@content-desc="Kembali"]
    Sleep    1s

User input OTP
    Wait Until Page Contains Element    //android.widget.EditText
    Input Text    //android.widget.EditText    ${otp}
    Sleep    1s

User klik button selesai
    Wait Until Page Contains Element    //android.widget.Button[@content-desc="SELESAI DAN LANJUTKAN"]
    Click Element    //android.widget.Button[@content-desc="SELESAI DAN LANJUTKAN"]
    Sleep    1s

#------------------------------- OTP WITH REGEX EVALUATE ----------------------------------#

# Get OTP From Mailnator
#     ${locator}    Set Variable    //android.widget.TextView[@text=""]
#     ${mail}=    Get Element Attribute    ${locator}    text
#     ${otp}=    Evaluate    re.search(r'^\\d{4}$', """${mail}""", re.M)    re
#     ${otp}=    Evaluate    """${otp}""".strip()
#     Log To Console    Extracted OTP: ${otp}

# Get OTP From Mailnator
#     ${locator}    Set Variable    //android.view.View[@text="YOPmail - Mail viewer"]/android.view.View[2]/android.view.View/android.view.View
#     Wait Until Element Is Visible    ${locator}
#     ${mail}=    Get Element Attribute    ${locator}    text
#     ${match}=    Evaluate    re.search(r'\b\d{4}\b', """${mail}""")    re
#     Run Keyword If    ${match} is None    Fail    OTP not found in email body
#     ${otp}=    Set Variable    ${match}.group(0)
#     ${locator2}=    Set Variable    //android.widget.TextView[@text="${otp}"]
#     Log To Console    Dynamic Locator: ${locator2}     