*** Settings ***
Resource    ../../stepDefinition/F002-Dashboard/SD_SC04_User_melakukan_cek_fungsionalitas_atribut_pada_sidebar.resource

*** Test Cases ***
TC01 User masuk ke dalam menu user management
    Akses Halaman
    Login dengan menggunakan kredensial HR
    Klik menu dengan bacaan user management pada sidebar

TC02 User masuk ke dalam menu event management
    Klik menu dengan bacaan event management pada sidebar

TC03 User masuk ke dalam menu attendance history
    Klik menu dengan bacaan attendance history pada sidebar

TC04 User masuk ke dalam menu overtime history
    Klik menu dengan bacaan overtime history pada sidebar
    
TC05 User masuk ke dalam sub-menu leave config
    Klik menu dengan bacaan overtime history pada sidebar

TC06 User masuk ke dalam sub-menu leave history
    Klik side-menu dengan bacaan leave config pada sidebar

TC07 User masuk ke dalam sub-menu leave management
    Klik side-menu dengan bacaan leave history pada sidebar

TC08 User masuk ke dalam menu permit
    Klik menu dengan bacaan permit pada sidebar
    
TC09 User masuk ke dalam menu reimburse
    Klik menu dengan bacaan reimburse pada sidebar

TC10 User masuk ke dalam sub-menu shift management
    Klik side-menu dengan bacaan shift management pada sidebar

TC11 User masuk ke dalam sub-menu shift setting
    Klik side-menu dengan bacaan shift setting pada sidebar

TC12 User masuk ke dalam sub-menu invoice
    Klik side-menu dengan bacaan invoice pada sidebar

TC13 User masuk ke dalam sub-menu history
    Klik side-menu dengan bacaan history dan old invoice pada sidebar

TC14 User masuk ke dalam sub-menu cash advance
    Klik side-menu dengan bacaan cash advance pada sidebar

TC15 User masuk ke dalam sub-menu office inventory
    Klik side-menu dengan bacaan office inventory pada sidebar

TC16 User masuk ke dalam sub-menu master inventory
    Klik side-menu dengan bacaan master inventory pada sidebar

TC17 User masuk ke dalam menu export activity
    Klik menu dengan bacaan export activity pada sidebar

TC18 User masuk ke dalam sub-menu announcements
    Klik side-menu dengan bacaan announcements pada sidebar

TC19 User masuk ke dalam sub sub-menu job settings
    Klik side side-menu dengan bacaan job settings pada sidebar

TC20 User masuk ke dalam sub sub-menu division management
    Klik side side-menu dengan bacaan division management pada sidebar

TC21 User masuk ke dalam sub sub-menu working time
    Klik side side-menu dengan bacaan working time pada sidebar

TC22 User masuk ke dalam sub sub-menu leaderboard settings
    Klik side side-menu dengan bacaan leader settings pada sidebar

TC23 User masuk ke dalam sub sub-menu mobile feature setting
    Klik side side-menu dengan bacaan mobile feature setting pada sidebar

TC24 User masuk ke dalam sub sub-menu approval order setting
    Klik side side-menu dengan bacaan approval order setting pada sidebar

TC25 User masuk ke dalam sub-menu company profile
    Klik side-menu dengan bacaan company profile pada sidebar

TC26 User masuk ke dalam sub-menu generate qr
    Klik side-menu dengan bacaan generate qr pada sidebar
