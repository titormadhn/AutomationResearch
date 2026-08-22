*** Settings ***
Library    RequestsLibrary

*** Variables ***
${baseURL}    https://simple-books-api.glitch.me
${bookType}    fiction   

*** Test Cases ***
Get list book with type fiction
    Create Session    mysession    ${baseURL}
    ${response}=    Get On Session    mysession    /books  params=type=fiction
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200
    ${body}=    Convert To String    ${response.json()}
    Should Contain    ${body}    fiction

    # Status Should Be    200    ${response}
    # Log To Console    ${response.status_code}
    # Log To Console    ${response.json()}
    # Log To Console    ${response.headers}

