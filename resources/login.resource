*** Settings ***
Documentation    Login page resources.

Resource         common.resource

*** Variables ***
${INPUT_EMAIL}            //input[@id='email']
${INPUT_PASSWORD}         //input[@id='passwd']
${BUTTON_SUBMIT_LOGIN}    //button[@id='SubmitLogin']

*** Keywords ***
### Step Definitions ###
The client logs in with valid credentials
    Login
    ...    email=${DATA}[${EXECUTION_ENVIRONMENT}][LOGIN][EMAIL]
    ...    password=${DATA}[${EXECUTION_ENVIRONMENT}][LOGIN][PASSWORD]

The client logs in with invalid credentials
    Login
    ...    email=${DATA}[${EXECUTION_ENVIRONMENT}][LOGIN][EMAIL]x
    ...    password=${DATA}[${EXECUTION_ENVIRONMENT}][LOGIN][PASSWORD]x

The user enters a valid email and an invalid password and tries to log in
    Login
    ...    email=${DATA}[${EXECUTION_ENVIRONMENT}][LOGIN][EMAIL]
    ...    password=${DATA}[${EXECUTION_ENVIRONMENT}][LOGIN][PASSWORD]x

The client leaves the password field blank and tries to log in
    Login
    ...    email=${DATA}[${EXECUTION_ENVIRONMENT}][LOGIN][EMAIL]
    ...    password=${EMPTY}

The client leaves the email field blank and tries to log in
    Login
    ...    email=${EMPTY}
    ...    password=${DATA}[${EXECUTION_ENVIRONMENT}][LOGIN][PASSWORD]

The user enters an invalid email format and tries to log in
    Login
    ...    email=asdf.com
    ...    password=${DATA}[${EXECUTION_ENVIRONMENT}][LOGIN][PASSWORD]

An error message "${message}" should be displayed
    Error Message Should Be Displayed    ${message}

### Resources ###
Login
    [Arguments]        ${email}=${email}    ${password}=${password}
    Input Text         ${INPUT_EMAIL}    ${email}
    Input Password     ${INPUT_PASSWORD}    ${password}
    Click Element      ${BUTTON_SUBMIT_LOGIN}

Error Message Should Be Displayed
    [Arguments]    ${message}
    Page Should Contain    ${message}
