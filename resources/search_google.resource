*** Settings ***
Resource    common.resource

*** Keywords ***
*** Keywords ***
Access Google
    Go To    ${BASE_URL}
    Title Should Be    Google

Search Term
    [Arguments]    ${term}
    Set Test Variable    ${TERM}    ${term}

    Input Text    //input[@name='q']    ${term}
    Press Keys    None    ENTER
    Title Should Be    ${term} - Pesquisa Google

Search Page Should Open
    Page Should Contain Element    //h3[text() = '${TERM}']
    Page Should Contain Element    //cite[text() = 'https://robotframework.org']
