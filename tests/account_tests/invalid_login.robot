*** Settings ***
Resource            ../../resources/login.resource

Suite Setup         Setup Test Environment
Test Setup          Setup Web Environment
Test Teardown       Teardown Web Environment
Test Template       Login With Invalid Credentials Should Fail


*** Test Cases ***    USER NAME    PASSWORD
Invalid Username    invalid    ${DATA_SET.VALID_LOGIN.PASSWORD}
Invalid Password    ${DATA_SET.VALID_LOGIN.EMAIL}    invalid
Invalid Username And Password    invalid    whatever
Empty Username    ${EMPTY}    ${DATA_SET.VALID_LOGIN.PASSWORD}
Empty Password    ${DATA_SET.VALID_LOGIN.EMAIL}    ${EMPTY}
Empty Username And Password    ${EMPTY}    ${EMPTY}
