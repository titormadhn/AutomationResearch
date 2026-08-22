Feature: Share Modal

    Background: 
        Given User telah membuka website pagii affiliate
        And User input form login dengan data valid
        And User berhasil login dan diarahkan ke halaman Dashboard Affiliator
        And User sudah create Grup Produk sebelumnya

    @positiveCase
    Scenario: 001 - User akses pop up Bagikan Grup Produk
        Given user sudah berada di halaman list grup produk
        When user click icon share pada salah satu grup produk
        Then tampil pop up Bagikan Grup Produk
        And Direct ke aplikasi whatsapp dengan pesan yang sudah terisi otomatis ketika user click button Bagikan ke Whatsapp
        When user click button kirim pada aplikasi whatsapp
        Then Berhasil share grup produk ke whatsapp

    @positiveCase
    Scenario: 002 - Salin 'Tautan Berbagi Koleksi Grup Produk'
        Given user sudah berada di halaman list grup produk
        When user click icon share pada salah satu grup produk
        Then tampil pop up Bagikan Grup Produk
        When user click button Salin Tautan pada pop up Bagikan Grup Produk
        Then Berhasil menyalin tautan berbagi koleksi grup produk   

    @positiveCase
    Scenario: 004 - User click 'Bagikan ke Whatsapp' kondisi sudah login whatsapp web

        Given user sudah berada di halaman list grup produk
        When user click icon share pada salah satu grup produk
        Then tampil pop up Bagikan Grup Produk
        And Direct ke aplikasi whatsapp dengan pesan yang sudah terisi otomatis ketika user click button Bagikan ke Whatsapp
        When user click button kirim pada aplikasi whatsapp
        Then Berhasil share grup produk ke whatsapp

    @negativeCase
    Scenario: 005 - User click 'Bagikan ke Whatsapp' kondisi belum login whatsapp web

        Given user sudah berada di halaman list grup produk
        When user click icon share pada salah satu grup produk
        Then tampil pop up Bagikan Grup Produk
        And Direct ke aplikasi whatsapp dengan pesan yang sudah terisi otomatis ketika user click button Bagikan ke Whatsapp
        When user belum login whatsapp web
        Then Gagal share grup produk ke whatsapp

    @positveCase
    Scenario: 007 - User click 'Bagikan ke Whatsapp' di Mobile device kondisi sudah login whatsapp app
        Given User Click Menu Produk Mobile
        When User Click Tab Grup Produk Mobile
        And User Click Button Bagikan Pada Card Grup Produk Mobile
        And User Click Button Bagikan ke Whatsapp Mobile
        And Direct ke aplikasi whatsapp
        And User Pilih Kontak Yang Akan Dikirimi Pesan
        And User Click Button Kirim Pada Aplikasi Whatsapp
        Then Berhasil Share Grup Produk Ke Whatsapp Mobile

    @negativeCase
    Scenario: 008 - User click 'Bagikan ke Whatsapp' di Mobile device kondisi belum terinstall whatsapp app
        Given User Click Menu Produk Mobile
        When User Click Tab Grup Produk Mobile
        And User Click Button Bagikan Pada Card Grup Produk Mobile
        And User Click Button Bagikan ke Whatsapp Mobile
        Then Direct ke halaman api.whatsapp.com untuk mengunduh aplikasi whatsapp

    @positveCase
    Scenario: 009 - Akses share link dengan Scan Kode QR di pop up 'Bagikan Grup Produk'
        Given User Click Menu Produk Mobile
        When User Click Tab Grup Produk Mobile
        And User Click Button Bagikan Pada Card Grup Produk Mobile
        And User Scan Kode QR 
        Then Berhasil Scan Kode QR dan diarahkan ke halaman grup produk yang sudah di share


