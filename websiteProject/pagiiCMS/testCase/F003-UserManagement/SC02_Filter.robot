*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC02_Filter.resource

*** Test Cases ***
Buka menu User Management
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management

Filter Approval Type dan Employee Status
    [Template]    Search berdasarkan Keyword dengan Filter Approval Type dan Employee Status
    All    All
    All    Inactive
    All    Expired Soon
    None    All
    None    Inactive
    None   Expired Soon
    Master    All
    Master    Active
    Master    Inactive
    Master    Expired Soon
    Approval    All
    Approval    Active
    Approval    Inactive
    Approval    Expired Soon

*** Keywords ***
Search berdasarkan Keyword dengan Filter Approval Type dan Employee Status
    [Arguments]    ${approval_type}    ${employment_status}
    Log    Filter Approval Type ${approval_type} dan Employee Status ${employment_status}
    Pilih Approval Type "${approval_type}"
    Pilih Employment Status "${employment_status}"
    Berhasil Filter "${approval_type}" "${employment_status}"