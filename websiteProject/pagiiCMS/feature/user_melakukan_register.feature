Feature: Register User

    Background:
        Given User akses url HR pagi

    Scenario: User melakukan register dengan data valid
        Given System menampilkan halaman Login
        And User klik button register
        And User input field PIC Name
        And User input PIC Email
        And User input PIC Phone Number
        And User input Company Name
        And User input Company Address
        And User input Company Sector
        And User input Number of Employees
        And User klik checkbox captcha
        And User klik button 'Register'
        Then User melihat notifikasi berhasil register
