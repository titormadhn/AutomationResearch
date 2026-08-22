*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Variables ***
#Test Data
${text}    Test Jobs
${description}    Coba description Job Title by Handsome People

*** Keywords ***
#Create job title
Klik button ADD NEW
    Click Element    (//button[@type='button'])[6]
    Wait Until Element Is Visible    //h2[text()='Add New Job Title']

Isi field Job Title
    Input Text    //input[@name='name']    ${text}
    Sleep    3s

Isi field Description
    Input Text    //textarea[@name='description']    ${description}
    Sleep    3s

Klik SUBMIT
    Click Element    (//button[@tabindex='0'])[9]
    Sleep    3s
    Capture Page Screenshot    embed

#Update job title
Klik pada field Job Title
    Click Element    //input[@placeholder='Select active job titles for your company']
    Sleep    5s

Pilih satu atau lebih Active Job Title
    Click Element    id=job_title-option-6
    Wait Until Element Is Visible    //h1[text()='job titles']

Silang salah satu atau lebih Active Job Title
        Click Element    (//span[starts-with(@class, 'MuiChip-label')])[11]
        Wait Until Element Is Visible    (//span[starts-with(@class, 'MuiChip-label')])[11]
        Click Element    //button[@title='Clear']

#Submit update
Klik UPDATE SETTING
    Click Button    (//button[@type='button'])[7]
    Sleep    3s
    Capture Page Screenshot    embed

