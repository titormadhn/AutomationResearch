@PilotProject-Registration
Feature: Web Registration

    @valid
    Scenario Outline: Valid Register Account
        Given the page is showing Sign Up form as an individual account            
        When I fill  "Nama Lengkap/ Nama Badan Usaha" field "<nama_lengkap>"  
        And I choose "Daftar Sebagai" radio button as Perorangan  
        And I select "+62" from the "Kode Negara" Dropdown  
        And I fill "Nomor Telepon" field "<no_tlp>"  
        And I fill "Email" field "<email>" 
        And I select Kota Bandung from "Kota/kabupaten" dropdown
        And I select Buah Batu from "Kecamatan" dropdown  
        And I fill "Password" field "<password>"    
        And I fill "Konfirmasi Password" field "<confirm_pswd>"   
        And I cheklist the chekbox "Saya setuju dengan syarat dan ketentuan yg berlaku"  
        And I Click "Buat Akun" button  
        And I choose "OK" in popup confirmation  
        Then I should direct to OTP page 
        And I should see notification OTP akan dikirim ke email anda 

        Examples:
            | nama_lengkap      | no_tlp        | email                 | password  | confirm_pswd  |
            | Gherkin           | 8123456789    | email@gmail.com       | P@ssw0rd  | P@ssw0rd      | 
            | M Tito Ramadhan   | 82214644531   | titoqa@yopmail.com    | P@ssw0rd  | P@ssw0rd      |
            | Ega               | 8123456       | t@mail.com            | Passw0rd  | Passw0rd      |