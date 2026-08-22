** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC08_DeleteUser.resource

*** Test Cases ***
TC01 Delete data karyawan ketika approval type adalah None
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
    Cari data karyawan dengan approval type adalah None
    Hapus data karyawan
