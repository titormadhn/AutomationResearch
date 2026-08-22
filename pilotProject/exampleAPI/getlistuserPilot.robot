*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${baseURL}    https://gherkin-pilot.stagingapps.net/api
#${lastEmail}    #titoqa@yopmail.com 

*** Test Cases ***
API Validation Regiter User
    Get API User was Successfuly Registered

*** Keywords ***
Get API User was Successfuly Registered
    Create Session    mysession    ${baseURL}
    ${response}=    Get On Session    mysession    /v1/users  #params=email=${field_email-web}
    Log To Console    ${response.status_code}
    ${json_response}=    Set Variable    ${response.json()}    # Ambil body response dalam format JSON
    ${data}=    Get From Dictionary    ${response.json()}    data    # Mengambil dictionary data dari JSON response.
    ${users}=    Get From Dictionary    ${data}    users    # Mengambil list users dari dalam data
    ${length}=    Get Length    ${users}    # Mendapatkan Panjang List daua users
    ${last_index}=    Evaluate    ${length}-1    # Menghitung Indeks Elemen Terakhir
    ${last_user}=    Get From List    ${users}    ${last_index}    # Mengambil Elemen Terakhir
    ${values}=    Get Dictionary Values    ${last_user}    # Mengambil semua nilai dari dictionary first_user dalam bentuk list.
    ${email}=    Get From List    ${values}    6    # Mengambil elemen ke-6 dari list values
    Log    Email Found: ${email}

    # ${first_user}=    Get From List    ${users}    0    # Mengambil user pertama dalam list