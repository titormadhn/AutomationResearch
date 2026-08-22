*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F006-LeaveConfig/SD_SC03_KelolaLeave.resource
Test Setup    Masuk menu leave config

*** Test Cases ***
Create leave dengan mengisi semua field
    Klik simbol "+" di ujung kanan atas halaman
    Isi seluruh data

Update leave semua field
    Klik simbol pensil pada kolom action
    Update Seluruh Data

Delete data leave
    Klik icon sampah pada kolom action

*** Keywords ***
Masuk menu leave config
    Masuk url staging
    Login HR dengan valid data
    Klik menu Leave Config