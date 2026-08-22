*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F024-MobileFeatureSetting/SD_MobileFeatureSetting.resource
Test Setup    Masuk ke Mobile Feature Setting

*** Test Cases ***
#SC01-UpdateEmployeeFacilitiesSetting
Update turn on Active office inventory
    Klik Switch Button menjadi ON dengan bacaan Activate office inventory
    Klik button Update Setting

#SC04-CekHintEmployeeFacilitiesSetting
Cek hint Active office inventory
    Klik icon tanda tanya dengan tulisan Activate office inventory

*** Keywords ***
Masuk ke Mobile Feature Setting
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu Mobile Feature Setting
