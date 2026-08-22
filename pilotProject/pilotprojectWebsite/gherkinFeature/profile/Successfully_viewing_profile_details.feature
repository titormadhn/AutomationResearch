@PilotProject-Registration
Feature: Web Profile

    Background:
        Given the user already login with valid data

    @valid
    Scenario: Successfully viewing profile details
        Given the user in main page 
        And the user navigates to the profile details page 
        Then the user should see their details profile 
        And the user should see the last updated date of their profile