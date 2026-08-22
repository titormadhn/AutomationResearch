*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F005-OvertimeHistory/SD_SC06_ApprovedOvertime.resource

*** Test Cases ***
TC02 Approved dan mengisi note
    Masuk url staging
    Login HR dengan valid data
    Klik menu Overtime History
    Pilih salah satu nama yang akan di approve
    Klik action approve
    Input field note pada form overtime approve
    Klik button approve