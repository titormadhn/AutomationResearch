*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F008-LeaveManagement/SD_SC05_DetailLeave.resource

*** Test Cases ***
TC05 Update Seluruh Field
    Masuk url staging
    Login HR dengan valid data
    Klik menu Leave Management
    Pilih Search by Leave date dengan status All
    Pilih satu user dengan klik button detail
    Edit seluruh field pada form Leave Details
    Klik button Update apabila telah selesai
