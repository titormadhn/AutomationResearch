*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary    #Random value with library
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Klik button Create User
    Wait Until Page Does Not Contain    Loading...
    Wait Until Element Is Visible    ${button_create}
    Click Element    ${button_create}

Input Full Name
    Wait Until Element Is Visible    ${fullname_field}
    ${fullname}    FakerLibrary.Name
    Input Text    ${fullname_field}    ${fullname}

Input NIK
    ${nik}    FakerLibrary.Random Number    digits=16
    Input Text    ${nik_field}    ${nik}


Pilih Date of Birth
    Click Element    ${date_of_birth_field}
    Sleep    5s
    Click Element    //div[normalize-space()='1995']
    Sleep    1s
    Click Element    //div[normalize-space()='Aug']
    Sleep    1s
    Click Element    //p[normalize-space()='17']
    Sleep    1s
    Click Element    //span[normalize-space()='OK']
    Sleep    1s

Input Email
    random value huruf
    Input Text    ${email_field}    ${picEmail}

Input Phone Number
    ${phone_number}    FakerLibrary.Random Number    digits=9
    Input Text    ${phone_field}    08${phone_number}

Input Address
    ${address}    FakerLibrary.Address
    Input Text    ${address_field}    ${address}

Pilih File Photo
    Choose File    ${loc_uploadImg}    ${path_photoImg}
    Sleep    5s
    Click Element    ${loc_setOriImg}
    Sleep    5s

Pilih Division
    Click Element    ${division_field}
    Sleep    2s
    Click Element    //li[contains(text(),'Test Division')]
    Sleep    1s

Pilih Job Title
    Click Element    ${job_title_field}
    Sleep    2s
    Click Element    //li[contains(text(),'Quality Assurance')]
    Sleep    2s

Pilih Supervisor
    Input Text    ${supervisor_field}    melatu
    Sleep    5s
    Click Element    //li[contains(text(),'melatu')]
    Sleep    2s

Pilih Approval Type
    Click Element    ${approval_type_field}
    Sleep    2s
    Click Element    //li[contains(text(),'Master')]
    Sleep    1s

Klik button Create
    Click Element    ${create_button}
    Wait Until Page Does Not Contain    Loading...    timeout=10s
    Wait Until Element Is Visible    ${toast_user_created}
    Page Should Contain    User created
    Capture Page Screenshot    EMBED











