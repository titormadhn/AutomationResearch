*** Settings ***
Resource    ../../stepDefinition/F002-Dashboard/SD_SC01_User_melakukan_cek_kelengkapan_atribut_pada_dashboard.resource

*** Test Cases ***
User dapat melihat header pada halaman dashboard
    #01
    Akses Halaman
    Login dengan Kredensial HR
    Lihat Tampilan pada Bagian Atas Halaman

User dapat melihat sidebar pada halaman dashboard
    #02
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada bagian kiri halaman

User dapat melihat jumlah total pegawai aktif
    #03
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada body halaman dengan tulisan "Total Active Employee"

User dapat melihat header pada dashboard attendance record hari ini
    #04
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada body halaman dengan tulisan "Today"

User dapat melihat header pada dashboard attendance record kemarin
    #05
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada body halaman dengan tulisan "Yesterday"

User dapat melihat header pada dashboard attendance record minggu lalu
    #06
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada body halaman dengan tulisan "Last Week"

User dapat melihat header pada dashboard attendance record bulan lalu
    #07
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada body halaman dengan tulisan "Last Month"

User dapat melihat header pada dashboard business trip record hari ini
    #08
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada body trip record dengan tulisan "Today"

User dapat melihat header pada dashboard business trip record kemarin
    #09
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada body trip record dengan tulisan "Yesterday"

User dapat melihat header pada dashboard business trip record minggu lalu
    #10
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada body trip record dengan tulisan "Last Week"

User dapat melihat header pada dashboard business trip record bulan lalu
    #11
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat tampilan pada body trip record dengan tulisan "Last Month"

User dapat melihat tulisan copyright PT Smooets Teknologi Outsourcing pada halaman dashboard
    #12
    # Akses Halaman
    # Login dengan Kredensial HR
    Lihat ke bagian paling bawah dari halaman
