*** Settings ***
Resource    ../../stepDefinition/dashboard-affiliate/sd_loginAffiliator.resource

*** Test Cases ***
#Positif Case
Login Affiliator dengan data valid
    [Tags]    positifCase
    [Documentation]    Test Case untuk melakukan login affiliator dengan data valid
    Given User telah membuka website pagii affiliate
    When User input form login dengan data valid
    Then User berhasil login dan diarahkan ke halaman Dashboard Affiliator