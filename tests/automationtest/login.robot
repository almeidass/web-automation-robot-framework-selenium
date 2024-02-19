*** Settings ***
Resource         ../../resources/common.resource
Resource         ../../resources/automationtest/home.resource
Resource         ../../resources/automationtest/login.resource
Resource         ../../resources/automationtest/my_account.resource

Test Setup       Setup Web Environment
Test Teardown    Teardown Web Environment

*** Test Cases ***
Valid Login
    Given the client is on the Home Page
    When the client accesses the Login Page
    And the client logs in with valid credentials
    Then the My Account page should be visible
