*** Settings ***
Library     OperatingSystem
Resource    common.resource


*** Keywords ***
Setup Web Environment
    ${BROWSER}=    Get Environment Variable    BROWSER    default=chrome

    Open Browser    url=${BASE_URL}    browser=${BROWSER}
    Maximize Browser Window

Teardown Web Environment
    Capture Page Screenshot    EMBED
    Close All Browsers
