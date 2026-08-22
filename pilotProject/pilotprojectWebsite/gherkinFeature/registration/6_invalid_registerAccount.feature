@PilotProject-Registration
Feature: Web Registration

    @invalid
    Scenario Outline: Invalid Register Account
        Given the page is showing Sign Up form as an individual account            
        When I fill "Nama Lengkap/ Nama Badan Usaha" field "<nama_lengkap>"  
        And I choose "Daftar Sebagai" radio button as "Perorangan"  
        And I select "+62" from the "Kode Negara" Dropdown  
        And i fill "Nomor Telepon" field "<no_tlp>"  
        And i fill "Email" field "<email>"  
        And i select "Kota Bandung" from "Kota/kabupaten" dropdown  
        And i select "Buah Batu" from "Kecamatan" dropdown  
        And i fill "Password" field with "<password>"    
        And i fill "Konfirmasi Password" field "<confirm_pswd>"   
        And i cheklist the chekbox "Saya setuju dengan syarat dan ketentuan yg berlaku"  
        And i Click "Buat Akun" button  
        And i choose "OK" in pop up confirmation  
        Then i should see error notification "<err_msg>"

       Examples:
            | nama_lengkap     | no_tlp        | email              | password  | confirm_pswd  | err_msg                                              |
            | Gherkin          | 8123456789    | email@gmail.com    | P@ssw0rd  | P@ssw0rd      | Email anda sudah terdaftar                           |
            | mt               | 82214633001   | titoqa@yopmail.com | P@ssw0rd  | P@ssw0rd      | Field nama lengkap / badan usaha minimal 3 character |
            | M Tito Ramadhan  | 822134        | titoqa@yopmail.com | P@ssw0rd  | P@ssw0rd      | Field nomor telepon minimal 7 character              |
            | M Tito Ramadhan  | 82213433002   | t@wgs.id           | P@ssw0rd  | P@ssw0rd      | Field email minimal 10 character                     |
            | Tito R           | 8123456789    | tito@gmail.com     | password  | password      | Password harus mengandung Uppercase dan Number       |
            | Tito R           | 8123456789    | tito@gmail.com     | M71to     | M71to         | Field password minimal 8 character                   |
            | Tito R           | 8123456789    | tito@gmail.com     | P@ssw0rd  | p@ssw0rD      | Password tidak match                                 |
            | <EMPTY>          | <EMPTY>       | <EMPTY>            | <EMPTY>   | <EMPTY>       | Field harus diisi                                    |
