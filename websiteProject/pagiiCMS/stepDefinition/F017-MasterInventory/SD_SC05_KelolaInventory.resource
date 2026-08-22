*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../utility/globalVariable.resource
Resource    ../../utility/globalKeyword.resource

*** Variables ***
#TestData
@{NUMBER}    011    031    021    041    051    061    071    081
@{INVENTORY}    Gadget    Office Tools    Transportation    Sport Tools
${name_inventory}    hilmi
${description}    Lorem ipsum description in Available no more to run extraction

*** Keywords ***
#Randomize Section
Generate Random Integer
    [Arguments]    ${min}    ${max}
    ${result}=    Evaluate    random.randint(${min}, ${max})    modules=random
    RETURN    ${result}
Ambil Nomor Acak
    ${length}=    Get Length    ${NUMBER}
    ${last_index}=    Evaluate    ${length} - 1
    ${index}=     Generate Random Integer    0    ${last_index}
    ${name}=      Get From List    ${NUMBER}    ${index}
    RETURN      ${name}

#Create data dengan inventory category
Klik button "+"
    Click Element    (//button[@type='button'])[6]
    Sleep    3s

Input Inventory Number 
    ${random_number}=    Ambil Nomor Acak
    Input Text    //input[@name='inventory_no']    ${random_number}
    Log    Number yang dipilih secara acak: ${random_number}
    Wait Until Element Is Visible    //label[text()='Inventory Name *']

Input Inventory Name
    Input Text    //input[@name='inventory_name']    ${name_inventory}
    Wait Until Element Is Visible    //label[text()='Inventory Name *']

Pilih Inventory Category
    Click Element    //input[@id='controllable-states-demo']
    ${random_item}=    Evaluate    random.choice(${INVENTORY})    modules=random
    Click Element    id=controllable-states-demo
    Input Text    id=controllable-states-demo    ${random_item}
    Sleep    1s
    Click Element    xpath=//li[contains(text(), '${random_item}')]
    Wait Until Element Is Visible    //input[@id='controllable-states-demo']

Pilih status 
    Click Element    (//input[@name='status'])[1]
    Wait Until Element Is Visible    (//label[@data-shrink='true'])[5]

Input description
    Input Text    //textarea[@placeholder='Enter description']    ${description}
    Wait Until Element Is Visible    //label[text()='Inventory Name *']

Klik button create inventory
    Click Element    (//span[@class='MuiButton-label'])[4]
    Sleep    3s
    Capture Page Screenshot    embed

#Update Inventory - Status Available
Klik button edit/update
    Wait Until Element Is Visible    //h6[text()='Inventory List']
    Click Element    (//button[@id='btn_edit_master'])[1]
    Wait Until Element Is Visible    //h2[text()='Update Inventory']
    Press Keys    //input[@name='inventory_no']    CTRL+a    BACKSPACE

# Input Inventory Number yang baru
#     Input Text    //input[@name='inventory_no']    033
#     Wait Until Element Is Visible    //label[text()='Inventory Name *']

Input Inventory Number yang baru    #Randomize Script
    ${random_number}=    Input Inventory Number
    Input Text    //input[@name='inventory_no']    ${random_number}
    Log    Number yang dipilih secara acak: ${random_number}
    Wait Until Element Is Visible    //label[text()='Inventory Name *']

#Update Inventory - Status Unavailable
Klik Checklist box filter
    Click Element    xpath=//*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[1]/div/div[1]/label/span[1]
    Wait Until Element Is Visible    //h6[text()='Inventory List']

Pilih Create date "sesuaikan tanggal"
    Click Button    (//button[@type='button'])[5]
    Wait Until Element Is Visible    //div[@class='MuiPickersSlideTransition-transitionContainer MuiPickersCalendar-transitionContainer']
    Sleep    3s
    Click Button    (//button[@type='button'])[67]
    Wait Until Element Is Visible    //label[text()='Status']

Pilih status 'Unavailable'
    Sleep    3s
    Click Element    (//div[@aria-haspopup='listbox'])[2]
    Wait Until Element Is Visible    //ul[@role='listbox']
    Click Element    //li[@data-value='unavailable']
    Sleep    3s
    Capture Element Screenshot    xpath=//*[@id="mui-component-select-status"]

Klik button 'Apply'
    Click Button    //button[@id='btn_apply_filter_master']
    Sleep    5s

Pilih salah satu nama Inventory
    Sleep    5s
    Wait Until Element Is Visible    (//button[@id='btn_edit_master'])[1]
    Click Element    (//button[@id='btn_edit_master'])[1]
    ${update}=    Input Inventory Number yang baru
    ${unavailable}=    Klik button update inventory

#Submit Update Inventory
Klik button update inventory
    Click Element    //button[@id="submit-btn-detail"]
    Sleep    3s
    Capture Page Screenshot    embed


