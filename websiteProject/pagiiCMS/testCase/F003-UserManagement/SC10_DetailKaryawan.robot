*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC10_DetailKaryawan.resource

*** Test Cases ***
TC01 Detail karyawan di General->Personal sesuai dengan data yang diambil
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
    Pilih dan klik detail salah satu data Employee List
    Klik "Personal" di "Menu General" Employee Detail

TC02 Detail karyawan di General->Employment sesuai dengan data yang diambil
    Klik "Employment" di "Menu General" Employee Detail

 TC03 Detail karyawan di History->Contract sesuai dengan data yang diambil
    Klik menu "History" Employee Detail
    Klik "Contract" di "Menu General" Employee Detail

