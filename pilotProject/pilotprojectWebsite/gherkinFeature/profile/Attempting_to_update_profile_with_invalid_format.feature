@PilotProject-Profile
Feature: Web Profile

    Background:
        Given the user is logged in

    @valid
    Scenario Outline: Attempting to update profile with invalid format
        Given the user successfully viewing profile details 
        When the user enters an invalid field "<nama_lengkap>" "<no_tlp>"
        And clicks the "Save Changes" button 
        Then the user should see an error message "Please enter a valid data" 
        And the profile page should remain open for the user to correct the information

        Examples:
            | nama_lengkap  | not_tlp   |
            | ${EMPTY}      | ${EMPTY}  |

        