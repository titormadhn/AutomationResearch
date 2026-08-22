*** Settings ***
Resource    ../../stepDefinition/F003-UserManagement/SD_SC01_Search.resource
*** Test Cases ***
TC02 Search keyword berdasarkan Nama
    Akses Halaman
    Login dengan menggunakan kredensial HR
    Klik menu User Management
    Input keyword Name pada search bar

TC10 Search keyword berdasarkan Email
    Input keyword Email pada search bar

TC15 Search keyword berdasarkan Phone
    Input keyword Phone pada search bar

TC19 Search keyword berdasarkan Role
    Input keyword Role pada search bar

TC23 Search keyword berdasarkan Division
    Input keyword Division pada search bar

TC27 Search keyword berdasarkan Job Title
    Input keyword Job Title pada search bar

    
