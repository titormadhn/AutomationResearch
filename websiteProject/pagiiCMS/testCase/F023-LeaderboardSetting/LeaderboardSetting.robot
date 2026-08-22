*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F023-LeaderboardSetting/LeaderboardSetting.resource
Test Setup    Buka Leaderboard Setting

*** Test Cases ***
Exclude satu active job title dari leaderboard
    Pilih satu Job Title "Account Manager"    

User mematikan leaderboard
    Klik opsi OFF pada section leaderboard

Klik button UPDATE SETTING
    Klik button update setting setelah ada perubahan

*** Keywords ***
Buka Leaderboard Setting
    Masuk url staging
    Login HR dengan valid data
    Klik menu dengan bacaan general setting pada sidebar
    Klik side-menu dengan bacaan company setting pada sidebar
    Klik slide side-menu dengan bacaan leader