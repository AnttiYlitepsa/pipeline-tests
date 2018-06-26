*** Settings ***
Library               SeleniumLibrary
#Library    Remote    http://127.0.0.1:8270    WITH NAME    xvfb_lib
Library    Remote     http://xvfb:8270    WITH NAME    xvfb_lib
Suite Setup           Setup
Suite Teardown        Teardown

*** Keywords ***
Setup
    Open Display

Teardown
    Close Display


*** Test Cases ***
Browser Should Open Google's Homepage In Firefox
    Open Browser    https://www.google.com    browser=firefox
    Title Should Be    Google
    Close Browser

