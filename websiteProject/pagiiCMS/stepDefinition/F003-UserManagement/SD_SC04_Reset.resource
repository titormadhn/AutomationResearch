*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource

*** Keywords ***
Pilih Approval Type
    Wait Until Element Is Visible    ${approval_type_list}
    Click Element    ${approval_type_list}
    Wait Until Element Is Visible    //*[@id="menu-approval_type"]/div[3]/ul/li[4]
    Click Element    //*[@id="menu-approval_type"]/div[3]/ul/li[4]
    Sleep    2s

Pilih Employment Status
    Wait Until Element Is Visible    //*[@id="mui-component-select-employment_status"]
    Click Element    //*[@id="mui-component-select-employment_status"]
    Wait Until Element Is Visible    //*[@id="menu-employment_status"]/div[3]/ul/li[4]
    Click Element    //*[@id="menu-employment_status"]/div[3]/ul/li[4]
    Wait Until Page Contains    Expired Soon
    Sleep    4s
    Capture Page Screenshot    EMBED

Klik button Reset
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[1]/div[4]/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[1]/div[4]/button
    Wait Until Page Contains    Active
    Sleep    4s
    Capture Page Screenshot    EMBED
