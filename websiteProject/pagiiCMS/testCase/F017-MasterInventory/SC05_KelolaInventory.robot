*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F017-MasterInventory/SD_SC05_KelolaInventory.resource
Test Setup    Masuk halaman Master Inventory

*** Test Cases ***
Create Data dengan Inventory Category
    Klik button "+"
    Input Inventory Number 
    Input Inventory Name
    Pilih Inventory Category
    Pilih status 
    Input description 
    Klik button create inventory

Update Inventory dengan status Available dan tidak terdapat request
    Klik button edit/update
    Input Inventory Number yang baru
    Klik button update inventory

Update Inventory dengan status Unavailable dan tidak terdapat request
    Klik Checklist box filter
    Pilih Create date "sesuaikan tanggal"
    Pilih status 'Unavailable'
    Klik button 'Apply'
    Pilih salah satu nama Inventory 

*** Keywords ***
Masuk halaman Master Inventory
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu Master Inventory

