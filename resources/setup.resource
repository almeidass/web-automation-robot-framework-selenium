*** Settings ***
Library     OperatingSystem
Resource    common.resource


*** Keywords ***
Setup Web Environment
    ${BROWSER}=    Get Environment Variable    BROWSER    default=Chrome

    Open Browser    url=about:blank    browser=${BROWSER}

Teardown Web Environment
    Capture Page Screenshot    EMBED
    Close All Browsers
