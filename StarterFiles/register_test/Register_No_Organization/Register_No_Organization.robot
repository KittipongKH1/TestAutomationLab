*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      file:///C:/Users/sarut/TestAutomationLab/StarterFiles/Registration.html
${BROWSER}  chrome

*** Test Cases ***
UAT-Lab04-002 Register Success No Organization
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text    id=firstname    Somyod
    Input Text    id=lastname     Sodsai
    Input Text    id=email        somyod@kkumail.com
    Input Text    id=phone        091-001-1234
    Click Button  id=registerButton

    Location Should Contain    Success.html
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.

    Capture Page Screenshot
    Close Browser
