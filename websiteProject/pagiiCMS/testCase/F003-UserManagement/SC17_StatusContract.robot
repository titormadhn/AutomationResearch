*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC17_StatusContract.resource
Test Setup    Buka menu User Management

*** Test Cases ***
TC01 Active status contract
    Klik dropdwon History
    Klik Menu Contract
    Klik Switch Button pada kolom Status

*** Keywords ***
Buka menu User Management
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
    Klik Detail dengan ikon kaca pembesar di salah satu User
