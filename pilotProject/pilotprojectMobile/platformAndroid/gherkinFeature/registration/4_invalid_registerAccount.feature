@PilotProject-Mobile-Registration
Feature: Mobile Registration

    @invalid
    Scenario Outline: Invalid Register account     
        Given the page is showing Sign Up form      
        When I fill in Nama Lengkap "<nama_lengkap>"
        And I fill in Registered Email "<email>"
        And I choose Tipe Akun   
        And I click agree of term of condition                           
        And I should see activated button "Lanjutkan"  
        And I click button "Lanjutkan"                           
        Then I should see error message notification "<err_msg>"

        Examples:
            | nama_lengkap      | email                 | err_msg                           |
            | M Tito Ramadhan   | titoqa@yopmail.com    | Email Sudah Terdaftar             |
            | M Tito Ramadhan   | t@mail.com            | Field email minimal 10 character  |