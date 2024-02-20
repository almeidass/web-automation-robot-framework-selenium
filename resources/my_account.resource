*** Settings ***
Documentation    My account page resources.

Resource         common.resource

*** Variables ***
${HEADER_MY_ACCOUNT}    //h1[text()='My account']

*** Keywords ***
### Step Definitions ###
The My Account page should be visible
    My Account Page Should Be Visible

### Resources ###
My Account Page Should Be Visible
    Wait Until Element Is Visible    ${HEADER_MY_ACCOUNT}
