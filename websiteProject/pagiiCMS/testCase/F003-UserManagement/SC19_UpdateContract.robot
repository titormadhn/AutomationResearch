*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC19_UpdateContract.resource

*** Test Cases ***
TC16 Update seluruh field
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
    Klik Detail dengan ikon kaca pembesar di salah satu User
    Klik dropdwon History
    Klik Menu Contract
    Klik ikon pensil untuk update/edit contract
    Klik field Employment Type & Update Employment Type
    Klik field main salary & update main salary
    Klik field start date & update start date
    Klik field end date & update end date
    klik field reminder & update reminder
    klik field external document & update external document
    Klik Button Update Contract
    Klik Button Yes
