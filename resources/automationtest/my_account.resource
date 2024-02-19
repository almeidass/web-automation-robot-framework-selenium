*** Settings ***
Documentation    My account page resources.

Resource         ../common.resource

*** Keywords ***
### Step Definitions ###
The My Account page should be visible
    My Account Page Should Be Visible

### Resources ###
My Account Page Should Be Visible
    Wait Until Element Is Visible    //h1[text()='My account']
