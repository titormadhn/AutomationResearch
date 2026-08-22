*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F025-ApprovalOrderSetting/SD_SC03_EditApprovalOrder.resource

*** Test Cases ***
TC01 Menambahkan User Pada Order List Overtime
    Masuk url staging
    Login HR dengan valid data
    Klik sub-submenu Approval Order Setting
    Klik Button edit dengan icon pensil pada kolom actions pada salah satu Division
    Klik dropdown Overtime
    Tambahkan user pada Order List Overtime
    Klik Button Update Order
