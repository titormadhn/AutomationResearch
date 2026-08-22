*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F005-OvertimeHistory/SD_SC08_UpdateOvertime.resource

*** Test Cases ***
Update required field
    Masuk url staging
    Login HR dengan valid data
    Klik menu Overtime History
    Pilih salah satu data di tabel yang akan di Update
    Klik action detail
    Input required field (checkout, status)
    Klik button update
