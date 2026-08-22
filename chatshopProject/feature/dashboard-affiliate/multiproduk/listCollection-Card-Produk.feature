Feature: List Collection Card Produk

    Background: 
        Given User telah membuka website pagii affiliate
        And User input form login dengan data valid
        And User berhasil login dan diarahkan ke halaman Dashboard Affiliator

    @negativeCase
    Scenario: 001 - Open Group Produk ketika belum ada 'Grup Produk'
         Given User berada pada halaman Dashboard
         And User klik tombol menu "Produk"
         When User pindah ke navigasi menu "Group Produk"
         Then User berhasil melihat halaman Group Produk kosong

    @positiveCase
    Scenario: 002 - Menampilkan Group produk yang sudah terbuat
        Given User berada pada halaman Group Produk
        When User view Group produk card
        Then Sistem menampilkan data setiap card produk dengan detail informasi "Nama card", "deskripsi singkat card", "jumlah product yang ada dalam card", "button share", "button edit", "button icon delete"
        And Pagination yang berfungsi