@PilotProject-Registration
Feature: Web Profile

    Background:
        Given the user already in login page 

    @valid
    Scenario: Profile details page is not accessible to unauthenticated users
        Given the user is not logged in 
        When the user tries to access the profile details page 
        Then the user should be redirected to the login page 
        And the user should see a message "Please log in to view your profile"