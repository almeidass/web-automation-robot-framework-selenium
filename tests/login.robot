*** Settings ***
Resource         ../resources/common.resource
Resource         ../resources/home.resource
Resource         ../resources/login.resource
Resource         ../resources/my_account.resource

Suite Setup      Setup Test Environment
Test Setup       Setup Web Environment
Test Teardown    Teardown Web Environment

*** Test Cases ***
Scenario: Successful login with valid credentials
    Given the client is on the Home Page
    When the client accesses the Login Page
    And the client logs in with valid credentials
    Then the My Account page should be visible

Scenario: Failed login with invalid credentials
    Given the client is on the Home Page
    When the client accesses the Login Page
    And the client logs in with invalid credentials
    Then an error message "Authentication failed." should be displayed

Scenario: Failed login with invalid password
    Given the client is on the Home Page
    When the client accesses the Login Page
    And the user enters a valid email and an invalid password and tries to log in
    Then an error message "Authentication failed." should be displayed

Scenario: Failed login with blank password
    Given the client is on the Home Page
    When the client accesses the Login Page
    And the client leaves the password field blank and tries to log in
    Then an error message "Password is required." should be displayed

Scenario: Failed login with blank email
    Given the client is on the Home Page
    When the client accesses the Login Page
    And the client leaves the email field blank and tries to log in
    Then an error message "An email address required." should be displayed
