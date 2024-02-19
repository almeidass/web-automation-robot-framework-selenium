*** Settings ***
Documentation    Login page resources.

Resource         ../common.resource

*** Variables ***
${INPUT_EMAIL}            //input[@id='email']
${INPUT_PASSWORD}         //input[@id='passwd']
${BUTTON_SUBMIT_LOGIN}    //button[@id='SubmitLogin']

*** Keywords ***
### Step Definitions ###
The client logs in with valid credentials
    Login    grit70@uorak.com    123@Mudar

### Resources ###
Login
    [Arguments]        ${email}    ${password}
    Input Text         ${INPUT_EMAIL}    ${email}
    Input Password     ${INPUT_PASSWORD}    ${password}
    Click Element      ${BUTTON_SUBMIT_LOGIN}
