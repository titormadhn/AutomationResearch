*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC20_DeleteContract.resource

*** Test Cases ***
TC01 Delete data contract non-active
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
    Klik Detail dengan ikon kaca pembesar di salah satu User
    Klik dropdwon History
    Klik Menu Contract
    Klik button Delete dengan ikon tempat sampah
