*** Settings ***
Library   AppiumLibrary
Resource    ../../platformAndroid/stepDefinition/sd_samplegherkindev.robot


*** Test Cases ***
Melakukan login
    User masuk kedalam aplikasi
    Input field username
    Tap button login
    