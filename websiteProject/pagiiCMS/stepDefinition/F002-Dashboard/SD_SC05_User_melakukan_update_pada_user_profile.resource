*** Settings ***
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Akses halaman
    Masuk url staging

Login dengan menggunakan kredensial HR
    Login HR dengan valid data

Tekan foto profil di bagian kanan header
    Click Element    ${loc_profileImg} 
    Sleep    1s

Klik menu "Your Profile"
    Wait Until Element Is Visible    ${loc_menuProfile}
    Click Element    ${loc_yourProfile}
    Sleep    1s

Isi field "Full Name"
    Wait Until Page Contains    Update User
    Click Element    //input[@placeholder='Full Name']
    Input Text    //input[@placeholder='Full Name']    HR Smooets Robot
    Sleep    1s

Isi field "NIK / Employee ID"
    Click Element    //input[@placeholder='NIK']
    Input Text    //input[@placeholder='NIK']    1234567890
    Sleep    1s
    
Isi field "Division"
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[3]/div/div
    Click Element    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[3]/div/div
    Wait Until Element Is Visible    id=controllable-states-demo-popup
    Scroll Element Into View    id=controllable-states-demo-option-14
    Click Element    id=controllable-states-demo-option-14
    Sleep    1s

Isi field "Job Title"
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[4]/div
    Click Element    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[4]/div
    Wait Until Element Is Visible    id=menu-job_title_id
    Click Element    xpath=//*[@id="menu-job_title_id"]/div[3]/ul/li[2]
    Sleep    1s

Isi field "Supervisor"
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[5]/div/div
    Click Element    id=free-solo-demo
    Click Element    xpath=/html/body/div[2]/div[3]/div/form/div[1]/div[5]/div/div/div/button
    Input Text    id=free-solo-demo    asep wilayana
    Wait Until Element Is Visible    id=free-solo-demo-option-0
    Click Element    id=free-solo-demo-option-0

Isi field "Email Address"
    Sleep    1s

Isi field "Address"
    Click Element    xpath=//input[@placeholder='Address']
    Input Text    xpath=//input[@placeholder='Address']    Jl. Babakan Ciparay No. 104
    Sleep    1s

Isi field "Date of Birth"
    Click Element    xpath=//input[@placeholder='dd-mm-yyyy']
    Wait Until Element Is Visible    xpath=//div[@class='MuiPickersYearSelection-container']
    Click Element    xpath=//div[normalize-space()='1998']
    Click Element    xpath=//div[normalize-space()='Sep']
    Wait Until Element Is Visible    //div[@class='MuiPickersBasePicker-pickerView']
    Click Element    xpath=(//button[@type='button'])[21]
    Click Element    xpath=//span[normalize-space()='OK']
    Sleep    1s

Isi field "Phone Number"
    Click Element    xpath=//input[@placeholder='Fill in user phone number']
    Execute JavaScript    $("input[placeholder='Fill in user phone number']").val('');
    Input Text    xpath=//input[@placeholder='Fill in user phone number']    082214633080

Isi field "Password"
    Sleep    1s

Isi field "Photo"
    Choose File   ${loc_uploadImg}    C:/Users/titor/Downloads/robot_trainingImage/smooets_logoup.jpeg
    Sleep    1s
    Click Element    ${loc_setOriImg}
    Sleep    1s

Klik "Update User"
    Wait Until Element Is Visible    xpath=(//button[@type='submit'])[1]
    Click Element    xpath=//button[@type='submit']
    Wait Until Element Contains    id=ct-container    User updated successfully
    Capture Page Screenshot    Embed
    Sleep    1s