*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC04_Reset.resource

*** Test Cases ***
Buka menu User Management
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management

Reset Filter
    Pilih Approval Type
    Pilih Employment Status
    Klik button Reset
