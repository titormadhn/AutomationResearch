*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource   ../../stepDefinition/F009-Permit/SD_SC06_Detail_Permit_Sick.resource
Resource    ../../stepDefinition/F009-Permit/SD_SC11_RejectedPermit.resource

*** Test Cases ***
TC01 Rejected dengan notes
    Masuk url staging
    Login HR dengan valid data
    Klik menu Permit
    Input search field
    Klik action "Rejected"
    Input Notes
    Klik button "Reject"