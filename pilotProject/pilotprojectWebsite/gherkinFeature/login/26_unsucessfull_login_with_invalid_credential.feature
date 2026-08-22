@PilotProject-Login
Feature: Web Login

    @valid
    Scenario Outline: Unsuccessful login with invalid credentials
        Given the user is on the login page 
        When the user enters an invalid email, password, and capthca "<email>" "<password>"
        And clicks the login button 
        Then the user should see an error message "<err_msg>"
        And the login page should be displayed again

        Examples:
            | email                 | password  | err_msg           |
            | ${EMPTY}              | P@ssw0rd  | email wajib diisi |
            | titoqa@yopmail.com    | p@ssw0rD  | password salah    |