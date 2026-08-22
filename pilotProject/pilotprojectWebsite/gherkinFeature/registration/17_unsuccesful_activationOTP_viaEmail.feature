@PilotProject-Registration
Feature: Web Registration

    Background:
        Given I was input valid data on registration form, and click button "Ok" in popup confirmation

    @valid
    Scenario Outline: Unsuccesfull activation OTP
        Given Page is redirect and I am already in OTP page
        When i fill the otp page with wrong number "<otp>"
        And I click "Verifikasi OTP" button
        Then I should see error message notification "<err_msg>"

        Examples:
            | otp   | err_msg                           |
            | 7170  | kode otp yang anda masukan salah  |