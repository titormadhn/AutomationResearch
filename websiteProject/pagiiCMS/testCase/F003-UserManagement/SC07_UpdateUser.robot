*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F003-UserManagement/SD_SC07_UpdateUser.resource

*** Test Cases ***
TC28 Update dengan semua field di update
    Masuk url staging
    Login HR dengan valid data
    Klik menu 'User Management' pada sidebar
    Klik edit button
    Update Full Name
    Update NIK/Employee ID	
    Update Date of Birthday	
    Update Email Address
    Update Phone Number	
    Update Address	
    Update Photo	
    Update Division	
    Update Job Title	
    Update Supervisor	
    Update Approval Type 	
    Klik button Update User    
