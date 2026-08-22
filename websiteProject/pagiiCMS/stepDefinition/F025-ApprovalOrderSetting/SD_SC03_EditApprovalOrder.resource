*** Settings **
Library    SeleniumLibrary

*** Keywords ***
Klik Button edit dengan icon pensil pada kolom actions pada salah satu Division
    Wait Until Element Is Visible    (//button[@type='button'])[9]
    Click Element    (//button[@type='button'])[9]
    Wait Until Page Contains    Order List
    Sleep    2s
    Capture Page Screenshot    EMBED

Klik dropdown Overtime
    Wait Until Element Is Visible    (//button[@type='button'])[4]
    Click Element    (//button[@type='button'])[4]
    Wait Until Element Is Visible    //*[@id="panel1a-content"]/div/div[1]/div/div/label    
    Sleep    2s

Tambahkan user pada Order List Overtime
    Wait Until Element Is Visible    //*[@id="panel1a-content"]/div/div[1]/div/div/label
    Click Element    //*[@id="panel1a-content"]/div/div[1]/div/div/label
    Scroll Element Into View    //*[@id="panel1a-content"]/div/div[13]/div/div/label
    Wait Until Element Is Visible    //*[@id="panel1a-content"]/div/div[13]/div/div/label
    Click Element    //*[@id="panel1a-content"]/div/div[13]/div/div/label
    Repeat Keyword    7 times    Press Keys    xpath=//body    PAGE_UP    
    Click Element    (//button[@type='button'])[4]
    Sleep    2s
    Capture Page Screenshot    EMBED

Klik Button Update Order
    Wait Until Element Is Visible    (//button[@id='edit-approval-order'])[1]
    Click Element    (//button[@id='edit-approval-order'])[1]
    Sleep    2s
    Capture Element Screenshot    //div[@role='status']    EMBED
    Sleep    2s
