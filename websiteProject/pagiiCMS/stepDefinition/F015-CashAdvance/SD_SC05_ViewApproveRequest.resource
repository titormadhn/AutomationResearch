*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Variables ***
${notes}    Untuk biaya pembuangan sampah

*** Keywords ***
#approve request
User sebelumnya telah mengajukan cash lewat mobile
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/header/div/h1
    Sleep    7s

HR melihat salah satu data user
    Click Element    (//div[@style='display: inline; margin-right: 5px;'])[7]
    Wait Until Element Is Visible    //p[normalize-space()='Confirmation']

HR melakukan Approve yang telah terisi seluruh field pada mobile
    Click Element    //textarea[@name='notes']
    Input Text    //textarea[@name='notes']    ${notes}
    Choose File    //input[@id='fileUpload']    ${path_photoImg} 
    Wait Until Element Is Visible    //img[@alt='img-1']    10s
    Capture Element Screenshot    //img[@alt='img-1']    embed
    Click Button    //button[@id='btnYes']
    Sleep    3s
    Capture Page Screenshot    embed


#detail request
 Klik salah satu user pada detail
    Wait Until Element Is Visible    (//button[@id='btn-detail-cash'])[1]
    ${Text1}=    Get Text    (//strong[text()='Request'])[1]
    Click Element    (//button[@id='btn-detail-cash'])[1]
    ${Text2}=    Get Text    (//strong[text()='Request'])[1]
    Should Be Equal    ${Text1}    ${Text2}
    Sleep    3s
    Capture Page Screenshot    embed
