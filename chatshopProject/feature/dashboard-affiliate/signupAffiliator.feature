Feature: Signup Affiliator

    Background: 
        Given User telah membuka website pagii affiliate
        And User klik tombol "SignUp now" pada halaman Sign In pagii affiliate

    @positifCase
    Scenario Outline: Signup Affiliator dengan data valid
         Given User berada pada halaman Sign Up pagii affiliate
         When User input field Email Address "<email>" 
         And User input field Full Name "<fullName>"
         And User input field Username "<userName>"
         And User input field Phone Number "<phoneNumber>"
         And User input field Password "<password>"
         And User input field Confirm Password "<confirmPassword>"

        Examples:
            | email                | fullName        | userName    | phoneNumber  | password  | confirmPassword |
            | project31.me@gmail.com   | yudi m         | yudi      | 89651864733 | P@ssw0rd  | P@ssw0rd        |