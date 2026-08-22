*** Settings ***
Resource    ../../utility/globalKeyword.resource

*** Test Cases ***
Sign in dengan email, password yang sesuai, dan mengisikan captcha
    Masuk url staging
    Login HR dengan valid data
    Capture Page Screenshot    embed