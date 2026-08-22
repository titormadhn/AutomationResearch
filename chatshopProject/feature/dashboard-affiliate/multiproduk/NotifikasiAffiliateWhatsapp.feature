Feature: Notifikasi Affiliate Whatsapp

  Background:
    Given User telah membuka website pagii affiliate
    And User input form login dengan data valid
    And User berhasil login dan diarahkan ke halaman Dashboard Affiliator
    And Sudah terdapat grup produk yang tersimpan

  @positiveCase
  Scenario: 001 - Transaksi beberapa merchant Biteship Otomatis
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
    And User Pilih Bank Transfer
    And User Pilih Salah Satu Bank
    And User Melakukan Pembayaran
    And User diarahkan ke halaman Pembayaran Berhasil
    Then User Check Notifikasi Pesanan Di Whatsapp

  @positiveCase
  Scenario: 002 - Transaksi satu merchant Biteship Otomatis
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
    And User Pilih Bank Transfer
    And User Pilih Salah Satu Bank
    And User Melakukan Pembayaran
    And User diarahkan ke halaman Pembayaran Berhasil
    Then User Check Notifikasi Pesanan Di Whatsapp

  @positiveCase
  Scenario: 003 - Transaksi beberapa merchant Biteship Manual
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
    And User Pilih Bank Transfer
    And User Pilih Salah Satu Bank
    And User Melakukan Pembayaran
    And User diarahkan ke halaman Pembayaran Berhasil
    And User Check Notifikasi Pesanan Di Whatsapp
    Then Merchant Cek Pesanan

  @positiveCase
  Scenario: 004 - Transaksi beberapa merchant Biteship Otomatis
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
    And User Pilih Bank Transfer
    And User Pilih Salah Satu Bank
    And User Melakukan Pembayaran
    And User diarahkan ke halaman Pembayaran Berhasil
    And User Check Notifikasi Pesanan Di Whatsapp
    Then Merchant Cek Pesanan

  @positiveCase
  Scenario: 005 - Notifikasi Resi Owner diterima owner (merchant) ketika transaksi sudah dibayar dengan kondisi setup pengiriman biteship manual
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
    And User Pilih Bank Transfer
    And User Pilih Salah Satu Bank
    And User Melakukan Pembayaran
    And User diarahkan ke halaman Pembayaran Berhasil
    And User Check Notifikasi Pesanan Di Whatsapp
    And Merchant Proses Pesanan
    And Merchant Ubah Pesanan Ke Siap Diambil
    And Merchant Klik Button Cetak Resi Pada Detail Pesanan
    Then Merchant Cek Notifikasi Resi Di Whatsapp

  @positiveCase
  Scenario: 006 - Notifikasi Resi Owner diterima owner (merchant) ketika transaksi sudah dibayar dengan kondisi setup pengiriman biteship otomatis
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
    And User Pilih Bank Transfer
    And User Pilih Salah Satu Bank
    And User Melakukan Pembayaran
    And User diarahkan ke halaman Pembayaran Berhasil
    And User Check Notifikasi Pesanan Di Whatsapp
    And Merchant Klik Button Cetak Resi Pada Detail Pesanan
    Then Merchant Cek Notifikasi Resi Di Whatsapp

  @negativeCase
  Scenario: 007 - Notifikasi Resi Owner tidak diterima owner (merchant) ketika transaksi sudah dibayar dengan kondisi setup pengiriman biteship manual
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
    And User Pilih Bank Transfer
    And User Pilih Salah Satu Bank
    And User Melakukan Pembayaran
    And User diarahkan ke halaman Pembayaran Berhasil
    And Merchant Proses Pesanan
    And Merchant Ubah Pesanan Ke Siap Diambil
    And Merchant Klik Button Cetak Resi Pada Detail Pesanan
    Then Merchant Tidak Menerima Notifikasi Resi Di Whatsapp

  @negativeCase
  Scenario: 008 - Notifikasi Resi Owner tidak diterima owner (merchant) ketika transaksi sudah dibayar dengan kondisi setup pengiriman biteship otomatis
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
    And User Pilih Bank Transfer
    And User Pilih Salah Satu Bank
    And User Melakukan Pembayaran
    And User diarahkan ke halaman Pembayaran Berhasil
    And Merchant Klik Button Cetak Resi Pada Detail Pesanan di Page Siap Diambil Merchant Biteship Otomatis
    Then Merchant Tidak Menerima Notifikasi Resi Di Whatsapp