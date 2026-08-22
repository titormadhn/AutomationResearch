Feature: Create Multiproduk Card

    Background: 
        Given User telah membuka website pagii affiliate
        And User input form login dengan data valid
        And User berhasil login dan diarahkan ke halaman Dashboard Affiliator

    @positiveCase
    Scenario: 001 - Open Modal Create Grup
        Given User berada di halaman Dashboard Affiliator 
        When User click menu Produk
        And User click tab Grup Produk
        And User click button "+ Buat Grup"
        Then Berhasil menampilkan modal Buat Grup

    @positiveCase 
    Scenario: 002 - Close Modal Create Grup Dengan Button Batal
        Given User berada pada halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Click Button "Batal" Pada Modal Buat Grup
        Then Modal Buat Grup Tertutup

    @positiveCase
    Scenario: 003 - Close Modal Create Grup Dengan Button X
        Given User berada pada halaman Group Produk
        When Start to type your When step here User Click Button "+ Buat Grup"
        And User Click Button "X" Pada Modal Buat Grup
        Then Modal Buat Grup Tertutup

    @positiveCase
    Scenario: 004 - Field Pilih Produk di Modal Create Grup Menampilkan Produk Dari Katalog Produk Saya
        Given User berada pada halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Scroll Modal
        Then Modal Menampilkan Produk Dari Katalog Produk Saya

    @negativeCase
    Scenario: 005 - Field Pilih Produk di modal Create Grup ketika produk sudah ditambahkan di "Produk Saya",dihapus dari "Produk Saya"
        Given User berada pada halaman Group Produk
        And User Click Button "+ Buat Grup"
        And User Scroll Modal Sampai Field Pilih Produk
        And Modal Menampilkan List Produk Dari Katalog Produk Saya
        And User Click Button "Batal" Pada Modal Buat Grup
        And User Click Tab Produk Saya
        And User Menghapus Produk Yang Sudah Ditambahkan
        And User Click Tab Grup Produk
        And User Click Button "+ Buat Grup" 
        And User Scroll Modal Sampai Field Pilih Produk
        Then Modal Menampilkan Produk Dari Katalog Produk Saya yang sudah dihapus dari "Produk Saya"

    @negativeCase
    Scenario: 006 - Field Pilih Produk di modal Create Grup ketika produk sudah ditambahkan di "Produk Saya"  tetapi dihapus dari Daftar Produk Chatshop
        Given User Berada Pada Halaman Group Produk
        When User Click button "+ Buat Grup"
        And User Scroll Modal Sampai Field Pilih Produk
        And Modal Menampilkan List Produk Dari Katalog Produk Saya
        And User Click Button "Batal" Pada Modal Buat Grup
        And Merchant Menghapus Salah Satu Produk Yang Sudah Ditambahkan
        And User Click button "+ Buat Grup"
        And User Scroll Modal Sampai Field Pilih Produk
        Then Modal Menampilkan Produk Dari Katalog Produk Saya yang sudah dihapus dari "Produk Saya"

    @negativeCase
    Scenario: 007 - Field Pilih Produk ketika stock produk out of stock
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Scroll Modal Sampai Field Pilih Produk
        And User Coba Click Produk Stock Habis
        Then Produk Pada Modal Tidak Ter-Checklist

    @positiveCase
    Scenario: 008 - Create Grup dari link 'Buat Grup' di bawah wording 'Tidak ada grup produk'  
        Given User berada pada halaman Group Produk kosong
        When User click label link 'Buat Grup' pada section dibawah 'Tidak ada grup produk'
        And User input Nama Grup
        And User input Deskripsi
        And User Upload File Banner
        And User Terapkan Banner
        And User pilih produk
        And User click 'Buat Grup' Button
        Then User Berhasil create Grup

    @positiveCase
    Scenario: 009 - Create Grup dari link '+ Buat Grup' button  
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User input Nama Grup
        And User input Deskripsi
        And User Upload File Banner
        And User Terapkan Banner
        And User pilih produk
        And User click 'Buat Grup' Button
        Then User Berhasil create Grup

    @positiveCase
    Scenario: 010 - Create Grup Tanpa Input Deskripsi
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User input Nama Grup
        And User Mengosongkan Field Deskripsi
        And User Upload File Banner
        And User Terapkan Banner
        And User Pilih Produk
        And User click 'Buat Grup' Button
        Then User Berhasil create Grup

    @positiveCase
    Scenario: 011 - Create Grup dengan nama Grup yang sudah tersimpan di Grup Produk
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User input Nama Grup dengan nama yang sudah ada
        And User mengosongkan Deskripsi
        And User pilih produk
        And User Upload File Banner
        And User Terapkan Banner
        And User click 'Buat Grup' Button
        Then User berhasil simpan dengan nama yang sudah ada

    @negativeCase
    Scenario: 012 - Create Grup tanpa input Nama Grup
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Mengosongkan Field Nama Grup
        And User input Deskripsi
        And User Upload File Banner
        And User Terapkan Banner
        And User Pilih Produk
        And User click 'Buat Grup' Button
        Then User Gagal create Grup dan muncul error "Nama grup wajib diisi" dibawah field Nama Grup

    @negativeCase
    Scenario: 013 - Create Grup dengan input Nama Grup kurang dari 3 karakter 
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User input Nama Grup kurang dari 3 karakter
        And User input Deskripsi
        And User Upload File Banner
        And User Terapkan Banner
        And User Pilih Produk
        And User click 'Buat Grup' Button
        Then User Gagal create Grup dan muncul error "Nama grup harus terdiri dari 3-100 karakter" dibawah field Nama Grup

    @negativeCase
        Scenario: 014 - Create Grup dengan input Nama Grup lebih dari 100 karakter 
            Given User Berada Pada Halaman Group Produk
            When User Click Button "+ Buat Grup"
            And User input Nama Grup lebih dari 100 karakter
            And User input Deskripsi
            And User Upload File Banner
            And User Terapkan Banner
            And User Pilih Produk
            And User click 'Buat Grup' Button
            Then User Gagal create Grup dan muncul error "Nama grup harus terdiri dari 3-100 karakter" dibawah field Nama Grup

    @negativeCase
      Scenario: 015 - Create Grup tanpa "Pilih Produk"
          Given User Berada Pada Halaman Group Produk
          When User Click Button "+ Buat Grup"
          And User input Nama Grup
          And User input Deskripsi
          And User Upload File Banner
          And User Terapkan Banner
          And User Mengosongkan Field Pilih Produk
          And User click 'Buat Grup' Button
          Then User Gagal create Grup dan muncul error "Produk wajib dipilih" dibawah field Pilih Produk

    @negativeCase
    Scenario: 016 - Grup Produk auto remove produk ketika produk yang digunakan dihapus semua dari daftar 'Produk Saya'
        Given User Berada Pada Halaman Group Produk
        When User Click Tab Produk Saya
        And User Menghapus Semua Produk Yang Telah Ditambahkan Ke Grup
        And User Click Tab Grup Produk
        Then User Melihat Card Grup Produk Tidak Menampilkan Produk 

    @negativeCase
    Scenario: 017 - Grup Produk auto remove produk ketika produk yang digunakan dihapus sebagian dari daftar 'Produk Saya'
        Given User Berada Pada Halaman Group Produk
        When User Click Tab Produk Saya
        And User Menghapus Sebagian Produk Yang Telah Ditambahkan Ke Grup
        And User Click Tab Grup Produk
        Then User Melihat Card Grup Produk Tidak Menampilkan Produk Yang Dihapus   

    @negativeCase
    Scenario: 018 - Grup Produk auto remove produk ketika produk yang digunakan dihapus semua dari CMS Merchant (Chatshop)  
        Given User Berada Pada Halaman Group Produk
        When User Click Tab Produk Saya
        And User Check Produk Yang Ada di Grup
        And User Click Tab Grup Produk
        And Merchant Menghapus Produk Semua Yang Ada di Grup
        And User Refresh Page
        Then User Melihat Card Grup Produk Menampilkan Produk Kosong

    @negativeCase
    Scenario: 019 - Grup Produk auto remove produk ketika produk yang digunakan dihapus Sebagian dari CMS Merchant (Chatshop)
        Given User Berada Pada Halaman Group Produk
        When User Click Tab Produk Saya
        And User Check Produk Yang Ada di Grup
        And User Click Tab Grup Produk
        And Merchant Menghapus Sebagian Produk Yang Ada di Grup
        And User Refresh Page
        Then User Melihat Card Grup Produk Tidak Menampilkan Produk Yang Dihapus

    @positiveCase
    Scenario: 020 - Search Produk di Pop Up Create Grup
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Click Field Search Produk
        And User Input Nama Produk Yang Ingin Dicari
        Then List Produk Menampilkan Produk Sesuai Dengan Keyword Pencarian

      @negativeCase
      Scenario: 021 - Search Produk di pop up Create Grup dengan invalid nama produk
          Given User Berada Pada Halaman Group Produk
          When User Click Button "+ Buat Grup"
          And User Click Field Search Produk
          And User Input Nama Produk Yang Invalid
          Then List Produk Menampilkan "Produk tidak ditemukan"

    @positiveCase
    Scenario: 022 - User dapat adjust banner di field Banner
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Scroll Down Sampai Field Banner
        And User Upload File Banner
        And User Menyesuaikan Banner Sesuai Keinginan
        And User Terapkan Banner
        Then User Berhasil Menyesuaikan Banner

    @positiveCase
    Scenario: 023 - User batal menambahkan banner di pop up Buat Grup  
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Scroll Down Sampai Field Banner
        And User Upload File Banner
        And User Menyesuaikan Banner Sesuai Keinginan
        And User Click Button "Batal"
        Then User Berhasil batal menambahkan banner

    @positiveCase
    Scenario: 024 - User mengganti file banner yang sudah ditambahkan di Pop Up Buat Grup
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Scroll Down Sampai Field Banner
        And User Upload File Banner
        And User Terapkan Banner
        And User hover field banner 
        And User upload file banner kedua
        And User Terapkan Banner
        Then User berhasil mengganti file banner dengan file yang baru di Pop Up Buat Grup
        
    @positiveCase
    Scenario: 025 - User remove file banner yang sudah ditambahkan  
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Scroll Down Sampai Field Banner
        And User Upload File Banner
        And User Terapkan Banner
        And User hover field banner 
        And User click icon "x" untuk menghapus banner
        Then User Berhasil Menghapus Banner   

    @negativeCase
    Scenario: 026 - User Batal mengganti file banner yang sudah ditambahkan di Pop up Buat Grup
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Scroll Down Sampai Field Banner
        And User Upload File Banner
        And User Terapkan Banner
        And User hover field banner
        And User click button ganti
        And User Upload File Banner Baru
        And User Click Button "Batal"
        Then Field Banner Menampilkan Banner Yang Diupload Sebelumnya

    @positiveCase
    Scenario: 027 - User dapat menyesuaikan file banner yang sudah ditambahkan di Pop up Buat Grup
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User Scroll Down Sampai Field Banner
        And User Upload File Banner
        And User Terapkan Banner
        And User Hover Field Banner
        And User Click Button "Sesuaikan"
        And User Menyesuaikan Banner Sesuai Keinginan
        And User Terapkan Banner
        Then User Berhasil Menyesuaikan Banner

    @positiveCase
    Scenario: 028 - Buat Grup Produk dengan tanpa input banner
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User input Nama Grup
        And User input Deskripsi
        And User Pilih Produk
        And User click 'Buat Grup' Button
        Then User Berhasil Create Grup Tanpa Banner

    @positiveCase
    Scenario: 029 - Buat Grup Produk dengan file banner valid
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User input Nama Grup
        And User input Deskripsi
        And User Upload File Banner
        And User Menyesuaikan Banner Sesuai Keinginan
        And User Terapkan Banner
        And User Pilih Produk
        And User click 'Buat Grup' Button
        Then User Berhasil create Grup dengan banner

    @negativeCase
    Scenario: 030 - Buat Grup Produk dengan file banner valid sebelum click Terapkan
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User input Nama Grup
        And User input Deskripsi
        And User Upload File Banner Tanpa Terapkan Banner
        And User Pilih Produk
        And User click 'Buat Grup' Button
        Then User Gagal create Grup dan muncul error "Silahkan batalkan atau terapkan gambar"

    @negativeCase
    Scenario: 031 - Buat Grup Produk dengan file banner di atas 5MB
        Given User Berada Pada Halaman Group Produk
        When User Click Button "+ Buat Grup"
        And User input Nama Grup
        And User input Deskripsi
        And User Upload File Banner diatas 5MB
        Then User Gagal Upload Banner dan Muncul Error "Ukuran file maks. 5MB"