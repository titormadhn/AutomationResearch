*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource

*** Keywords ***
Pilih dropdown Jump to Page
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/table/tfoot/tr/td/div/div[1]/div/div
    Sleep    5s
    Scroll Element Into View    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/table/tfoot/tr/td/div/div[1]/div/div
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/table/tfoot/tr/td/div/div[1]/div/div
    Wait Until Element Is Visible    //*[@id="menu-"]/div[3]/ul/li[4]
    Click Element    //*[@id="menu-"]/div[3]/ul/li[4]
    Capture Element Screenshot    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/table/tfoot/tr/td/div/div[1]    EMBED
    Wait Until Page Contains    31
    Sleep    4s
    Capture Page Screenshot    EMBED

Pilih Rows per Page
    Wait Until Element Is Visible    //*[@id="pagination-rows"]
    Sleep    5s
    Scroll Element Into View    //*[@id="pagination-rows"]
    Click Element    //*[@id="pagination-rows"]
    Wait Until Element Is Visible    //*[@id="pagination-menu-list"]/li[3]
    Click Element    //*[@id="pagination-menu-list"]/li[3]
    Capture Element Screenshot    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/table/tfoot/tr/td/div/div[2]/div    EMBED
    Wait Until Element Is Visible    //*[@id="pagination-rows"]
    Sleep    5s
    Scroll Element Into View    //*[@id="pagination-rows"]
    Click Element    //*[@id="pagination-rows"]
    Wait Until Element Is Visible    //*[@id="pagination-menu-list"]/li[3]
    Click Element    //*[@id="pagination-menu-list"]/li[3]
    Scroll Element Into View    //*[@id="pagination-rows"]
    Capture Page Screenshot    EMBED

Klik button Next Page dengan logo panah
    Wait Until Element Is Visible    //*[@id="pagination-next"]/span[1]
    Sleep    5s
    Scroll Element Into View    //*[@id="pagination-next"]/span[1]
    Click Element    //*[@id="pagination-next"]/span[1]
    Capture Element Screenshot    //*[@id="pagination-next"]/span[1]    EMBED
    Wait Until Page Contains    11
    Sleep    4s
    Capture Page Screenshot    EMBED

Klik text Job Title pada table Employee list pada User Management menu
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[3]/table/thead/tr/th[7]/span/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[3]/table/thead/tr/th[7]/span/button
    Sleep    2s
    Capture Element Screenshot    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[3]/table/thead/tr/th[7]/span/button    EMBED
    Wait Until Page Contains    coba test
    Sleep    2s
    Capture Page Screenshot    EMBED

Klik text Email pada table Employee list pada User Management menu
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[3]/table/thead/tr/th[3]/span/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[3]/table/thead/tr/th[3]/span/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[3]/table/thead/tr/th[3]/span/button
    Sleep    2s
    Capture Element Screenshot    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div/div/div[3]/table/thead/tr/th[3]/span/button    EMBED
    Wait Until Page Contains    Manager
    Sleep    2s
    Capture Page Screenshot    EMBED

