*** Settings ***
Resource            ../resources/search_google.resource

Test Setup          Setup Web Environment
Test Teardown       Teardown Web Environment


*** Test Cases ***
Pesquisar Termo No Google
    Access Google
    Search Term    Robot Framework
    Search Page Should Open
