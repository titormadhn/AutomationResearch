@PilotProject-Mobile-Registration
Feature: Mobile Registration

    Background:
        Given I was succesfully see Create password form

    @valid
    Scenario Outline: Unsuccessful Create password     
        Given the page is showing Create Password form again                      
        When I fill invalid data in "Password" field "<password>"  
        And I fill invalid data in "Ulangi Password" field "<confirm_pswd>"                          
        And I should see activated button "Lanjutkan" in form           
        And I click button "Lanjutkan" in form                       
        Then I should see error message notification "<err_msg>"

        Examples:
            | password  | confirm_pswd   | err_msg                                          |
            | password  | password       | Password harus mengandung huruf besar dan angka  |
            | P@ssw0rd  | p@ssw0rD       | Password tidak match                             |