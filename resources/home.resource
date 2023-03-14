*** Settings ***
Resource    common.resource


*** Keywords ***
Access Home Page 
    Go To    ${BASE_URL}

Access Login Page
    Click Element    //a[@class='login']