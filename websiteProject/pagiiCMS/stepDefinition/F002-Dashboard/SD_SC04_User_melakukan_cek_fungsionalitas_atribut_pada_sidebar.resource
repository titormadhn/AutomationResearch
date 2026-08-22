*** Settings ***
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Akses Halaman
    Masuk url staging

Login dengan menggunakan kredensial HR
    Login HR dengan valid data

Klik menu dengan bacaan user management pada sidebar
    Click Element    ${menu_userManagement}
    Wait Until Element Is Visible    ${page_userManagement}
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik menu dengan bacaan event management pada sidebar
    Wait Until Element Is Visible    //span[contains(text(),"Event Management")]/../..
    Click Element    //span[contains(text(),"Event Management")]/../..           
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[3]/div[2]/div/div/div/div[1]
    Wait Until Page Contains    Event List
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik menu dengan bacaan attendance history pada sidebar
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[3]           
    Wait Until Page Contains    Attendance History
    Sleep    5s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik menu dengan bacaan overtime history pada sidebar
    Wait Until Element Is Visible    //span[contains(text(),"Overtime History")]/../..
    Click Element    //span[contains(text(),"Overtime History")]/../..
    Wait Until Element Is Visible    //*[@id="root"]/div/div[2]/div[1]/main/div[2]/div[2]/div[1]
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan leave config pada sidebar
    Wait Until Element Is Visible    //span[contains(text(),"Leave")]/../..
    Click Element    //span[contains(text(),"Leave")]/../..
    Sleep    1s
    Wait Until Element Is Visible    //span[contains(text(),"Leave Config")]/../..
    Click Element    //span[contains(text(),"Leave Config")]/../..
    Wait Until Page Contains    Leave List
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan leave history pada sidebar
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[6]/div[2]/div/div/div/div[2]
    Wait Until Page Contains    Leave History
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan leave management pada sidebar
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[6]/div[2]/div/div/div/div[3]
    Wait Until Page Contains    Leave Management
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik menu dengan bacaan permit pada sidebar
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[7]
    Wait Until Page Contains    Permit List
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik menu dengan bacaan reimburse pada sidebar
    Wait Until Element Is Visible    //span[contains(text(),"Reimburse")]/../..
    Click Element    //span[contains(text(),"Reimburse")]/../..
    Wait Until Page Contains    Reimburse
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan shift management pada sidebar
    Wait Until Element Is Visible    //span[contains(text(),"Shift")]/../..
    Click Element    //span[contains(text(),"Shift")]/../..
    Wait Until Element Is Visible    //span[contains(text(),"Shift Management")]/../..
    Click Element    //span[contains(text(),"Shift Management")]/../..
    Wait Until Page Contains    Employee List
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan shift setting pada sidebar
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[9]/div[2]/div/div/div/div[2]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[9]/div[2]/div/div/div/div[2]
    Wait Until Page Contains    Shift Settings
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan invoice pada sidebar
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[10]/div[1]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[10]/div[1]
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[10]/div[2]/div/div/div/div[1]    
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[10]/div[2]/div/div/div/div[1]    
    Wait Until Page Contains    Invoice
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan history dan old invoice pada sidebar
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[10]/div[2]/div/div/div/div[2]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[10]/div[2]/div/div/div/div[2]
    Capture Page Screenshot    EMBED
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[10]/div[2]/div/div/div/div[3]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[10]/div[2]/div/div/div/div[3]
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan cash advance pada sidebar
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[11]/div    
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[11]/div
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[11]/div[2]/div/div/div/div[1]    
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[11]/div[2]/div/div/div/div[1]    
    Wait Until Page Contains    Request List
    Sleep    3s  
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan office inventory pada sidebar
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[11]/div[2]/div/div/div/div[2]    
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[11]/div[2]/div/div/div/div[2]
    Wait Until Page Contains    You don't have permission to access the page
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan master inventory pada sidebar
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[11]/div[2]/div/div/div/div[3]    
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[11]/div[2]/div/div/div/div[3]
    Wait Until Page Contains    You don't have permission to access the page
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik menu dengan bacaan export activity pada sidebar
    Wait Until Element Is Visible   //*[@id="root"]/div/div[1]/div/ul/div[12] 
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[12]
    Wait Until Page Contains    Activity List
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan announcements pada sidebar
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[1]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[1]
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[1]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[1]
    Wait Until Page Contains    Announcements
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s
     
Klik side side-menu dengan bacaan job settings pada sidebar
    Wait Until Element Is Visible   //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div 
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[1]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[1]
    Wait Until Page Contains    Active Job Titles
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side side-menu dengan bacaan division management pada sidebar
    Wait Until Element Is Visible   //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[2] 
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[2]
    Wait Until Page Contains    Division List
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side side-menu dengan bacaan working time pada sidebar
    Wait Until Element Is Visible   //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[3] 
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[3]
    Wait Until Page Contains    Office Working Setting
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side side-menu dengan bacaan leader settings pada sidebar
    Wait Until Element Is Visible   //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[4]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[4]
    Wait Until Page Contains    Exclude Job Titles for The Leaderboard
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side side-menu dengan bacaan mobile feature setting pada sidebar
    Wait Until Element Is Visible   //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[5] 
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[5]
    Wait Until Page Contains    Employee Facilities Setting
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side side-menu dengan bacaan approval order setting pada sidebar
    Wait Until Element Is Visible   //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[6] 
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[2]/div[2]/div/div/div/div[6]
    Wait Until Page Contains    Approval List
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan company profile pada sidebar
    Wait Until Element Is Visible    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[3]
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[3]
    Wait Until Page Contains    Company Name
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

Klik side-menu dengan bacaan generate qr pada sidebar
    Wait Until Element Is Visible   //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[4] 
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div[2]/div/div/div/div[4]
    Wait Until Page Contains    QR Link
    Sleep    3s
    Capture Page Screenshot    EMBED
    Sleep    1s

  


