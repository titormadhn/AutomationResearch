Feature: Delete Multiproduk


    Background: 
        Given User telah membuka website pagii affiliate
        And User input form login dengan data valid
        And User berhasil login dan diarahkan ke halaman Dashboard Affiliator
        And User sudah create Grup Produk sebelumnya

    @positiveCase
    Scenario: 001 - Delete Grup Produk Normal Flow
        Given user sudah berada di halaman list grup produk
        When user click icon trash
        And User click Button hapus pada pop up konfirmasi "Hapus Grup"
        Then Berhasil delete
        And tampilan list Grup Produk sesuai
    @positiveCase
    Scenario: 002 - Delete Grup Produk kondisi daftar produk kosong
        Given user sudah berada di halaman list grup produk
        And user sudah menghapus semua produk dalam grup produk
        When user click icon trash
        And User click Button hapus pada pop up konfirmasi "Hapus Grup"
        Then Berhasil delete
        And tampilan list Grup Produk sesuai

    @negativeCase
    Scenario: 003 - Data tidak terhapus ketika batal Delete Grup Produk dengan click button Batal
        Given user sudah berada di halaman list grup produk
        When user click icon trash
        And User click Button Batal pada pop up konfirmasi "Hapus Grup"
        Then Gagal delete
        And kembali ke halaman list Grup Produk  

    @negativeCase
    Scenario: 004 - Data tidak terhapus ketika batal Delete Grup Produk dengan click button X
        Given user sudah berada di halaman list grup produk
        When user click icon trash
        And User click Button X pada pop up konfirmasi "Hapus Grup"
        Then Gagal delete
        And kembali ke halaman list Grup Produk 

    @positiveCase
    Scenario: 005 - Delete Grup pada Page kedua
        Given user sudah berada di halaman kedua
        When user click icon trash pada grup produk di page 2
        And User click Button hapus pada pop up konfirmasi "Hapus Grup"
        Then Berhasil delete
        And tampilan list Grup Produk sesuai 

