@MelawaiApps
Feature: Clipfun-Register

    Background: User sudah membuka aplikasi Clipfun
    Given User membuka aplikasi Clipfun
    And User tekan button "masuk"

    @valid
    Scenario Outline: Melakukan register dengan data valid
        Given User berada pada halaman beranda aplikasi
        When User tekan button perorangan
        And User input field nama lengkap "<nama_lengkap>"
        And User input field nomor handphone "<telepon>"
        And User tekan checkbox term&condition
        And User pilih dan tekan salah satu pengiriman OTP
        And User melakukan input otp pada field yang disediakan
        And User input field email "<email>"
        And User pilih dropdown field kota/kabupaten
        And User pilih dropdown kecamatan
        And User tekan button "lanjutkan"
        And User input field password "<password>"
        And User input field ulangi password "<confirm_password>"
        And User tekan kembali button "lanjutkan"
        Then Registrasi user berhasil

        Examples:
            | nama_lengkap      | telepon         | email                    | password       |   confirm_password  |
            | 6282214633083     | 6282212345677   | tito.ramadhan@wgs-id.com | P@ssw0rd       |  P@ssw0rd           |
           