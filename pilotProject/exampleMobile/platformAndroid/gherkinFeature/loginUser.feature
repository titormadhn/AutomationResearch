@MelawaiApps
Feature: MelawaiApps Login

    Background: User sudah membuka aplikasi melawai kemudian tap button masuk
    Given User membuka aplikasi melawai 
    And User tap button masuk

    @valid
    Scenario Outline: Melakukan login dengan data valid 
        Given User berada pada halaman login
        When User input nomor telepon atau email "<username>"
        And User input kata sandi "<password>"
        And User tap button masuk di halaman login 
        Then User masuk ke homepage aplikasi melawai 
        And User dapat melihat halaman profile

        Examples:
            | username              | password      |
            | titoqa@maildrop.cc     | P@ssw0rd      |
            | 081573313196          | P@ssw0rd      |