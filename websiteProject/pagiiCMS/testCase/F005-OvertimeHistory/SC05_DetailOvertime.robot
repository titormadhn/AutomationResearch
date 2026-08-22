*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F005-OvertimeHistory/SD_SC05_DetailOvertime.resource

*** Test Cases ***
TC01 Detail berdasarkan status waiting sesuai
    Masuk url staging
    Login HR dengan valid data
    Klik menu Overtime History
    Pilih satu nama dan klik button loop detail