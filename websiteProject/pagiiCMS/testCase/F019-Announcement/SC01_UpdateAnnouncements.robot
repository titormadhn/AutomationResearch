*** Settings ***
Resource    ../../utility/globalKeyword.resource
Resource    ../../stepDefinition/F019-Announcement/SD_SC01_UpdateAnnouncements.resource

*** Test Cases ***
Isi field announcement
    Masuk url staging
    Login HR dengan valid data
    Klik Announcements menu
    input field Announcements
    Klik button Update
