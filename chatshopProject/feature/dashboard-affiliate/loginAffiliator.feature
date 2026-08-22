Feature: Signup Affiliator

    @positifCase
    Scenario Outline: Login Affiliator dengan data valid
        Given User berada pada halaman Login pagii affiliate
        And User input field Username "<userName>"
        And User input field Password "<password>"
        And User klik button Sign In
        Then User berhasil melakukan login sebagai affiliator

        Examples:
            | email                | userName    | password  |
            | project31,me@gmail.com   | yudi      | P@ssw0rd  |
            