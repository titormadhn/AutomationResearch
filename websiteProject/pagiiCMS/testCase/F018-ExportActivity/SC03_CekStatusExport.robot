*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F018-ExportActivity/SD_SC03_CekStatusExport.resource

*** Test Cases ***
Cek Status export saat Success
    Masuk url staging
    Login HR dengan valid data
    Klik Export Activity menu
    Cek apakah ada event yang memiliki status Success