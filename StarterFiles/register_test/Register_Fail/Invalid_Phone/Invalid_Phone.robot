*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      file:///C:/Users/sarut/TestAutomationLab/StarterFiles/Registration.html
${BROWSER}  chrome

*** Test Cases ***
UAT-Lab04-002-Invalid-Phone-Number
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         1234
    Click Button  id=registerButton

    Page Should Contain    Please enter a valid phone number!!

    Capture Page Screenshot
    Close Browser
