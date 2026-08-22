@PilotProject-Mobile-Registration
Feature: Mobile Registration

    Background:
        Given  I was input valid data on first page in registration form
        And I click button Lanjutkan to see OTP verification Form

    @valid
    Scenario: Successful Activation OTP via Email     
        Given I am on the Input OTP form            
        When I fill in valid OTP Number                
        Then I should see Address Information form