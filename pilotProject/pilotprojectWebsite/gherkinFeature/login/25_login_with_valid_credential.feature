@PilotProject-Login
Feature: Web Login

    @valid
    Scenario Outline: Successful login with valid credentials 
        Given the user is on the login page 
        When the user enters a valid email, password, and capthca "<email>" "<password>"
        And clicks the login button 
        Then the user should be redirected to the Profil Detail's Page

        Examples:
            | email                | password  |
            | titoqa@yopmail.com   | P@ssw0rd  |