*** Settings **
Library    SeleniumLibrary

*** Keywords ***
#SC01 - Update Exclude Job TItle
Pilih satu Job Title "Account Manager"
    Wait Until Element Is Visible    //button[@title='Open']
    Click Element    //button[@title='Open']
    Wait Until Element Is Visible    //*[@id="leaderboard_job_title-option-0"]
    Click Element    //*[@id="leaderboard_job_title-option-0"]
    Wait Until Element Is Visible    //span[normalize-space()='akuntan']
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/form/div[1]/div/div/div/div/div    embed

#SC02 - Status Leaderboard
Klik opsi OFF pada section leaderboard
    Wait Until Element Is Visible    //h5[text()='Exclude Job Titles for The Leaderboard']
    Click Element    //label[starts-with(@class, 'MuiFormControlLabel-root')][2]
    Sleep    3s
    Capture Page Screenshot    embed

#SC03 - Check Functional Button
Klik button update setting setelah ada perubahan
    Wait Until Element Is Visible    //label[contains(@class, 'MuiFormControlLabel-root')][1]
    Click Button    (//button[@type='button'])[6]
    Sleep    3s
    Capture Page Screenshot    embed

#Open Leaderboard Setting
Klik menu dengan bacaan general setting pada sidebar
    Wait Until Element Is Visible    (//div[@role='button'])[13]
    Click Element    (//div[@role='button'])[13]
    
Klik side-menu dengan bacaan company setting pada sidebar
    Wait Until Element Is Visible    (//div[@role='button'])[15]
    Click Element    (//div[@role='button'])[15]
    Sleep    3s

Klik slide side-menu dengan bacaan leader
    Wait Until Element Is Visible    (//div[@style='padding-left: 20px;'])[4]
    Click Element    (//div[@style='padding-left: 20px;'])[4]
    Wait Until Element Is Visible    //h1[text()='leaderboard settings']
    
