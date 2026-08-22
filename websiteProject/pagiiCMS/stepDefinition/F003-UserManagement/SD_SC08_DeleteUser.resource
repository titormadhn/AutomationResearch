*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalKeyword.resource

*** Variables ***
#-- TEST DATA--#
${name_for_delete}    Jorge Gonzalez

*** Keywords ***
Cari data karyawan dengan approval type adalah None
    Wait Until Element Is Visible    ${fieldsearch}
    Sleep    1s
    Click Element    ${fieldsearch}
    Sleep    1s
    Input Text    ${fieldsearch}    ${name_for_delete}
    Sleep    5s
    Click Element    ${approval_type_list}
    Sleep    1s
    Click Element    //li[normalize-space()='None']
    Wait Until Element Is Visible    ${row_name_1}    timeout=10s
    Element Should Contain    ${row_name_1}    ${name_for_delete}    ignore_case=True
    Element Text Should Be    ${row_approval_type_1}    None

Hapus data karyawan
    Click Element    ${delete_button_on_row_1}
    Click Element    ${confirm_delete_button}
    Wait Until Page Does Not Contain    Loading...    timeout=10s
    Wait Until Element Is Visible    ${toast_user_created}
    Page Should Contain    User successfully deleted
    Element Text Should Be    ${info_search_result}    Sorry, no matching records found
    Capture Page Screenshot    EMBED


