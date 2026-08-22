*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F020-JobSettings/Sd_SC01_KelolaJobTItle.resource
Test Setup    Masuk halaman Job Settings

*** Test Cases ***
Create job title dengan mengisi seluruh field
    Klik button ADD NEW
    Isi field Job Title
    Isi field Description
    Klik SUBMIT
Update dengan select/add job title ke active job titles
    Klik pada field Job Title
    Pilih satu atau lebih Active Job Title
    Klik UPDATE SETTING

Update dengan remove job title dari active job titles 
    Silang salah satu atau lebih Active Job Title
    Klik UPDATE SETTING


*** Keywords ***
Masuk halaman Job Settings
    Masuk url staging
    Login HR dengan valid data
    Klik Submenu Job Settings