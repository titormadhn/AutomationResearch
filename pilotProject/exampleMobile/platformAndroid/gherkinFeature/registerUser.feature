@MelawaiApps
Feature: MelawaiApps Register

    Background: User sudah membuka aplikasi melawai
    Given User membuka aplikasi melawai 

    @valid
    Scenario Outline: Melakukan register dengan data valid
        Given User berada pada halaman daftar akun Optik Melawai
        When User input field nomor telepon "<telepon>"
        And User tekan button "lanjutkan"
        And User input field OTP validasi Nomor Telepon
        And User tekan button "selesai dan lanjutkan"
        And User input field alamat email "<email>"
        And User tekan kembali button "lanjutkan"
        And User input field OTP validasi Alamat Email 
        And User tekan kembali button "selesai dan lanjutkan"
        And User input field kata sandi "<password>"
        And User input field alamat "<alamat>"
        And User pilih dropdown Provinsi
        And User pilih dropdown Kota
        And User pilih dropdown Titel
        And User input field Nama Lengkap "<nama_lengkap>"
        And User pilih dropdown Jenis Kelamin
        And User pilih dropdown Tanggal Lahir
        And User checklist checkbox promosi Optik Melawai 
        And User tekan button "daftar"
        Then Registrasi user berhasil

        Examples:
            | telepon       | email                 | password   | alamat       | nama_lengkap    |
            | 6282214633083 | titotest96@mail.com   | P@ssw0rd   | Bandung Indo | M Tito Ramadhan |
           