@PilotProject-Mobile-Registration
Feature: Mobile Registration

    Background: 
        Given I was input valid data on first page and otp in registration form

    @valid
    Scenario: Successful Address Confirmation     
        Given the page is showing Address Information form                          
        When I choose valid data in dropdown field Kota/Kabupaten 
        And I choose valid data in dropdown field Kecamatan                          
        And I should see activated button "Lanjutkan"              
        And I Click button "Lanjutkan"                          
        Then I should see Create Password form