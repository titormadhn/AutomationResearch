*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F021-DivisionManagement/SD_SC03_KelolaDivision.resource
Test Setup    Masuk halaman Division Management

*** Test Cases ***
Create Division dengan input seluruh field
    Klik icon "+" pada sebelah kanan halaman untuk create Divison
    Input Divison Name field
    Input Description
    Klik button Create Division

Update Division seluruh field
    Klik icon Pensil untuk update Division di salah satu Divison
    Update Field Divison Name
    Update Field Description
    Klik button Update Divison

Delete division
    Klik icon Sampah untuk Delete Division di salah satu Divison
    Klik Yes pada pop up confirmation

*** Keywords ***
Masuk halaman Division Management
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu Divison Management
