*** Settings ***
Resource    ../../stepDefinition/F002-Dashboard/SD_SC03_User_melakukan_cek_kelengkapan_atribut_pada_sidebar.resource

*** Test Cases ***
TC01 User dapat melihat foto profil company
    Akses halaman
    Login dengan menggunakan kredensial HR
    Lihat foto profil company di bagian kiri atas sidebar
    
TC02 User dapat melihat nama company
    Lihat nama company di bagian kanan atas sidebar

TC03 User dapat melihat menu dashboard
    Cari menu dengan bacaan dashboad pada sidebar

TC04 User dapat melihat menu user management
    Cari menu dengan bacaan user management pada sidebar

TC05 User dapat melihat menu event management
    Cari menu dengan bacaan event management pada sidebar

TC06 User dapat melihat menu attendance history
    Cari menu dengan bacaan attendance history pada sidebar

TC07 User dapat melihat menu overtime history
    Cari menu dengan bacaan overtime history pada sidebar

TC08 User dapat melihat menu leave
    Cari menu dengan bacaan leave pada sidebar

TC09 User dapat melihat sub-menu leave config
    Cari side-menu dengan bacaan leave config pada sidebar

TC10 User dapat melihat sub-menu leave history   
    Cari side-menu dengan bacaan leave history pada sidebar

TC11 User dapat melihat sub-menu leave management
    Cari side-menu dengan bacaan leave management pada sidebar

TC12 User dapat melihat menu permit
    Cari menu dengan bacaan permit pada sidebar

TC13 User dapat melihat menu reimburse
    Cari menu dengan bacaan reimburse pada sidebar
    
TC14 User dapat melihat menu shift
    Cari menu dengan bacaan shift pada sidebar

TC15 User dapat melihat sub-menu shift management
    Cari side-menu dengan bacaan shift management pada sidebar

TC16 User dapat melihat sub-menu shift setting
    Cari side-menu dengan bacaan shift setting pada sidebar

TC17 User dapat melihat menu subscription
    Cari menu dengan bacaan subscription pada sidebar

TC18 User dapat melihat sub-menu invoice
    Cari side-menu dengan bacaan invoice pada sidebar

TC19 User dapat melihat sub-menu history
    Cari side-menu dengan bacaan history pada sidebar

TC20 User dapat melihat menu employee facilities
    Cari menu dengan bacaan employee facilities pada sidebar

TC21 User dapat melihat sub-menu cash advance
    Cari side-menu dengan bacaan cash advance pada sidebar

TC22 User dapat melihat sub-menu office inventory
    Cari side-menu dengan bacaan office inventory pada sidebar

TC23 User dapat melihat sub-menu master inventory
    Cari side-menu dengan bacaan master inventory pada sidebar

TC24 User dapat melihat menu export activity
    Cari menu dengan bacaan export activity pada sidebar

TC25 User dapat melihat menu general setting
    Cari menu dengan bacaan general setting pada sidebar

TC26 User dapat melihat sub-menu announcements
    Cari side-menu dengan bacaan announcements pada sidebar

TC27 User dapat melihat sub-menu company setting
    Cari side-menu dengan bacaan company setting pada sidebar

TC28 User dapat melihat sub sub-menu job settings
    Cari side side-menu dengan bacaan job settings pada sidebar

TC29 User dapat melihat sub sub-menu division management
    Cari side side-menu dengan bacaan division management pada sidebar

TC30 User dapat melihat sub sub-menu working time
    Cari side side-menu dengan bacaan working time pada sidebar

TC31 User dapat melihat sub sub-menu leader settings
    Cari side side-menu dengan bacaan leader settings pada sidebar

TC32 User dapat melihat sub sub-menu mobile feature setting
    Cari side side-menu dengan bacaan mobile feature setting pada sidebar

TC33 User dapat melihat sub sub-menu approval order setting
    Cari side side-menu dengan bacaan approval order setting pada sidebar

TC34 User dapat melihat sub-menu company profile
    Cari side-menu dengan bacaan company profile pada sidebar

TC35 User dapat melihat sub-menu generate qr
    Cari side-menu dengan bacaan generate qr pada sidebar