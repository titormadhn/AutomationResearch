*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F027-GenerateQR/SD_SC02_CekFungsionalitasGenerateQR.resource
Test Setup    Masuk ke menu Generate QR

*** Test Cases ***
TC01 User mengcopy link QR via field QR Link
    Copy Link pada Field QR
    Buka Tab baru dan buka link yang sudah di copy

TC02 User menggenerate link QR menggunakan button GENERATE LINK
    Klik button Generate Link
    Klik button yes untuk konfirmasi

TC05 User melihat daftar leaderboard via button LEADERBOARD
    Klik button Leaderboard

TC07 User memilih opsi refresh QR otomatis via slider Auto Refresh QR
    Klik Switch Button Auto Refresh QR
    Klik button Update Setting

TC08 User mencetak QR via button PRINT
    Klik button Print
    Simpan PDF Otomatis
    Cek file ada atau tidak

TC09 User men-setting timer generate QR via field Time
    User Update Field Time
    Klik button Update Setting
    
*** Keywords ***
Masuk ke menu Generate QR
    Masuk url staging
    Login HR dengan valid data
    Klik submenu Generate QR

