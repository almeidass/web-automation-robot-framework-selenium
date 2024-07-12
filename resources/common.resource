*** Settings ***
Documentation      Common resources.

Library            FakerLibrary
Library            SeleniumLibrary
Resource           setup.resource
Variables          data/data.yaml

*** Keywords ***
### Resources ###
Generate New email
    ${email}=        FakerLibrary.Email
    RETURN           ${email}
