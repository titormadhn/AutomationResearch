*** Settings ***
Resource    ../../stepDefinition/F003-UserManagement/SD_SC05_ExportAndImport.resource

*** Test Cases ***
TC03 User Mendownload template excel
    Akses Halaman
    Login dengan menggunakan kredensial HR
    Klik menu "User Management"
    Klik "Import" button
    Klik label text link "download Excel Template"

TC04 User import dengan seluruh data terisi
    Akses Halaman
    Login dengan menggunakan kredensial HR
    Klik menu "User Management"
    Klik "Import" button
    Upload dokumen yang akan di import 
    Klik "send Import" button

TC22 Export Data berdasarkan Employment Status
    Akses Halaman
    Login dengan menggunakan kredensial HR
    Klik menu "User Management"
    Pilih dropdown "Employment Status"
    Klik "Export" button

TC23 Klik guideline import user
    Akses Halaman
    Login dengan menggunakan kredensial HR
    Klik menu "User Management"
    Klik "Import" button
    Klik label text link "here" untuk melihat guideline pengisian tempalte sheet sebelum di import