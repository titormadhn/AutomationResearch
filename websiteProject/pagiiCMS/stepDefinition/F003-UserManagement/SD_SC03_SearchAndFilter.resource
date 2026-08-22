*** Settings ***
Resource    ../../utility/globalVariable.resource
Library    Collections
Library    SeleniumLibrary

*** Variables ***
@{list_of_approval_type}    None    Master    Approval
@{list_of_employment_status}    Active    Inactive    Expired Soon

*** Keywords ***

Input keyword pada search bar "${keyword_value}"
    Wait Until Element Is Visible    ${fieldsearch}
    Sleep    1s
    Click Element    ${fieldsearch}
    Sleep    1s
    Press Keys    ${fieldsearch}    CTRL+a    BACKSPACE
    Sleep    1s
    Input Text    ${fieldsearch}    ${keyword_value}
    Sleep    1s
    Capture Element Screenshot    ${fieldsearch}    EMBED

Pilih Approval Type "${approval_type}"
    Sleep    5s
    Click Element    ${approval_type_list}
    Sleep    1s
    Click Element    //li[normalize-space()='${approval_type}']
    Sleep    1s
    Capture Element Screenshot    ${approval_type_list}    EMBED

Pilih Employment Status "${employment_status}"
    Sleep    5s
    Click Element    ${employment_status_list}
    Sleep    1s
    Click Element    //li[normalize-space()='${employment_status}']
    Sleep    1s
    Capture Element Screenshot    ${employment_status_list}    EMBED

Berhasil Search dan Filter "${keyword_value}" "${approval_type}" "${employment_status}"
    Sleep    10s
    Element Should Contain    ${row_name_1}    ${keyword_value}    ignore_case=True
    Sleep    1s
    IF    '${approval_type}' == 'All'
        ${value_of_approval_type}    Get Text    ${row_approval_type_1}
        List Should Contain Value    ${list_of_approval_type}    ${value_of_approval_type}
    ELSE
        Element Text Should Be    ${row_approval_type_1}    ${approval_type}
    END
    Sleep    1s
    IF    '${employment_status}' == 'All'
        ${value_of_employment_status}    Get Text    ${row_employment_status_1}
        List Should Contain Value    ${list_of_employment_status}    ${value_of_employment_status}
    ELSE
        Element Text Should Be    ${row_employment_status_1}    ${employment_status}
    END
    Sleep    1s
    Capture Page Screenshot    EMBED
