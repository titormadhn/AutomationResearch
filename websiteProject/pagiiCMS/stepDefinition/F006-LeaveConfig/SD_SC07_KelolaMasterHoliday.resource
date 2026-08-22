*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
#Test Setup
Klik icon kaca pembesar pada salah satu data leave List
    Wait Until Element Is Visible    (//button[@type='button'])[8]
    Click Element    (//button[@type='button'])[8]
    Wait Until Page Contains    Master Holiday
    Sleep    2s

#Create Master Holiday
Klik icon "+" pada sebelah kanan Halaman
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[1]/div[2]/div/div/button
    Click Element    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div/div[1]/div[2]/div/div/button
    Wait Until Page Contains    Create Master Holiday
    Sleep    2s

Input field Nama Leave
    Wait Until Element Is Visible    (//input[@placeholder='Public Holiday'])[1]
    Click Element    (//input[@placeholder='Public Holiday'])[1]
    Input Text    (//input[@placeholder='Public Holiday'])[1]    Libur Lebaran
    Sleep    2s

Pilih dropdown Status
    Wait Until Element Is Visible    (//div[@id='mui-component-select-is_leave'])[1]
    Click Element    (//div[@id='mui-component-select-is_leave'])[1]
    Wait Until Element Is Visible    (//li[normalize-space()='Memotong Cuti Tahunan'])[1]
    Click Element    (//li[normalize-space()='Memotong Cuti Tahunan'])[1]
    Sleep    2s

Input Start Date
    Wait Until Element Is Visible    (//input[@placeholder='dd-mm-yyyy'])[1]
    Sleep    2s
    Click Element    (//input[@placeholder='dd-mm-yyyy'])[1]
    Wait Until Element Is Visible    (//button[@type='button'])[27]
    Click Element    (//button[@type='button'])[27]
    Click Element    //span[normalize-space()='OK']
    Sleep    2s

Input End Date
    Wait Until Element Is Visible    (//input[@placeholder='dd-mm-yyyy'])[2]
    Sleep    2s
    Click Element    (//input[@placeholder='dd-mm-yyyy'])[2]
    Wait Until Element Is Visible    (//button[@type='button'])[34]
    Click Element    (//button[@type='button'])[34]
    Click Element    //span[normalize-space()='OK']
    Sleep    2s

#Update Master Holiday
Klik simbol pensil untuk update data
    Wait Until Element Is Visible    //button[@title='EDIT']
    Click Element    //button[@title='EDIT']
    Wait Until Page Contains    Update Master Holiday
    Sleep    1s

Update field Nama Leave
    Wait Until Element Is Visible    (//input[@placeholder='Public Holiday'])[1]
    Click Element    (//input[@placeholder='Public Holiday'])[1]
    Press Keys    (//input[@placeholder='Public Holiday'])[1]    CTRL+A    BACKSPACE
    Input Text    (//input[@placeholder='Public Holiday'])[1]    Cuti Bersama Tahun Baru
    Sleep    2s

Update dropdown Status
    Wait Until Element Is Visible    (//div[@id='mui-component-select-is_leave'])[1]
    Click Element    (//div[@id='mui-component-select-is_leave'])[1]
    Wait Until Element Is Visible    (//li[normalize-space()='Memotong Cuti Tahunan'])[1]
    Click Element    (//li[normalize-space()='Memotong Cuti Tahunan'])[1]
    Sleep    2s

Update Start Date
    Wait Until Element Is Visible    (//input[@value='03-01-2028'])[1]
    Click Element    (//input[@value='03-01-2028'])[1]
    Wait Until Element Is Visible    (//button[@type='button'])[28]
    Click Element    (//button[@type='button'])[28]
    Click Element    //span[normalize-space()='OK']
    Sleep    2s

Update End Date
    Wait Until Element Is Visible    (//input[@value='04-01-2028'])[1]
    Click Element    (//input[@value='04-01-2028'])[1]
    Wait Until Element Is Visible    (//button[@type='button'])[29]
    Click Element    (//button[@type='button'])[29]
    Click Element    //span[normalize-space()='OK']
    Capture Page Screenshot    EMBED
    Sleep    2s

#Delete Master Holiday
Klik delete dengan simbol sampah
    Wait Until Element Is Visible    (//button[@title='DELETE'])[1]
    Click Element    (//button[@title='DELETE'])[1]
    Wait Until Element Is Visible    (//button[normalize-space()='Yes'])[1]
    Click Element    (//button[normalize-space()='Yes'])[1]
    Sleep    4s
    Capture Page Screenshot    EMBED

#Submit Data
Klik button save
    Wait Until Element Is Visible    (//button[@type='submit'])[1]
    Click Element    (//button[@type='submit'])[1]
    Wait Until Page Contains    Name Holiday
    Sleep    2s
    Capture Page Screenshot    EMBED
