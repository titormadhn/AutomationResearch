*** Settings ***
Resource    ../../stepDefinition/F002-Dashboard/SD_SC02_User_melakukan_cek_fungsionalitas_atribut_pada_dashboard.resource

*** Test Cases ***
TC01 User dapat menekan button notifikasi pada header di halaman dashboard
    Akses Halaman
    Login dengan menggunakan kredensial HR
    Tekan loceng notifikasi di bagian kanan header

TC05 User dapat menekan foto profil pada header di halaman dashboard
    Tekan foto profil di bagian kanan header

TC06 User dapat memilih menu your profile dan akan membuka update user
     Klik menu "Your Profile"

TC07 User dapat memilih menu logout dan akan kembali ke halaman login
    Klik menu "Logout"

TC08 User dapat menyembunyikan dan memunculkan sidebar
    Akses Halaman
    Login dengan menggunakan kredensial HR
    Klik lambang "<" pada sidebar
