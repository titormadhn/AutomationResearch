*** Settings ***
Library    SeleniumLibrary
Resource    ../../utility/globalKeyword.resource

*** Keywords ***
Akses Halaman
    Masuk url staging

Login dengan Kredensial HR
    Login HR dengan valid data

Lihat Tampilan pada Bagian Atas Halaman
    Wait Until Element Is Visible    //header
    Sleep    2s  
    Capture Element Screenshot    //header    EMBED
    Sleep    2s

Lihat tampilan pada bagian kiri halaman
    Wait Until Element Is Visible    //ul[contains(@class,"MuiList-root")]
    Sleep    2s
    Capture Element Screenshot    //ul[contains(@class,"MuiList-root")]    EMBED
    Sleep    2s

Lihat tampilan pada body halaman dengan tulisan "Total Active Employee"
    Wait Until Element Is Visible    //p[text()="Total Active Employee"]/../../..
    Sleep    2s
    Capture Element Screenshot    //p[text()="Total Active Employee"]/../../..    EMBED
    Sleep    2s

Lihat tampilan pada body halaman dengan tulisan "Today"
    Wait Until Element Is Visible    //p[text()="Attendances"]/../following-sibling::div//p[text()="Today"]/../../../..
    Sleep    2s
    Capture Element Screenshot    //p[text()="Attendances"]/../following-sibling::div//p[text()="Today"]/../../../..    EMBED
    Sleep    2s

Lihat tampilan pada body halaman dengan tulisan "Yesterday"
    Wait Until Element Is Visible    //p[text()="Attendances"]/../following-sibling::div//p[text()="Yesterday"]/../../../..
    Sleep    2s
    Capture Element Screenshot    //p[text()="Attendances"]/../following-sibling::div//p[text()="Yesterday"]/../../../..    EMBED
    Sleep    2s

Lihat tampilan pada body halaman dengan tulisan "Last Week"
    Wait Until Element Is Visible    //p[text()="Attendances"]/../following-sibling::div//p[text()="Last Week"]/../../../..
    Scroll Element Into View    //footer
    Sleep    2s
    Capture Element Screenshot    //p[text()="Attendances"]/../following-sibling::div//p[text()="Last Week"]/../../../..    EMBED
    Sleep    2s

Lihat tampilan pada body halaman dengan tulisan "Last Month"
    Wait Until Element Is Visible    //p[text()="Attendances"]/../following-sibling::div//p[text()="Last Month"]/../../../..
    Sleep    2s
    Capture Element Screenshot    //p[text()="Attendances"]/../following-sibling::div//p[text()="Last Month"]/../../../..    EMBED
    Sleep    2s

Lihat tampilan pada body trip record dengan tulisan "Today"
    Wait Until Element Is Visible    //p[text()="Business Trip"]/following-sibling::div//p[text()="Today"]/../../../..
    Sleep    2s
    Capture Element Screenshot    //p[text()="Business Trip"]/following-sibling::div//p[text()="Today"]/../../../..    EMBED
    Sleep    2s

Lihat tampilan pada body trip record dengan tulisan "Yesterday"
    Wait Until Element Is Visible    //p[text()="Business Trip"]/following-sibling::div//p[text()="Yesterday"]/../../../..
    Sleep    2s
    Capture Element Screenshot    //p[text()="Business Trip"]/following-sibling::div//p[text()="Yesterday"]/../../../..    EMBED
    Sleep    2s

Lihat tampilan pada body trip record dengan tulisan "Last Week"
    Wait Until Element Is Visible    //p[text()="Business Trip"]/following-sibling::div//p[text()="Last Week"]/../../../..
    Sleep    2s
    Capture Element Screenshot    //p[text()="Business Trip"]/following-sibling::div//p[text()="Last Week"]/../../../..    EMBED
    Sleep    2s

Lihat tampilan pada body trip record dengan tulisan "Last Month"
    Wait Until Element Is Visible    //p[text()="Business Trip"]/following-sibling::div//p[text()="Last Month"]/../../../..
    Sleep    2s
    Capture Element Screenshot    //p[text()="Business Trip"]/following-sibling::div//p[text()="Last Month"]/../../../..    EMBED
    Sleep    2s

Lihat ke bagian paling bawah dari halaman
    Wait Until Element Is Visible    //footer
    Sleep    2s
    Capture Element Screenshot    //footer    EMBED
    Sleep    2s
