*** Settings ***
Resource    ../../utility/dashboard-affiliate/globalKeyword.resource

*** Keywords ***
User telah membuka website cms pagii
    Open Browser Staging Merchant 

User input form login CMS dengan data valid
    Valid Login Merchant