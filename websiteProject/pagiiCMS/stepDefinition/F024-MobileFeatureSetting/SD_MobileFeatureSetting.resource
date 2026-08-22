*** Settings **
Library    SeleniumLibrary

*** Keywords ***
#SC01-UpdateEmployeeFacilitiesSetting
Klik Switch Button menjadi ON dengan bacaan Activate office inventory
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[1]/div[1]/div/div/label/span[1]/span[1]    
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[1]/div[1]/div/div/label/span[1]/span[1]
    Sleep    2s

Klik button Update Setting
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[3]/div[2]/div[2]/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[3]/div[2]/div[2]/button
    Sleep    4s
    Capture Page Screenshot    EMBED

#SC04-CekHintEmployeeFacilitiesSetting
Klik icon tanda tanya dengan tulisan Activate office inventory
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[1]/div[1]/div/div/label/span[2]/div/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[1]/div[1]/div/div/label/span[2]/div/button
    Sleep    2s
    Capture Page Screenshot    EMBED

