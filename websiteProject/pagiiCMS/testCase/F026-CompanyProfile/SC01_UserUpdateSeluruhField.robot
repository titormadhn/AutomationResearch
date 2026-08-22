*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource   ../../stepDefinition/F026-CompanyProfile/SD_SC01_UserUpdateSeluruhField.resource

*** Test Cases ***
TC01 User Update Seluruh Field
    Masuk url staging
    Login HR dengan valid data
    Klik Menu dengan bacaan General Setting
    Klik submenu Company Profile
    Update field Name
    Update field PIC Name
    Klik button Add More untuk menambahkan Address
    Input Name Branch
    Input field Address
    Input field Latitude
    Input Field Longitude
    Input field GPS Radius
    Update Logo
    Klik button Update Profile
