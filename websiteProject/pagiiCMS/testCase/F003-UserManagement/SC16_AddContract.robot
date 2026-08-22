*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC16_AddContract.resource
Test Setup    Buka menu User Management
Library    DateTime

*** Variables ***
${contract}    //*[@id="menu-employment_type"]/div[3]/ul/li[1]

*** Test Cases ***
TC04 Add Contract dengan Start Date dimulai sesudah tanggal hari ini    #PR buat jadi dinamis data
    Klik button Add Contract
    Select Employment Type
    Input field main salary
    Pilih Next Day
    Pilih End Date
    Input field Reminder
    Input field External Document
    Click button Add Contract

Add Contract with condition
    [Template]    Add Contract dengan mengisi seluruh field    #Covered for #TC11
    ${contract}    4000000    5    https://docs.google.com/document    #TC01
    ${contract}    2000000    5    https://docs.google.com/document    #TC10
    ${contract}    0    5    https://docs.google.com/document    #TC07
    ${contract}    1.000.000.000.000.000.000.000    5    https://docs.google.com/document    #TC09
    ${contract}    4000000    0    https://docs.google.com/document    #TC12

*** Keywords ***
Buka menu User Management
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
    Klik Detail dengan ikon kaca pembesar di salah satu User

Add Contract dengan mengisi seluruh field
    [Arguments]    ${employmentType}    ${mainSalary}    ${reminder}    ${externalDocument}
    Klik button Add Contract
    Pilih dropdown Employment Type ${employmentType}
    Input main salary ${mainSalary}
    Pilih Start Date
    Pilih End Date
    Input Reminder ${reminder}
    Input External Document ${externalDocument}
    Click button Add Contract