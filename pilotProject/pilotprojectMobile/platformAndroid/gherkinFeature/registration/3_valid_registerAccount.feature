@PilotProject-Mobile-Registration
Feature: Mobile Registration

    Background: 
        Given User membuka aplikasi GherkinPilot 
        And User tap button "Register Here"

    @valid
    Scenario Outline: Valid Register account     
        Given the page is showing Sign Up form      
        When I fill valid data Nama Lengkap "<nama_lengkap>"
        And I fill valid Email "<email>"
        And I choose Tipe Akun   
        And I tap agree of term of condition                           
        And I should see activated button "Lanjutkan"  
        And I tap button "Lanjutkan"                           
        Then I should see OTP Verification form 

        Examples:
            | nama_lengkap      | email                 |
            | M Tito Ramadhan   | titoqa@yopmail.com    |
            | Aku               | t@mail.com            |