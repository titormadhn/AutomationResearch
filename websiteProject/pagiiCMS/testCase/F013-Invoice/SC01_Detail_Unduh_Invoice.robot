*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F013-Invoice/SD_SC01_Detail_Unduh_Invoice.resource
Test Setup    Masuk Submenu Invoice

*** Test Cases ***
Unduh dan view Detail invoice sesuai
    Klik button Action untuk mengunduh Invoice
    Buka Invoice yang baru saja diunduh
    Bandingkan isi dari konten yang diunduh dengan yang ada pada CMS

*** Keywords ***
Masuk Submenu Invoice
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu invoice
