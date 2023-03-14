*** Settings ***
Resource    common.resource
Resource    pages/login_page.resource
Resource    home.resource


*** Keywords ***
Fill In Email
    [Arguments]    ${email}
    Input Text    ${LOGIN.INPUT_EMAIL}    ${email}

Fill In Password
    [Arguments]    ${password}
    Input Password    ${LOGIN.INPUT_PASSWORD}    ${password}

Submit Credentials
    Click Element    ${LOGIN.BUTTON_SIGN_IN}

Login
    [Arguments]    ${email}    ${password}
    Fill In Email    ${email}
    Fill In Password    ${password}
    Submit Credentials

My Account Page Should Be Displayed
    Page Should Contain Element    ${MY_ACCOUNT.PAGE_HEADING}
    Page Should Contain Element    ${MY_ACCOUNT.ORDER_DETAILS}
    Page Should Contain Element    ${MY_ACCOUNT.CREDIT_SLIPS}
    Page Should Contain Element    ${MY_ACCOUNT.INFORMATION}
    Page Should Contain Element    ${MY_ACCOUNT.MY_FAVORITE}

Login With Invalid Credentials Should Fail
    [Arguments]    ${email}    ${password}
    Access Login Page
    Login    ${email}    ${password}