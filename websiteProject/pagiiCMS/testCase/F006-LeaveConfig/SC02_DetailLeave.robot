*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource   ../../stepDefinition/F006-LeaveConfig/SD_SC02_DetailLeave.resource

*** Test Cases ***
TC01 Detail leave sesuai
    Masuk url staging
    Login HR dengan valid data
    Klik menu Leave Config
    Lihat detail salah satu data di tabel Leave List