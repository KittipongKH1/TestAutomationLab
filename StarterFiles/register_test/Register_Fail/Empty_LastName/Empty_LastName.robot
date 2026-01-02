*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      file:///C:/Users/sarut/TestAutomationLab/StarterFiles/Registration.html
${BROWSER}  chrome

*** Test Cases ***
UAT-Lab04-002-Empty-Last-Name
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text    id=firstname     Somyod
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton

    Page Should Contain    Please enter your last name!!

    Capture Page Screenshot
    Close Browser
