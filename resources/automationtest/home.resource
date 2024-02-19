*** Settings ***
Documentation    Home page resources.

Resource    ../common.resource

*** Variables ***
${HEADER_LOGO}      //div[@id='header_logo']
${BUTTON_SIGNIN}    //a[@class='login']

*** Keywords ***
### Step Definitions ###
The client is on the Home Page
    Access Home Page Via URL

The client accesses the Login Page
    Access Login Page


### Resources ###
Access Home Page Via URL
    Go To    ${BASE_URL}
    Wait Until Element Is Visible    ${HEADER_LOGO}

Access Login Page
    Click Element    ${BUTTON_SIGNIN}
