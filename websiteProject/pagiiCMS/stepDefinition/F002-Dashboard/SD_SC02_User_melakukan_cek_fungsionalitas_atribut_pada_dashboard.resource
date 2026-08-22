*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../utility/globalVariable.resource

*** Keywords ***
Akses Halaman
    Masuk url staging

Login dengan menggunakan kredensial HR
    Login HR dengan valid data

Tekan loceng notifikasi di bagian kanan header
    Click Element    //*[@id="root"]/div/header/div/div[2]/div/span
    Wait Until Element Is Visible    //*[@id="root"]/div/header/div/div[2]/div/div/span
    Capture Page Screenshot    EMBED
    Sleep    1s

Tekan foto profil di bagian kanan header
    Click Element    ${loc_profileImg}
    Wait Until Element Is Visible    //*[@id="basic-menu"]/div[3]/ul/li[1]
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik menu "Your Profile"
    Click Element    ${loc_yourProfile}    
    Wait Until Element Contains    xpath=//h2[.='Update User']    Update User
    Capture Page Screenshot    EMBED
    Click Element    xpath=//button[@aria-label='close']
    Click Element    //*[@id="basic-button"]/span[1]/div/img 
    Sleep    1s

Klik menu "Logout"
    Wait Until Element Is Visible    ${loc_menuProfile}
    Click Element    xpath=//li[.='Logout']  
    Wait Until Element Is Visible    xpath=//button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained jss23 MuiButton-containedSizeSmall MuiButton-sizeSmall'] 
    Sleep    1s
    Click Button    xpath=//button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained jss23 MuiButton-containedSizeSmall MuiButton-sizeSmall']
    Wait Until Element Contains    //*[@id="root"]/div/div/main/div/div/div    LOGIN
    Capture Page Screenshot    EMBED
    Sleep    1s
    Close Browser

Klik lambang "<" pada sidebar
    Click Button    //*[@id="root"]/div/div[1]/div/div/div/div[2]/button
    Capture Page Screenshot    EMBED
    Sleep    1s
