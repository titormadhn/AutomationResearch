*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Lihat detail salah satu data di tabel Leave List
    Wait Until Element Is Visible    //tbody//td[1]
    Click Element    (//button[@type='button'])[8]
    Wait Until Element Is Visible    //tbody//td[2]
    ${compare1}    Get Text    //tbody//td[2]
    log    ${compare1}
    Capture Element Screenshot    //tbody//td[2]
    Sleep    1s
    Click Element    //button[@title='EDIT']
    Wait Until Element Is Visible    //h2[normalize-space()='Update Master Holiday']
    ${compare2}    Get Value    //input[@placeholder='Public Holiday']
    log    ${compare2}
    Capture Element Screenshot     //input[@placeholder='Public Holiday']
    Should Be Equal    ${compare1}    ${compare2}
