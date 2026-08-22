@PilotProject-Profile
Feature: Web Profile

    Background:
        Given the user is logged in

    @valid
    Scenario: Canceling profile update
        Given the user successfully viewing profile details 
        When the user clicks the "Cancel" button without making any changes 
        Then the user should be redirected back to the previous page 
        And no changes should be saved to the profile