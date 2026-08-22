*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F010-Reimburse/SD_SC06_DetailRemburse.resource
Resource    ../../stepDefinition/F010-Reimburse/SD_SC07_ApprovedReimburse.resource

*** Test Cases ***
TC01 Approve dengan Notes dan Attachment
    Masuk url staging
    Login HR dengan valid data
    Klik menu Reimburse
    Klik action Approved
    Input Notes
    Upload HR Attachment
    Klik button Approve