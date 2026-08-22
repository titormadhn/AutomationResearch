@PilotProject-Mobile-Registration
Feature: Mobile Registration

    Background:
        Given I was input valid data until Address confirmation page, and click "lanjutkan" button 

    @valid
    Scenario Outline: Successful Create password     
        Given the page is showing Create Password form                       
        When I fill valid data in "Password" field "<password>"  
        And I fill valid data in "Ulangi Password" field "<confirm_pswd>"                          
        And I should see activated button "Lanjutkan"             
        And I click button "Lanjutkan"                         
        Then I should see message: "Apakah anda yakin telah mengisi data dengan benar?"

        Examples:
            | password  | confirm_pswd   |
            | P@ssw0rd  | P@ssw0rd       | 