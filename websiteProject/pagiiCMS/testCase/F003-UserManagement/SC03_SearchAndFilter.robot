*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC03_SearchAndFilter.resource

*** Test Cases ***
# Search dan Filter
Buka menu User Management
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management

Search berdasarkan Keyword dengan Filter Approval Type dan Employee Status
    [Template]    Search berdasarkan Keyword dengan Filter Approval Type dan Employee Status
    Nama    mela    All    All
    Nama    aa    All    Inactive
    Nama    mela    All    Expired Soon
    Nama    nur    None    All
    Nama    Nairaaa    None    Inactive
    Nama    user    None   Expired Soon
    Nama    dinda    Master    All
    Nama    mau    Master    Active
    Nama    mela    Master    Inactive
    Nama    mela    Master    Expired Soon
    Nama    baru    Approval    All
    Nama    Rushel    Approval    Active
    Nama    melamela    Approval    Inactive
    Nama    Nisa    Approval    Expired Soon

*** Keywords ***
Search berdasarkan Keyword dengan Filter Approval Type dan Employee Status
    [Arguments]    ${keyword_type}    ${keyword_value}    ${approval_type}    ${employment_status}
    Log    Search berdasarkan ${keyword_type} dengan Filter Approval Type ${approval_type} dan Employee Status ${employment_status}
    Input keyword pada search bar "${keyword_value}"
    Pilih Approval Type "${approval_type}"
    Pilih Employment Status "${employment_status}"
    Berhasil Search dan Filter "${keyword_value}" "${approval_type}" "${employment_status}"
