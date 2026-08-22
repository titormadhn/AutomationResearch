*** Settings ***
Resource    ../../stepDefinition/F001-Register_Login/SD_user_melakukan_register.resource

*** Test Cases ***
User melakukan register
    Buka Website Pagii CMS
    Klik Register
    Isi field PIC Name
    Isi field PIC Email
    Isi field PIC Phone Number
    Isi field Company Name
    Isi field Company Address
    # Isi field NPWP Company Name
    # Isi field NPWP ID
    Isi field Company Sector
    Isi field Number of Employees
    Klik Captcha
    Klik "Register"
