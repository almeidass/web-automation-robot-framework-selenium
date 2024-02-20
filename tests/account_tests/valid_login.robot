*** Settings ***
Resource            ../../resources/login.resource
Resource            ../../resources/home.resource

Suite Setup         Setup Test Environment
Test Setup          Setup Web Environment
Test Teardown       Teardown Web Environment


*** Test Cases ***
Valid Login
    Access Login Page
    Fill In Email    ${DATA_SET.VALID_LOGIN.EMAIL}
    Fill In Password    ${DATA_SET.VALID_LOGIN.PASSWORD}
    Submit Credentials
    My Account Page Should Be Displayed
