*** Settings ***
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Buka Website Pagii CMS
    Masuk url staging

Login dengan menggunakan kredensial HR
    Login HR dengan valid data

Klik menu "User Management"
    Wait Until Element Is Visible    xpath=//img[@alt='img']
    click Element    xpath=//span[.='User Management']
    Sleep    1s

Klik simbol "+" di ujung kanan atas "Employee List"
    Wait Until Element Is Visible    //*[@id="root"]/div/header/div/h1
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[1]/div[2]/div/div/button
    Sleep    1s

Isi field Full Name
    random value huruf
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[3]/div/div/h2
    Input Text    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[1]/div/div/input    ${fullName}
    Sleep    1s

Isi field NIK / Employee ID
    random value angka
    Input Text    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[2]/div[1]/div/div/div/input    ${NIK}
    Sleep    1s

Isi field Date of Birth
    Click Element    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[2]/div[2]/div/div/input
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[1]
    Scroll Element Into View    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[97]
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[97]
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[9]
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div/div[9]
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div[2]/div/div[1]/div[7]/button/span[1]/p
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[1]/div/div[2]/div[2]/div/div[1]/div[7]/button/span[1]/p
    Click Element    xpath=/html/body/div[3]/div[3]/div/div[2]/button[2]/span[1]
    Sleep    1s
    
Isi field Email Address
    random value huruf
    Click Element    xpath=//input[@placeholder='Email']
    Input Text    xpath=//input[@placeholder='Email']    ${picEmail}
    Sleep    1s

Isi field Phone Number
    Click Element    xpath=//input[@placeholder='Phone']
    Input Text    xpath=//input[@placeholder='Phone']    082214633080
    Sleep    1s

Isi field Address
    Click Element    xpath=//textarea[@placeholder='Address']
    Input Text    xpath=//textarea[@placeholder='Address']    Jl Soekarno Hatta, Babakan Ciparay, Bandung
    Sleep    1s

Isi field Photo
    Choose File   ${loc_uploadImg}    ${path_photoImg}
    Sleep    1s
    Click Element    ${loc_setOriImg}
    
Isi field Division
    Scroll Element Into View    xpath=//button[@type='submit']
    Sleep    3s
    Click Element    (//input[@id='controllable-states-demo'])[1]
    Wait Until Element Is Visible    id=controllable-states-demo-option-1
    Click Element    id=controllable-states-demo-option-1
    Sleep    1s

Isi field Job Title
    Click Element    (//input[@id='controllable-states-demo'])[2]
    Wait Until Element Is Visible    id=controllable-states-demo-option-3
    Click Element    id=controllable-states-demo-option-3
    Sleep    1s

Isi field Role
    Click Element    xpath=//div[@id='mui-component-select-role_id']
    Wait Until Element Is Visible    //ul[@role='listbox']
    Click Element    //li[normalize-space()='User']
    Sleep    1s

Isi field Supervisor
    Click Element    id=free-solo-demo
    Input Text    id=free-solo-demo    HR
    Wait Until Element Is Visible    id=free-solo-demo-option-0
    Click Element    xpath=//*[@id="free-solo-demo-option-0"]
    Sleep    1s

Isi field Approval Type
    Click Element    xpath=(//div[@id='mui-component-select-approval_type'])[2]
    Click Element    xpath=//li[normalize-space()='Approval']
    Sleep    1s

Klik "Create User"
    Click Element    xpath=//button[@type='submit']
    Sleep    5s
    Wait Until Page Contains    ${picEmail}
    Log    ${picEmail}
    Capture Page Screenshot    Embed
    Sleep    1s