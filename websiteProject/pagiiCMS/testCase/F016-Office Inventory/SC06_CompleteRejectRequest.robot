*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F016-Office Inventory/SD_SC06_CompleteRejectRequest.resource
Test Setup    Masuk halaman Office Inventory

*** Test Cases ***
Complete request dengan mengisi seluruh field
    Klik button complete pada kolom action untuk user dengan status On Going
    Input Completed Date
    Input field Condition
    Input Photo of Condition
    Klik Button Submit

Reject request dengan reason
    Klik button reject pada kolom action untuk user dengan status Request
    Input field Reason
    Klik Button Yes

Reject request pada Detail Request
    Klik button Detail pada kolom action untuk user dengan status Rejected
    Klik dropdown status

*** Keywords ***
Masuk halaman Office Inventory
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu Office Inventory
