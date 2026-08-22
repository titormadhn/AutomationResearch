*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F014-History/SD_SC04_UserDenganStatusPremium.resource

*** Test Cases ***
TC01 User melakukan pembayaran sebelum tenggat waktu
    Masuk url staging
    Login HR dengan valid data
    Klik menu Subscription
    Klik sub-menu History
    Klik button "Pay Now"    #dialog payment xendit tidak muncul