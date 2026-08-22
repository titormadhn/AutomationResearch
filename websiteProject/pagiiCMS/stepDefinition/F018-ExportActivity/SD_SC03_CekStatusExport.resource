*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Cek apakah ada event yang memiliki status Success
    Wait Until Element Is Visible    //div[contains(text(),'Status')]
    Click Element    (//strong[contains(text(),'Success')])[1]
    Element Should Contain    (//strong[contains(text(),'Success')])[1]    Success
    Capture Page Screenshot   embed
    Sleep    1s