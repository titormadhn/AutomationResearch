*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC09_PaginationSorting.resource
Test Setup    Buka menu User Management

*** Test Cases ***
TC01 Pagination berdasarkan jump to page
    Pilih dropdown Jump to Page

TC03 Pagination berdasarkan rows per page
    Pilih Rows per Page

TC05 Pagination berdasarkan next page
    Klik button Next Page dengan logo panah

TC11 Sorting Ascending Job Title
    Klik text Job Title pada table Employee list pada User Management menu

TC14 Sorting Descending Email    
    Klik text Email pada table Employee list pada User Management menu

*** Keywords ***
Buka menu User Management
    Masuk url staging
    Login HR dengan valid data
    Klik menu User Management
