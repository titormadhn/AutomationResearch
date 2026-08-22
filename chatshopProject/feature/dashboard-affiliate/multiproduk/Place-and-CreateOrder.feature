Feature: Place and Create Order

    Background: 
        Given User telah melihat list grup produk yang sudah terdapat multiproduk 
        And User telah Salin 'Tautan Berbagi Koleksi Grup Produk'
        And User telah membuka link tautan berbagi koleksi grup produk pada browser

    @positiveCase
    Scenario: 001 - User Akses halaman 'Informasi Pengiriman'
        Given User sudah berada di halaman detail koleksi grup produk
        When User click button '+' pada salah satu produk yang terdapat pada koleksi grup produk
        And User click button "checkout sekarang" pada sidebar yang muncul
        Then tampil halaman 'Informasi Pengiriman'
        And Tidak terdapat Opsi Delivery atau Pickup 
        And Produk dikelompokkan per merchant 
        And Nama Merchant dan Produk sesuai
        And Qty Produk Varian & Non Varian sesuai
        And Harga Produk Varian & Non Varian sesuai
        And Pilihan pengiriman "delivery" tersedia di masing-masing merchant

    @positiveCase
    Scenario: 002 - User kembali dari halaman 'Informasi Pengiriman'
        Given User sudah berada di halaman 'Informasi Pengiriman'
        When User click button "kembali"
        Then berhasil kembali ke halaman list produk pada detail koleksi grup produk

    @positiveCase
    Scenario: 003 - Checkout hanya produk Non Varian melalui List Produk dengan pengiriman Delivery Manual - Modal Checkout
        Given User telah melakukan pengaturan opsi pengiriman manual pada Pengaturan Pengiriman di halaman Dashboard Merchant
        And User sudah berada di halaman detail koleksi grup produk
        When User click button '+' pada salah satu produk non varian yang terdapat pada koleksi grup produk
        And User click button "checkout sekarang" pada sidebar yang muncul
        And tampil halaman 'Informasi Pengiriman'
        And User input field pada halaman 'Informasi Pengiriman' dengan data valid
        And User pilih salah satu expedisi pengiriman
        And User click button "buat pesanan"
        Then Berhasil ke halaman pembayaran
        And Saat check di CMS, data masuk ke Penjualan Retail dengan status order "Baru"

    Scenario: 004 - Checkout produk terdapat Varian melalui List Produk dengan pengiriman Delivery Manual - Modal Checkout
        Given User telah melakukan pengaturan opsi pengiriman manual pada Pengaturan Pengiriman di halaman Dashboard Merchant
        And User sudah berada di halaman detail koleksi grup produk
        When User click button '+' pada salah satu produk non varian yang terdapat pada koleksi grup produk
        And User click button "checkout sekarang" pada sidebar yang muncul
        And tampil halaman 'Informasi Pengiriman'
        And User input field pada halaman 'Informasi Pengiriman' dengan data valid
        And User memilih varian produk yang tersedia
        And User pilih salah satu expedisi pengiriman
        And User click button "buat pesanan"
        Then Berhasil ke halaman pembayaran
        And Saat check di CMS, data masuk ke Penjualan Retail dengan status order "Baru"

    Scenario: 005 - Checkout hanya produk Non Varian melalui List Produk dengan pengiriman Delivery Otomatis - Modal Checkout
        Given User telah melakukan pengaturan opsi pengiriman otomatis pada Pengaturan Pengiriman di halaman Dashboard Merchant
        And User sudah berada di halaman detail koleksi grup produk
        When User click button '+' pada salah satu produk non varian yang terdapat pada koleksi grup produk
        And User click button "checkout sekarang" pada sidebar yang muncul
        And tampil halaman 'Informasi Pengiriman'
        And User input field pada halaman 'Informasi Pengiriman' dengan data valid
        And User pilih salah satu expedisi pengiriman
        And User click button "buat pesanan"
        Then Berhasil ke halaman pembayaran
        And Saat check di CMS, data masuk ke Penjualan Retail dengan status order "Siap di Ambi"

    Scenario: 006 - Checkout produk terdapat Varian melalui List Produk dengan pengiriman Delivery Otomatis - Modal Checkout
        Given User telah melakukan pengaturan opsi pengiriman otomatis pada Pengaturan Pengiriman di halaman Dashboard Merchant
        And User sudah berada di halaman detail koleksi grup produk
        When User click button '+' pada salah satu produk non varian yang terdapat pada koleksi grup produk
        And User click button "checkout sekarang" pada sidebar yang muncul
        And tampil halaman 'Informasi Pengiriman'
        And User input field pada halaman 'Informasi Pengiriman' dengan data valid
        And User memilih varian produk yang tersedia
        And User pilih salah satu expedisi pengiriman
        And User click button "buat pesanan"
        Then Berhasil ke halaman pembayaran
        And Saat check di CMS, data masuk ke Penjualan Retail dengan status order "Siap di Ambi"

    Scenario: 018 - Hapus semua produk di salah satu merchant pada Daftar Paket Pesanan
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk    
    And User Click tab Grup Produk 
    And cek nama card di share modal
    And user click button "Bagikan" Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Otomatis
    And user click button + di List Produk
    And user click button close di modal pop-up keranjang
    And user klik tambah + di List Produk -2
    And user click button close modal pop-up varian
    And user click button "checkout sekarang" pada sidebar yang muncul