*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource

*** Keywords ***
Update field personal data
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[3]/div/main/div/div[1]/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[3]/div/main/div/div[1]/button
    Wait Until Page Contains    Update Personal Data
    Click Element    //input[@placeholder='Enter full name']
    Input Text    //input[@placeholder='Enter full name']    Damar Edit Robot
    Click Element    //input[@placeholder='Enter nik']
    Input Text    //input[@placeholder='Enter nik']    3456789101112235
    Click Element    //input[@placeholder='dd-mmmm-yyyy']
    Click Element    //div[normalize-space()='2002']
    Click Element    //div[normalize-space()='Jan']
    Click Element    (//button[@type='button'])[17]
    Click Element    //span[normalize-space()='OK']
    Click Element    id=mui-component-select-gender
    Wait Until Element Is Visible    //ul[@role='listbox']
    Click Element    //li[normalize-space()='Male']
    Click Element    id=mui-component-select-marital_status
    Click Element    //li[normalize-space()='Single']
    Scroll Element Into View    //p[normalize-space()='Finance and Tax Information']
    Click Element    id=mui-component-select-religion
    Click Element    //li[normalize-space()='Muslim']
    Click Element    //input[@placeholder='Fill in user phone number']
    Press Keys    //input[@placeholder='Fill in user phone number']    CTRL+a    BACKSPACE
    Input Text    //input[@placeholder='Fill in user phone number']    082122872031
    Click Element    //textarea[@placeholder='Enter Adress']
    Input Text    //textarea[@placeholder='Enter Adress']    Jl Babakan Ciparay No 173, Bandung
    Choose File   ${loc_uploadImg}    C:/Users/titor/Downloads/robot_trainingImage/dragonball_DaimaGoku.jpg
    Sleep    1s
    Click Element    ${loc_setOriImg}
    Scroll Element Into View    //p[normalize-space()='Emergency Contact Information']
    Click Element    //input[@placeholder='Enter NPWP']
    Input Text    //input[@placeholder='Enter NPWP']    327327456321789
    Click Element    id=select-search
    Click Element    id=select-search-option-3
    Click Element    //input[@placeholder='Enter bank account name']
    Input Text    //input[@placeholder='Enter bank account name']    Damar
    Click Element    //input[@placeholder='Enter bank account number']
    Input Text    //input[@placeholder='Enter bank account number']    123456
    Scroll Element Into View    (//footer[@class='jss43'])[1]
    Click Element    //input[@placeholder='Enter emergency contact name']
    Input Text    //input[@placeholder='Enter emergency contact name']    Tito Ramadhan
    Click Element    id=mui-component-select-emergency_contact_relation
    Click Element    //li[normalize-space()='Friends']
    Click Element    //input[@placeholder='Enter emergency contact number']
    Input Text    //input[@placeholder='Enter emergency contact number']    082343211234
    Scroll Element Into View    (//div)[132]
    Sleep    1s

Klik button Save Update dan konfirmasi update yang dilakukan
    Click Element    //span[normalize-space()='SAVE UPDATE']
    Sleep    5s
    Wait Until Element Is Visible    (//div[@class='swal2-header'])[1]
    Sleep    1s
    Click Element    //button[@id='btnConfirm']
    Sleep    1s
    Element Should Contain    //*[@id="ct-container"]/div[2]/div[2]/div    User updated successfully
    Capture Page Screenshot    Embed
    Sleep    1s