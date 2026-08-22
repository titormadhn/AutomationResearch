*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F006-LeaveConfig/SD_SC07_KelolaMasterHoliday.resource
Task Setup    Masuk menu leave config

*** Test Cases ***
Create master holiday dengan status memotong cuti tahunan
    Klik icon "+" pada sebelah kanan Halaman
    Input field Nama Leave
    Pilih dropdown Status
    Input Start Date
    Input End Date
    Klik button save

Update master holiday semua field
    Klik simbol pensil untuk update data
    Update field Nama Leave
    Update dropdown Status
    Update Start Date
    Update End Date
    Klik button save

Delete master holiday
    Klik delete dengan simbol sampah

*** Keywords ***
Masuk menu leave config
    Masuk url staging
    Login HR dengan valid data
    Klik menu Leave Config
    Klik icon kaca pembesar pada salah satu data leave List
