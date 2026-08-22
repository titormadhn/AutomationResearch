*** Settings ***
Resource    ../../stepDefinition/F002-Dashboard/SD_SC05_User_melakukan_update_pada_user_profile.resource

*** Test Cases ***
TC01 User mengupdate field full name
    Akses halaman
    Login dengan menggunakan kredensial HR
    Tekan foto profil di bagian kanan header
    Klik menu "Your Profile"
    Isi field "Full Name"

TC02 User mengupdate field nik / employee id
    Isi field "NIK / Employee ID"

TC03 User mengupdate field division
    Isi field "Division"

TC04 User mengupdate field job title
    Isi field "Job Title"

TC05 User mengupdate field supervisor
    Isi field "Supervisor"

TC07 User mengupdate field email address
    Isi field "Email Address" 

TC08 User mengupdate field address
    Isi field "Address"

TC09 User mengupdate field date of birth
    Isi field "Date of Birth"

TC10 User mengupdate field phone number dengan 8 - 13 digit angka
    Isi field "Phone Number"

TC11 User mengupdate field password
    Isi field "Password"

TC12 User mengupdate field photo
    Isi field "Photo"
    Klik "Update User"