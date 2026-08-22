*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F014-History/SD_SC01_UserMelakukanChangePlan.resource

*** Test Cases ***
TC02 Change plan select 3 month
    Masuk url staging
    Login HR dengan valid data
    Klik menu Subscription
    Klik sub-menu History
    Klik button change plan
    Klik button select plan
    Muncul dialog popup dan klik button yes