*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F010-Reimburse/SD_SC06_DetailRemburse.resource

*** Test Cases ***
TC02 Update data semua field
    Masuk url staging
    Login HR dengan valid data
    Klik menu Reimburse
    Klik action "Detail"
    Enter field Notes
    Pilih status
    Upload HR Attachment
    Klik button update