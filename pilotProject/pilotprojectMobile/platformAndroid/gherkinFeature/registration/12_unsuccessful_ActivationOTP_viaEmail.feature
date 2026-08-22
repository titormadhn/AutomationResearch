@PilotProject-Mobile-Registration
Feature: Mobile Registration

    Background:
        Given  I was input valid data on first page in registration form
        And I click button Lanjutkan to see OTP verification Form

    @invalid
    Scenario Outline: Unsuccessful Activation OTP via Email     
        Given I am on the Input OTP form            
        When I fill in invalid OTP Number "<otp>"            
        Then I should see error message notification "<err_msg>"

        Examples:
            | otp   | err_msg                           |
            | 7170  | kode otp yang anda masukan salah  |