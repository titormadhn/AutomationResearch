@PilotProject-Registration
Feature: Web Registration

    Background:
        Given I was input valid data on registration form and click button "Ok" in popup confirmation

    @valid
    Scenario: Successful activation OTP
        Given Page is redirect and I am already in OTP page
        When i fill the otp page with right otp
        And I click "Verifikasi OTP" button
        Then I can see notification "Registrasi anda berhasil"