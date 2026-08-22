*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Buka Website Pagii CMS
    Masuk url staging

Klik Register
    Click Element    //p[.='Register']
    Sleep    1s

Isi field PIC Name
    Click Element    id=name 
    Input Text    id=name    M Tito Ramadhan
    Sleep    1s

Isi field PIC Email
    random value huruf
    Click Element    id=email
    Input Text    id=email    ${picEmail} 
    Sleep    1s 

Isi field PIC Phone Number
    Click Element    //input[@name='phone']
    Input Text    //input[@name='phone']    082214633080
    Sleep    1s

Isi field Company Name
    Click Element    id=organization_name
    Input Text    id=organization_name    PT QA Corporation
    Sleep    1s

Isi field Company Address
    Click Element    id=organization_addres
    Input Text    id=organization_addres    Bandung
    Sleep    1s

Isi field Company Sector
    Click Element    id=company_sector
    Click Element    xpath=//li[.='Computer/IT']
    Sleep    1s

Isi field Number of Employees
    Click Element    id=number_of_employees    
    Click Element    xpath=//li[.='< 50 peoples']
    Sleep    1s

Klik Captcha
    ${last_element}=    Get WebElements    id=submit_register
    Scroll Element Into View    ${last_element}[-1]
    handle captcha
    Sleep    1s

Klik "Register"
    Click Element    id=submit_register
    Wait Until Element Is Visible    //*[@id="root"]/div/div/main/div/div/div/p
    Page Should Contain    Registration created
    Capture Page Screenshot    embed
    Sleep    1s
    