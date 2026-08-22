*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F014-History/SD_SC03_UserKlikButtonResetdanInfo.resource    

*** Test Cases ***
TC02 User klik button info
    Masuk url staging
    Login HR dengan valid data
    Klik menu Subscription
    Klik sub-menu History
    Klik button info


    