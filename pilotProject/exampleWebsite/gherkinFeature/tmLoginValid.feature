@LoginTMDigital
Feature: TM Digital Login

    @valid
    Scenario Outline: Login dengan data valid
        Given User berada dihalaman login TM Digital
        When User input alamat email "<email>" 
        And User input password "<password>"
        And User klik button "Sign In"
        Then User sukses melakukan login dengan redirect ke halaman dashboard TM Digital 

        Examples:
            | email                     | password      |
            | superadmin@gmail.com      | superadmin    |
            | titoqa@maildrop.cc        | P@ssw0rd      |
            | bootcampqa@yopmail.com    | password      |