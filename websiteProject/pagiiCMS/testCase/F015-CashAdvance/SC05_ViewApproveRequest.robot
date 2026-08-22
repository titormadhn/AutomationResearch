*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F015-CashAdvance/SD_SC05_ViewApproveRequest.resource
Test Setup    Masuk kedalam halaman Cash Advance
Test Teardown    Close Browser

*** Test Cases ***
Approve request dengan mengisi seluruh field
    User sebelumnya telah mengajukan cash lewat mobile
    HR melihat salah satu data user
    HR melakukan Approve yang telah terisi seluruh field pada mobile

Detail request dengan status Request sesuai
    Klik salah satu user pada detail

*** Keywords ***
Masuk kedalam halaman Cash Advance
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu cash advance
