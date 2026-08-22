*** Settings ***
Resource    ../../stepDefinition/F001-Register_Login/SD_user_akses_register_melalui_berbagai_metode.resource
*** Test Cases ***
HR melakukan registrasi user baru via CMS Pagii
    Buka Website Pagii CMS
    Login dengan menggunakan kredensial HR
    Klik menu "User Management"
    Klik simbol "+" di ujung kanan atas "Employee List"
    Isi field Full Name
    Isi field NIK / Employee ID
    Isi field Date of Birth
    Isi field Email Address
    Isi field Phone Number
    Isi field Address
    Isi field Photo
    Isi field Division
    Isi field Job Title
    Isi field Role
    Isi field Supervisor
    Isi field Approval Type
    Klik "Create User"