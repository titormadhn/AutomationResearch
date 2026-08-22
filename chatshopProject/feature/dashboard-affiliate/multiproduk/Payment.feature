Feature:Payment

  Background: 
    Given User telah membuka website pagii affiliate
    And User input form login dengan data valid
    And User berhasil login dan diarahkan ke halaman Dashboard Affiliator
    And Sudah terdapat grup produk yang tersimpan

  @positiveCase
  Scenario: 001 - Akses halaman Detail Pesanan & Total Pembayaran - Transaksi produk Non Varian only & Delivery Manual
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk
    And User Click tab Grup Produk
    And User Click Button "Bagikan" Pada Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Otomatis
    And user klik button chekout sekarang
    And user verify halaman informasi pengiriman
    And user isi form Informasi Pengiriman nama lengkap
    And user isi form Informasi Pengiriman no whatsapp
    And user isi form Informasi Pengiriman kecamatan / kota / provinsi / kode pos
    And user isi form Informasi Pengiriman Detail Alamat
    And user isi form Informasi Pengiriman pilih jasa pengiriman
    And User Click Button Buat Pesanan
    And User Click Lanjut Pada Popup Konfirmasi Pesanan
    Then User diarahkan ke halaman Detail Pesanan & Total Pembayaran

  @positiveCase
  Scenario: 002 - Akses halaman Detail Pesanan & Total Pembayaran - Transaksi terdapat produk Varian & Delivery Manual
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk
    And User Click tab Grup Produk
    And User Click Button "Bagikan" Pada Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Varian Otomatis
    And user klik button chekout sekarang
    And user verify halaman informasi pengiriman
    And user isi form Informasi Pengiriman nama lengkap
    And user isi form Informasi Pengiriman no whatsapp
    And user isi form Informasi Pengiriman kecamatan / kota / provinsi / kode pos
    And user isi form Informasi Pengiriman Detail Alamat
    And user isi form Informasi Pengiriman pilih jasa pengiriman
    And User Click Button Buat Pesanan
    And User Click Lanjut Pada Popup Konfirmasi Pesanan
    Then User diarahkan ke halaman Detail Pesanan & Total Pembayaran

    @positiveCase
    Scenario:003 - Akses halaman Detail Pesanan & Total Pembayaran - Transaksi produk Non Varian only & Delivery Otomatis
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk
    And User Click tab Grup Produk
    And User Click Button "Bagikan" Pada Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Otomatis
    And user klik button chekout sekarang
    And user verify halaman informasi pengiriman
    And user isi form Informasi Pengiriman nama lengkap
    And user isi form Informasi Pengiriman no whatsapp
    And user isi form Informasi Pengiriman kecamatan / kota / provinsi / kode pos
    And user isi form Informasi Pengiriman Detail Alamat
    And user isi form Informasi Pengiriman pilih jasa pengiriman
    And User Click Button Buat Pesanan
    And User Click Lanjut Pada Popup Konfirmasi Pesanan
    Then User diarahkan ke halaman Detail Pesanan & Total Pembayaran Merchant Delivery Otomatis

    @positiveCase
    Scenario:004 - Akses halaman Detail Pesanan & Total Pembayaran - Transaksi produk Varian only & Delivery Otomatis
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk
    And User Click tab Grup Produk
    And User Click Button "Bagikan" Pada Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Varian Otomatis
    And user klik button chekout sekarang
    And user verify halaman informasi pengiriman
    And user isi form Informasi Pengiriman nama lengkap
    And user isi form Informasi Pengiriman no whatsapp
    And user isi form Informasi Pengiriman kecamatan / kota / provinsi / kode pos
    And user isi form Informasi Pengiriman Detail Alamat
    And user isi form Informasi Pengiriman pilih jasa pengiriman
    And User Click Button Buat Pesanan
    And User Click Lanjut Pada Popup Konfirmasi Pesanan
    Then User diarahkan ke halaman Detail Pesanan & Total Pembayaran Merchant Delivery Otomatis

    @positiveCase
    Scenario:007 - Kembali ke Toko - dari halaman Detail Pesanan & Bayar Sekarang
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk
    And User Click tab Grup Produk
    And User Click Button "Bagikan" Pada Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Varian Otomatis
    And user klik button chekout sekarang
    And user verify halaman informasi pengiriman
    And user isi form Informasi Pengiriman nama lengkap
    And user isi form Informasi Pengiriman no whatsapp
    And user isi form Informasi Pengiriman kecamatan / kota / provinsi / kode pos
    And user isi form Informasi Pengiriman Detail Alamat
    And user isi form Informasi Pengiriman pilih jasa pengiriman
    And User Click Button Buat Pesanan
    And User Click Lanjut Pada Popup Konfirmasi Pesanan
    And User diarahkan ke halaman Detail Pesanan & Total Pembayaran
    And User Click Kembali Ke Toko
    And User Click "Ya, Kembali" Pada popUp Konfirmasi Kembali Ke Toko
    Then User diarahkan ke halaman Dashboard Grup Produk Affiliator

    @positiveCase
    Scenario:008 - Akses halaman 'Payment Method' melalui button Lanjut Pembayaran
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk
    And User Click tab Grup Produk
    And User Click Button "Bagikan" Pada Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Varian Otomatis
    And user klik button chekout sekarang
    And user verify halaman informasi pengiriman
    And user isi form Informasi Pengiriman nama lengkap
    And user isi form Informasi Pengiriman no whatsapp
    And user isi form Informasi Pengiriman kecamatan / kota / provinsi / kode pos
    And user isi form Informasi Pengiriman Detail Alamat
    And user isi form Informasi Pengiriman pilih jasa pengiriman
    And User Click Button Buat Pesanan
    And User Click Lanjut Pada Popup Konfirmasi Pesanan
    And User diarahkan ke halaman Detail Pesanan & Total Pembayaran
    And User Click Lanjut Pembayaran
    Then User diarahkan ke halaman Payment Method Xendit 

    @positiveCase
    Scenario: 009 - Pembayaran dengan salah satu bank
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk
    And User Click tab Grup Produk
    And User Click Button "Bagikan" Pada Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Varian Otomatis
    And user klik button chekout sekarang
    And user verify halaman informasi pengiriman
    And user isi form Informasi Pengiriman nama lengkap
    And user isi form Informasi Pengiriman no whatsapp
    And user isi form Informasi Pengiriman kecamatan / kota / provinsi / kode pos
    And user isi form Informasi Pengiriman Detail Alamat
    And user isi form Informasi Pengiriman pilih jasa pengiriman
    And User Click Button Buat Pesanan
    And User Click Lanjut Pada Popup Konfirmasi Pesanan
    And User diarahkan ke halaman Detail Pesanan & Total Pembayaran
    And User Click Lanjut Pembayaran
    And User diarahkan ke halaman Payment Method Xendit 
    And User Pilih Salah Satu Bank
    And User Melakukan Pembayaran
    Then User diarahkan ke halaman Pembayaran Berhasil

    @positiveCase
    Scenario: 010 - Pembayaran dengan QRIS
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk
    And User Click tab Grup Produk
    And User Click Button "Bagikan" Pada Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Varian Otomatis
    And user klik button chekout sekarang
    And user verify halaman informasi pengiriman
    And user isi form Informasi Pengiriman nama lengkap
    And user isi form Informasi Pengiriman no whatsapp
    And user isi form Informasi Pengiriman kecamatan / kota / provinsi / kode pos
    And user isi form Informasi Pengiriman Detail Alamat
    And user isi form Informasi Pengiriman pilih jasa pengiriman
    And User Click Button Buat Pesanan
    And User Click Lanjut Pada Popup Konfirmasi Pesanan
    And User diarahkan ke halaman Detail Pesanan & Total Pembayaran
    And User Click Lanjut Pembayaran
    And User diarahkan ke halaman Payment Method Xendit 
    And User Pilih Pembayaran QRIS
    And User Scan QRIS
    Then User diarahkan ke halaman Pembayaran Berhasil

    @positiveCase
    Scenario: 011 - Pembayaran Ketika Expired
    Given User berada di halaman Dashboard Affiliator
    When User Click menu Produk
    And User Click tab Grup Produk
    And User Click Button "Bagikan" Pada Card Produk
    And Verify Copy Share URL
    And Verify Share URL Product
    And Tambah Produk Varian Otomatis
    And user klik button chekout sekarang
    And user verify halaman informasi pengiriman
    And user isi form Informasi Pengiriman nama lengkap
    And user isi form Informasi Pengiriman no whatsapp
    And user isi form Informasi Pengiriman kecamatan / kota / provinsi / kode pos
    And user isi form Informasi Pengiriman Detail Alamat
    And user isi form Informasi Pengiriman pilih jasa pengiriman
    And User Click Button Buat Pesanan
    And User Click Lanjut Pada Popup Konfirmasi Pesanan
    And User diarahkan ke halaman Detail Pesanan & Total Pembayaran
    And User Click Lanjut Pembayaran
    And User diarahkan ke halaman Payment Method Xendit 
    And User Pilih Salah Satu Bank
    Then User Melakukan Pembayaran Ketika Expired
