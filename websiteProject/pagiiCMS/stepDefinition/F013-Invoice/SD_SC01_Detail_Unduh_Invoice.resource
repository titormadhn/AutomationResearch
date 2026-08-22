*** Settings ***
Library    SeleniumLibrary
Library    RPA.PDF
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Variables ***
#Test Data
${PDF_PATH}    C:\\Users\\titor\\Downloads\\INVOICE_SMOOETS2_20250424.pdf
${EXPECTED_DATE}    PGI-07/IV/2025/SMT

*** Keywords ***
Klik button Action untuk mengunduh Invoice
    Wait Until Element Is Visible    (//button[@title='DOWNLOAD INVOICE'])[2]
    Click Element    (//button[@title='DOWNLOAD INVOICE'])[2]
    Sleep    5s
    Capture Page Screenshot    EMBED

Buka Invoice yang baru saja diunduh
    Open Pdf    ${PDF_PATH}

Bandingkan isi dari konten yang diunduh dengan yang ada pada CMS
    ${pdf_dict}=    Get Text From PDF
    ${pdf_text}=    Evaluate    ''.join(${pdf_dict}.values())
    Should Contain    ${pdf_text}    ${EXPECTED_DATE}
    ${web_text}=    Get Text    //div[normalize-space()='PGI-07/IV/2025/SMT']
    Sleep    1s
    Should Be Equal      ${web_text}    ${EXPECTED_DATE}