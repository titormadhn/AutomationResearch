@LoginPilotProject
Feature: Login

    Background: 
        Given user open browser
        And navigate to the login page

    @valid
    Scenario: Login dengan valid credentials
        Given User berada pada halaman login Pilot Project
        When User input email
        And User input Password
        And User input Captcha untuk validasi
        And User klik button Submit
        Then User berhasil login dan diarahkan ke halaman Dashboard Pilot Project