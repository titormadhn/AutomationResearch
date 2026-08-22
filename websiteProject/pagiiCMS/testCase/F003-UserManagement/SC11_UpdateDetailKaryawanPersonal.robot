*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC10_DetailKaryawan.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC11_UpdateDetailKaryawanPersonal.resource

*** Test Cases ***
TC35 Update dengan seluruh field di lakukan update
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
    Pilih dan klik detail salah satu data Employee List
    Update field personal data
    Klik button Save Update dan konfirmasi update yang dilakukan