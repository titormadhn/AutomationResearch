@PilotProject-Mobile-Registration
Feature: Mobile Registration

    Background:
        Given I was input valid data until Create Password page, and click "lanjutkan" button 

    @valid
    Scenario: Confirmation Registration Process    
        Given the page is showing popup message "Apakah anda yakin telah mengisi data dengan benar"                               
        When I click button "Ya"                         
        Then I should see message on Confirmation Form "Pendaftaran Berhasil, Terimakasih sudah melakukan registrasi akun"