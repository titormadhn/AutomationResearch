*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC18_DetailContract.resource

*** Test Cases ***
TC01 Detail contract sesuai
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
    Klik Detail dengan ikon kaca pembesar di salah satu User
    Klik dropdwon History
    Klik Menu Contract
