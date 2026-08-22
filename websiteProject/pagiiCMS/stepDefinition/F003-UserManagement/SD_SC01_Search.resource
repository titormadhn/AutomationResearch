*** Settings ***
Resource    ../../utility/globalKeyword.resource
*** Keywords ***
Akses Halaman
    Masuk url staging

Login dengan menggunakan kredensial HR
    Login HR dengan valid data

Input keyword Name pada search bar
    Wait Until Element Is Visible    ${fieldsearch}
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    Damar
    Wait Until Page Contains  Damar
    Capture Page Screenshot    EMBED
    Reset button

Input keyword Email pada search bar
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    poppytest@yopmail.com
    Wait Until Page Contains    poppytest@yopmail.com
    Capture Page Screenshot    EMBED
    Reset button

Input keyword Phone pada search bar
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    08
    Wait Until Page Contains    08
    Capture Page Screenshot    EMBED
    Reset button

Input keyword Role pada search bar
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    HR Admin
    Wait Until Page Contains    HR Admin
    Capture Page Screenshot    EMBED
    Reset button

Input keyword Division pada search bar
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    Developers
    Wait Until Page Contains    Developers
    Capture Page Screenshot    EMBED
    Reset button

Input keyword Job Title pada search bar
    Click Element    ${fieldsearch}
    Input Text    ${fieldsearch}    Quality Assurance
    Wait Until Page Contains    Quality Assurance
    Capture Page Screenshot    EMBED
    Reset button