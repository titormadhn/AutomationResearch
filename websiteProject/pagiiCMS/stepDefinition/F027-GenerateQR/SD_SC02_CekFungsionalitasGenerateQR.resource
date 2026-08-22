*** Settings **
Library    SeleniumLibrary
Library    OperatingSystem
Library    Process
Resource    ../../utility/globalKeyword.resource

*** Variables ***
#Test Data
${PDF_PATH}    C:/Users/MyBook Hype AMD/Downloads/qr-code-test.pdf
${preview_Downloader}    C:/robot/qa-robot-framework/pagiiCMS/utility/savepdf.exe
${link_QR}    https://hr-apps-stage.smtapps.net/qrcode/71776572747975696f70617364666768:fc0b57ff72a8ca09024c3e217ff7c66a
${leaderboard_URL}    https://hr-apps-stage.smtapps.net/leaderboard/71776572747975696f70617364666768:fc0b57ff72a8ca09024c3e217ff7c66a
${field_Time}    250

*** Keywords ***
#TC01 
Copy Link pada Field QR
    Wait Until Element Is Visible    //input[@placeholder='Click generate to create your company attendance link']
    Click Element    //input[@placeholder='Click generate to create your company attendance link']
    Press Keys    //input[@placeholder='Click generate to create your company attendance link']    CTRL+A    CTRL+C
    Sleep    2s

Buka Tab baru dan buka link yang sudah di copy
    Execute Javascript    window.open('${link_QR}');
    Sleep    3s
    Switch Window    url=${link_QR}
    Sleep    3s
    Capture Page Screenshot    EMBED

#TC02
Klik button Generate Link
    Wait Until Element Is Visible    (//button[@type='button'])[4]
    Click Element    (//button[@type='button'])[4]
    Sleep    2s

Klik button yes untuk konfirmasi
    Wait Until Element Is Visible    (//button[normalize-space()='Yes'])[1]
    Click Element    (//button[normalize-space()='Yes'])[1]
    Sleep    2s
    Capture Page Screenshot    EMBED

#TC05
Klik button Leaderboard
    Wait Until Element Is Visible    (//button[@type='button'])[7]
    Click Element    (//button[@type='button'])[7]
    Sleep    5s
    Switch Window    url=${leaderboard_URL}
    Sleep    5s
    Capture Page Screenshot    EMBED

#TC07
Klik Switch Button Auto Refresh QR
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/label/span[1]/span[1]
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/label/span[1]/span[1]
    Sleep    2s

#TC08
Klik button Print
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/div[2]/div[1]/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/div[2]/div[1]/button
    Sleep    2s

Cek file ada atau tidak
    # Pause Execution    #Untuk melakukan print manualy pdf
    File Should Exist    ${PDF_PATH}
    Log    FileExist : ${PDF_PATH}

Simpan PDF Otomatis 
# Note: alert allow notifikasi setelah login di-close dulu.
    Run Process    ${preview_Downloader}
    Sleep    3s

#TC09
User Update Field Time
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/label/span[1]/span[1]
    Sleep    5s
    Wait Until Element Is Visible    //input[@placeholder='Set automatic refresh QR time']
    Click Element    //input[@placeholder='Set automatic refresh QR time']
    Press Keys    //input[@placeholder='Set automatic refresh QR time']    CTRL+A    BACKSPACE
    Sleep    2s
    Input Text    //input[@placeholder='Set automatic refresh QR time']    ${field_Time}
    Sleep    2s

#Submit button - for all TC
Klik button Update Setting
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/div[2]/div[1]/div/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/div[2]/div[1]/div/button
    Sleep    2s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    2s
    Capture Page Screenshot    EMBED
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[2]/label/span[1]/span[1]