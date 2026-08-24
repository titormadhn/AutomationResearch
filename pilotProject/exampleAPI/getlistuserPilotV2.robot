*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Library    REST

*** Variables ***
${baseURL}    https://gherkin-pilot.stagingapps.net/api
#${lastEmail}    #titoqa@yopmail.com 

*** Test Cases ***
API Validation Regiter User
    # Get API Latest User
    # API validation successfuly registered 1
    # API validation successfuly registered 2
    API validation successfuly registered 3

*** Variables ***
${email}    titoqa@yopmail.com

*** Keywords ***
Get API Latest User
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
    ${email}=    Get From List    ${values}    7    # Mengambil elemen ke-6 dari list values
    Log    Email Found: ${email}

    # ${first_user}=    Get From List    ${users}    0    # Mengambil user pertama dalam list
API validation successfuly registered 1   #using RequestsLibrary & Built-in keyword
    ${response}    RequestsLibrary.GET  ${baseURL}/v1/users  params=email=${email}  expected_status=200
    Log    ${response.json()}[data][users][0][email]
    Should Be Equal As Strings    ${email}  ${response.json()}[data][users][0][email]
    ${actual_email}=    Set Variable    ${response.json()}[data][users][0][email]
    Run Keyword If    '${email}' != '${actual_email}'
    ...    Log    Email NOT MATCH
    ...    ELSE
    ...    Log    Email MATCH

API validation successfuly registered 2  #using JSONLibrary & Built-in keyword
    ${response}    RequestsLibrary.GET    ${baseURL}/v1/users    params=email=${email}    expected_status=200
    ${email_api}=  Get value from JSON    ${response.json()}    $.data.users[0].email
    Should Be Equal As Strings    ${email}    ${email_api}
    ${actual_email}=    Set Variable    ${email_api}
    Run Keyword If    '${email}' != '${email_api}'
    ...    Log    Email NOT MATCH
    ...    ELSE
    ...    Log    Response Email dari API sesuai dengan Email yang didaftarkan : ${email}

API validation successfuly registered 3  #using RESTInstance
    REST.GET    ${baseURL}/v1/users?email=${email}
    Integer    response status    200
    ${email_api}=  String     $.data.users[0].email    ${email}
    Log    Result : ${email} = ${email_api} 