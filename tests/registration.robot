*** Settings ***
Resource         ../resources/common.resource
Resource         ../resources/home.resource
Resource         ../resources/login.resource
Resource         ../resources/registration.resource
Resource         ../resources/my_account.resource

Suite Setup      Setup Test Environment
Test Setup       Setup Web Environment
Test Teardown    Teardown Web Environment

*** Test Cases ***
Scenario: Successful registration with valid data
    [Tags]    LOGIN    POSITIVE    SMOKE
    Given the client is on the Home Page
    And the client accesses the Login Page
    When the customer fills the email and accesses the registration page
    And the customer fills out the registration form with valid data
    And the customer submits the form
    Then the My Account page should be visible
