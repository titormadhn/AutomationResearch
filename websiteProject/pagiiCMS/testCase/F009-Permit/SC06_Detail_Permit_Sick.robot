*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F009-Permit/SD_SC06_Detail_Permit_Sick.resource
Test Setup    Buka menu Permit dan search keyword

*** Test Cases ***
TC01 Detail permit sick sesuai dengan data yang di get
    Klik action "Detail"

TC02 Update detail permit sick semua field
    Klik action "Detail"
    Pilih start date
    Pilih end date 
    Input total date
    Input permit statement
    Pilih status
    Input notes
    Klik button update

*** Keywords ***
Buka menu Permit dan search keyword
    Masuk url staging
    Login HR dengan valid data
    Klik menu Permit
    Input search field