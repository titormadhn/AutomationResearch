*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Akses halaman
    Masuk url staging

Login dengan menggunakan kredensial HR
    Login HR dengan valid data

Lihat foto profil company di bagian kiri atas sidebar
    Wait Until Element Is Visible    xpath=(//div[@class='jss52'])[1]
    Capture Element Screenshot    xpath=(//div[@class='jss52'])[1]    embed
    Sleep    1s

Lihat nama company di bagian kanan atas sidebar
    Wait Until Element Is Visible    xpath=(//img[@class='jss60'])[1]
    Capture Element Screenshot    xpath=(//img[@class='jss60'])[1]    embed
    Sleep    1s

Cari menu dengan bacaan dashboad pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[1]
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[1]    embed
    Sleep    1s

Cari menu dengan bacaan user management pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[2]
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[2]    embed
    Sleep    1s

Cari menu dengan bacaan event management pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[3]/div
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[3]/div    embed
    Click Element    xpath=//*[@id="root"]/div/div[1]/div/ul/div[3]/div
    Sleep    1s

Cari menu dengan bacaan attendance history pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[4]
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[4]    embed
    Sleep    1s

Cari menu dengan bacaan overtime history pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[5]
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[5]    embed
    Sleep    1s

Cari menu dengan bacaan leave pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[6]/div
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[6]/div    embed
    Click Element    xpath=//*[@id="root"]/div/div[1]/div/ul/div[6]/div
    Sleep    1s

Cari side-menu dengan bacaan leave config pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[9]
    Capture Element Screenshot    xpath=(//div[@role='button'])[9]    embed
    Sleep    1s

Cari side-menu dengan bacaan leave history pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[10]
    Capture Element Screenshot    xpath=(//div[@role='button'])[10]    embed
    Sleep    1s

Cari side-menu dengan bacaan leave management pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[11]
    Capture Element Screenshot    xpath=(//div[@role='button'])[11]    embed
    Sleep    1s

Cari menu dengan bacaan permit pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[7]
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[7]    embed
    Sleep    1s

Cari menu dengan bacaan reimburse pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[8]
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[8]    embed
    Sleep    1s

Cari menu dengan bacaan shift pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[9]/div
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[9]/div    embed
    Click Element    xpath=//*[@id="root"]/div/div[1]/div/ul/div[9]/div
    Sleep    1s

Cari side-menu dengan bacaan shift management pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[9]/div[2]/div/div/div/div[1]
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[9]/div[2]/div/div/div/div[1]    embed
    Sleep    1s

Cari side-menu dengan bacaan shift setting pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[9]/div[2]/div/div/div/div[2]
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[9]/div[2]/div/div/div/div[2]    embed
    Sleep    1s
    
Cari menu dengan bacaan subscription pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[10]/div
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[10]/div    embed
    Click Element    xpath=//*[@id="root"]/div/div[1]/div/ul/div[10]/div
    Sleep    1s

Cari side-menu dengan bacaan invoice pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[18]
    Capture Element Screenshot    xpath=(//div[@role='button'])[18]    embed
    Sleep    1s

Cari side-menu dengan bacaan history pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[19]
    Capture Element Screenshot    xpath=(//div[@role='button'])[19]    embed
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[20]
    Capture Element Screenshot    xpath=(//div[@role='button'])[20]    embed
    Sleep    1s

Cari menu dengan bacaan employee facilities pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[11]/div
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[11]/div    embed
    Click Element    xpath=//*[@id="root"]/div/div[1]/div/ul/div[11]/div
    Sleep    1s

Cari side-menu dengan bacaan cash advance pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[22]
    Capture Element Screenshot    xpath=(//div[@role='button'])[22]    embed
    Sleep    1s

Cari side-menu dengan bacaan office inventory pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[23]
    Capture Element Screenshot    xpath=(//div[@role='button'])[23]    embed
    Sleep    1s

Cari side-menu dengan bacaan master inventory pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[24]
    Capture Element Screenshot    xpath=(//div[@role='button'])[24]    embed
    Sleep    1s
    
Cari menu dengan bacaan export activity pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[12]
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[12]    embed
    Sleep    1s

Cari menu dengan bacaan general setting pada sidebar
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div/ul/div[13]/div
    Capture Element Screenshot    xpath=//*[@id="root"]/div/div[1]/div/ul/div[13]/div    embed
    Click Element    //*[@id="root"]/div/div[1]/div/ul/div[13]/div
    Sleep    1s

Cari side-menu dengan bacaan announcements pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[27]
    Capture Element Screenshot    (//div[@role='button'])[27]    embed
    Sleep    1s

Cari side-menu dengan bacaan company setting pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[28]
    Capture Element Screenshot    xpath=(//div[@role='button'])[28]    embed
    Click Element    xpath=(//div[@role='button'])[28]
    Sleep    1s

Cari side side-menu dengan bacaan job settings pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[29]
    Capture Element Screenshot    xpath=(//div[@role='button'])[29]    embed
    Sleep    1s

Cari side side-menu dengan bacaan division management pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[30]
    Capture Element Screenshot    xpath=(//div[@role='button'])[30]    embed
    Sleep    1s

Cari side side-menu dengan bacaan working time pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[31]
    Capture Element Screenshot    xpath=(//div[@role='button'])[31]    embed
    Sleep    1s

Cari side side-menu dengan bacaan leader settings pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[32]
    Capture Element Screenshot    xpath=(//div[@role='button'])[32]    embed
    Sleep    1s

Cari side side-menu dengan bacaan mobile feature setting pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[33]
    Capture Element Screenshot    xpath=(//div[@role='button'])[33]    embed
    Sleep    1s

Cari side side-menu dengan bacaan approval order setting pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[34]
    Capture Element Screenshot    xpath=(//div[@role='button'])[34]    embed
    Sleep    1s
    
Cari side-menu dengan bacaan company profile pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[35]
    Capture Element Screenshot    xpath=(//div[@role='button'])[35]    embed
    Sleep    1s

Cari side-menu dengan bacaan generate qr pada sidebar
    Wait Until Element Is Visible    xpath=(//div[@role='button'])[36]
    Capture Element Screenshot    xpath=(//div[@role='button'])[36]    embed
    Sleep    1s