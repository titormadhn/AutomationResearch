Feature: Edit Multiproduct

    Background: 
        Given User telah membuka website pagii affiliate
        And User input form login dengan data valid
        And User berhasil login dan diarahkan ke halaman Dashboard Affiliator
        And Sudah terdapat grup produk yang tersimpan
        And User klik icon edit pada salah satu grup produk yang sudah tersimpan sebelumnya

    @positiveCase
    Scenario: 001 - Edit semua Field Existing Grup Produk
        Given User berada pada modal popup edit grup produk
        And Sistem menampilkan data yang telah tersimpan
        When User edit semua field dengan data valid
        And User klik tombol "Simpan Perubahan"
        Then Data yang di-edit berhasil tersimpan

    @positiveCase
    Scenario: 002 - Edit Nama Grup saja di Existing Grup Produk
        Given User berada pada modal popup edit grup produk
        And Sistem menampilkan data yang telah tersimpan
        When User edit data pada field "Nama Group" dengan data valid
        And User klik tombol "Simpan Perubahan"
        Then Data yang di-edit berhasil tersimpan

    @negativeCase
    Scenario: 003 - Edit Grup Produk tanpa input Nama Grup
        Given User berada pada modal popup edit grup produk
        And Sistem menampilkan data yang telah tersimpan
        When User mengosongkan data pada field "Nama Grup"
        And User klik tombol "Simpan Perubahan"
        Then Tidak berhasil melakukan edit grup produk
        And Sistem menampilkan pesan error "Nama Grup Wajib Diisi"

    @negativeCase
    Scenario: 004 - Edit Grup Produk dengan input Nama Grup kurang dari 3 karakter 
        Given User berada pada modal popup edit grup produk
        And Sistem menampilkan data yang telah tersimpan
        When User input field "Nama Grup" dengan 2 karakter
        And User klik tombol "Simpan Perubahan"
        Then Tidak berhasil melakukan edit grup produk
        And Sistem menampilkan pesan error "Nama grup harus terdiri dari 3 - 100 karakter"

    @negativeCase
     Scenario: 005 - Edit Grup Produk dengan input Nama Grup lebih dari 100 karakter  
        Given User berada pada modal popup edit grup produk
        And Sistem menampilkan data yang telah tersimpan
        When User input field "Nama Grup" dengan 101 karakter
        And User klik tombol "Simpan Perubahan"
        Then Tidak berhasil melakukan edit grup produk
        And Sistem menampilkan pesan error "Nama grup harus terdiri dari 3 - 100 karakter"

    @positiveCase
    Scenario: 006 - Edit Deskripsi saja di Existing Grup Produk  
        Given User berada pada modal popup edit grup produk
        And Sistem menampilkan data yang telah tersimpan
        When User edit data pada field "Deskripsi" dengan data valid
        And User klik tombol "Simpan Perubahan"
        Then Data yang di-edit berhasil tersimpan

    @positiveCase
    Scenario: 007 - Edit Grup tanpa input Deskripsi  
        Given User berada pada modal popup edit grup produk
        And Sistem menampilkan data yang telah tersimpan
        When User mengosongkan data pada field "Deskripsi"
        And field "Deskripsi" tidak mandatory
        And User klik tombol "Simpan Perubahan"
        Then Data yang di-edit berhasil tersimpan
        
    @positiveCase
    Scenario: 008 - Edit produk dengan mengubah value pada section 'Pilih Produk' di Existing Grup Produk  
        Given User berada pada modal popup edit grup produk
        And Sistem menampilkan data yang telah tersimpan
        When User ubah value product data pada section "Pilih Produk"
        And User klik tombol "Simpan Perubahan"
        Then Data yang di-edit berhasil tersimpan

    @negativeCase
    Scenario: 009 - Section Pilih Produk di modal Edit Grup ketika produk sudah ditambahkan di "Produk Saya" tetapi dihapus dari Daftar Produk Chatshop  
        Given User berada pada modal popup edit grup produk
        And User melakukan login dengan valid data di website merchant dashboard
        And User melihat daftar produk pada merchant dashboard
        And User menghapus salah satu produk di list daftar produk merchant dashboard
        And User melakukan login kembali di website pagii affiliate
        And User masuk kembali ke halaman grup produk 
        When User klik icon edit pada grup produk yang dibuka sebelumnya
        And User hover pada section "Pilih Produk" di modal edit grup produk
        Then Produk yang sudah dihapus tersebut tidak muncul di list produk yang bisa dipilih 

    @negativeCase
    Scenario: 010 - Field Pilih Produk di modal Edit Grup ketika produk dihapus dari "Produk Saya" 
        Given User berada pada modal popup edit grup produk
        And Sistem menampilkan data yang telah tersimpan
        And User kembali kedalam section menu "Produk Saya"
        And User melihat share link produk 
        When User menghapus sebagian produk yang sudah ditambahkan sebelumnya
        And User kembali ke halaman grup produk
        And User klik icon edit pada grup produk yang dibuka sebelumnya
        And User hover pada section "Pilih Produk" di modal edit grup produk
        And Produk yang sudah dihapus tersebut tidak muncul di list produk yang bisa dipilih
        And User kembali kedalam section menu "Produk Saya"
        And User menghapus semua produk yang sudah ditambahkan sebelumnya
        And User kembali ke halaman grup produk
        Then Produk yang dihapus sudah tidak ditampilkan di pilih produk - modal Edit Grup Produk
        And Grup produk yang sudah tidak memiliki produk di dalamnya akan tetap tersimpan dan muncul di list grup produk
        And Link share tidak berubah ketika user menambahkan kembali product yang sudah dihapus sebelumnya ke dalam section "Produk Saya"

    @negativeCase
    Scenario: 011 - Field Pilih Produk ketika stock produk out of stock
        Given User berada pada modal popup edit grup produk
        And User membuka website merchant dashboard
        When User ubah salah satu qty produk menjadi out of stock di merchant dashboard
        And User melakukan check pada section "Pilih Produk" di modal edit grup produk
        Then Produk yang sudah diubah menjadi out of stock tidak dapat dipilih di list produk yang bisa dipilih

    @negativeCase
    Scenario: 012 - Edit Grup Produk dengan uncheck sebagian produk yang tersimpan
        Given User berada pada modal pupup edit grup produk
        And User check produk ke section "Pilih Produk" di modal edit grup produk
        When User uncheck salah satu produk
        And User klik button "Simpan"
        Then Auto remove produk yang sudah ada
        And Produk terceklist sesuai yang terakhir disimpan.

    @negativeCase
    Scenario: 013 - Edit Grup dengan mengosongkan Field 'Pilih produk'
        Given User berada pada modal pupup edit grup produk
        And User check produk ke section "Pilih Produk" di modal edit grup produk
        And Menampilkan data produk yang sudah disimpan sebelumnya
        When User uncheck semua produk yang sudah ada
        And User klik button "Simpan"
        Then Memunculkan error message "Pilih minimal 1 produk"

    @positiveCase
    Scenario: 014 - Search Produk di pop up Edit Grup
        Given User berada pada modal popup edit grup produk
        And User check produk ke section "Pilih Produk" di modal edit grup produk
        When User input valid nama produk di field Search produk 
        Then Berhasil menampilkan produk yang sesuai

    @negativeCase
    Scenario: 015 - Search Produk di pop up Edit Grup dengan invalid nama produk
        Given User berada pada modal popup edit grup produk
        And User check produk ke section "Pilih Produk" di modal edit grup produk
        When User input invalid nama produk di field Search produk
        Then Berhasil menampilkan halaman dengan informasi yang relevan dan bahasa indonesia

    @negativeCase
    Scenario: 016 - Edit Grup produk dengan input spasi saja pada deskripsi
        Given User berada pada modal popup edit grup produk
        When User edit value deskripsi dengan spasi saja
        And User klik button "Simpan"
        Then Deskripsi yang di-edit tidak tersimpan

    @negativeCase
    Scenario: 017 - Edit Grup produk dengan input enter saja pada deskripsi
        Given User berada pada modal popup edit grup produk
        When User edit value deskripsi dengan enter saja
        And User klik button "Simpan"
        Then Deskripsi yang di-edit tidak tersimpan

    @positiveCase
    Scenario: 018 - Edit Grup Produk dengan file banner valid
        Given User berada pada modal popup edit grup produk
        When User upload file banner dengan format jpg/jpeg/png dan ukuran kurang dari 5MB
        And User klik button "Simpan"
        Then Berhasil Edit Grup Produk dengan file banner baru

    @negativeCase
    Scenario: 019 - Edit Grup Produk dengan file banner di atas 5MB
        Given User berada pada modal popup edit grup produk
        When User upload file banner dengan format jpg/jpeg/png dan ukuran lebih dari 5MB
        And User klik button "Simpan"
        Then Gagal Create Grup dengan file lebih dari 5MB
        And Sistem menampilkan pesan error "Ukuran file maksimal 5MB"

    @negativeCase
    Scenario: 020 - Batal Edit Grup setelah mengubah input beberapa field
        Given User berada pada modal popup edit grup produk
        When User mengubah input pada beberapa field
        And User klik button "Batal"
        Then Perubahan yang sudah diubah tidak tersimpan
        And Data tetap sesuai dengan data sebelum di-edit

    @positiveCase
    Scenario: 021 - User dapat adjust banner di field Banner - pop up Edit Grup
        Given User berada pada modal popup edit grup produk
        When User scroll down sampai field Banner
        And User dapat melakukan adjust posisi banner yang sudah diupload
        And User click button "Terapkan" setelah melakukan adjust posisi banner
        Then Berhasil input banner di pop up Edit Grup

    @positiveCase
    Scenario: 022 - User batal menambahkan banner di pop up Edit Grup
        Given User berada pada modal popup edit grup produk
        When User scroll down sampai field Banner
        And User dapat melakukan adjust posisi banner yang sudah diupload
        And User click button "Batal" setelah melakukan adjust posisi banner
        Then Tidak berhasil input banner di pop up Edit Grup

    @positiveCase
    Scenario: 023 - User mengganti file banner yang sudah ditambahkan di Pop up Edit Grup
        Given User berada pada modal popup edit grup produk
        When User scroll down sampai field Banner
        And User click button "Ganti" pada field banner
        And And User dapat melakukan adjust posisi banner yang sudah diupload
        And User click button "Terapkan" setelah melakukan adjust posisi banner
        Then Berhasil mengganti file banner di pop up Edit Grup

    @positiveCase
    Scenario: 024 - User remove file banner yang sudah ditambahkan di pop up Edit
        Given User berada pada modal popup edit grup produk
        When User scroll down sampai field Banner
        And User click icon "x"
        Then Banner berhasil dihapus

    @negativeCase
    Scenario: 025 - User Batal mengganti file banner yang sudah ditambahkan di Pop up Edit Grup
        Given User berada pada modal popup edit grup produk
        When User scroll down sampai field Banner
        And User click button "Ganti" pada field banner
        And User reupload file banner baru
        And User click button "Batal" 
        Then Batal mengganti file banner, user dapat melanjutkan Edit Grup

    @positiveCase
    Scenario: 026 - User dapat menyesuaikan file banner yang sudah ditambahkan di Pop up Edit Grup
        Given User berada pada modal popup edit grup produk
        When User scroll down sampai field Banner
        And User click button "Ganti" pada field banner
        And User reupload file banner baru
        And User click button "Terapkan" 
        And User click button "Sesuaikan"
        And User Adjust posisi banner
        And User click button "Terapkan" setelah melakukan adjust posisi banner
        Then Berhasil menyesuaikan file banner, dapat Edit Grup dengan file banner terbaru

    @positiveCase
    Scenario: 027 - Edit Grup Produk dengan tanpa input banner
        Given User berada pada modal popup edit grup produk
        When User scroll down sampai field Banner
        And User remove file banner yang sudah diupload sebelumnya
        And User click "Simpan Perubahan" Button
        Then Berhasil Edit Grup Produk tanpa banner

    @negativeCase
    Scenario: 028 - Edit Grup Produk dengan file banner valid sebelum click Terapkan
        Given User berada pada modal popup edit grup produk
        When User scroll down sampai field Banner
        And Upload file banner dengan valid
        And Click button "Simpan Perubahan" tanpa click button "Terapkan" pada field banner
        Then Tidak berhasil Create Grup






    

    


    









        

    

    

    


    
    


        