*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC06_CreateUser.resource
Test Setup    Buka menu User Management

*** Test Cases ***
TC01 Create User seluruh field
    Klik button Create User
    Input Full Name
    Input NIK
    Pilih Date of Birth
    Input Email
    Input Phone Number
    Input Address
    Pilih File Photo
    Pilih Division
    Pilih Job Title
    Pilih Supervisor
    Pilih Approval Type
    Klik button Create

TC02 Create user dengan mengisi mandatory field saja
    Klik button Create User
    Input Full Name
    Input NIK
    Pilih Date of Birth
    Input Email
    Input Phone Number
    Pilih Division
    Pilih Job Title
    Klik button Create

TC19 Create user dengan mengosongkan field Address
    Klik button Create User
    Input Full Name
    Input NIK
    Pilih Date of Birth
    Input Email
    Input Phone Number
    Pilih File Photo
    Pilih Division
    Pilih Job Title
    Pilih Supervisor
    Pilih Approval Type
    Klik button Create

TC20 Create user dengan tidak mengupload Photo
    Klik button Create User
    Input Full Name
    Input NIK
    Pilih Date of Birth
    Input Email
    Input Phone Number
    Input Address
    Pilih Division
    Pilih Job Title
    Pilih Supervisor
    Pilih Approval Type
    Klik button Create

TC24 Create user dengan mengosongkan field Supervisor
    Klik button Create User
    Input Full Name
    Input NIK
    Pilih Date of Birth
    Input Email
    Input Phone Number
    Input Address
    Pilih File Photo
    Pilih Division
    Pilih Job Title
    Pilih Approval Type
    Klik button Create

TC26 Create user dengan mengosongkan field Approval Type
    Klik button Create User
    Input Full Name
    Input NIK
    Pilih Date of Birth
    Input Email
    Input Phone Number
    Input Address
    Pilih File Photo
    Pilih Division
    Pilih Job Title
    Pilih Supervisor
    Klik button Create

*** Keywords ***
Buka menu User Management
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management