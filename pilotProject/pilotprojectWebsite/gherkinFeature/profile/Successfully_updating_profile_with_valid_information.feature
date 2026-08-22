@PilotProject-Profile
Feature: Web Profile

    Background:
        Given the user is logged in

    @valid
    Scenario: Successfully updating profile with valid information 
        Given the user successfully viewing profile details 
        When the user updates their Nama lengkap/Badan usaha, Daftar sebagai, Kode negara, no tlp, email, kota, kecamatan, and bidang usaha yang diminati
        And clicks the "Save Changes" button
        Then the user should see a success message "Profile updated successfully"
        And the updated information should be displayed on the profile page