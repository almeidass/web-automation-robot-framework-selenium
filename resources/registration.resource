*** Settings ***
Documentation    Registration page resources.

Resource         common.resource

*** Variables ***

*** Keywords ***
### Step Definitions ###
The customer fills out the registration form with valid data
    Sleep    5s
    Click Element    //label[@for='id_gender1']
    ${first_name}=    FakerLibrary.First Name
    Input Text    //input[@id='customer_firstname']    ${first_name}
    ${last_name}=    FakerLibrary.Last Name
    Input Text    //input[@id='customer_lastname']    ${last_name}
    ${password}=    FakerLibrary.Password    length=10
    Input Text    //input[@id='passwd']    ${password}
    Select From List By Value    //select[@id='days']    10
    Select From List By Value    //select[@id='months']    10
    Select From List By Value    //select[@id='years']    2000
    ${company}=    	FakerLibrary.Company
    Input Text    //input[@id='company']    ${company}
    ${street_address1}=    FakerLibrary.Street Address
    Input Text    //input[@id='address1']    ${street_address1}
    ${street_address2}=    FakerLibrary.Street Name
    Input Text    //input[@id='address2']    ${street_address2}
    ${city}=    FakerLibrary.City
    Input Text    //input[@id='city']    ${city}
    ${state}=    FakerLibrary.State
    Select From List By Label    //select[@id='id_state']    ${state}
    ${zipcode}=    FakerLibrary.Zipcode
    Input Text    //input[@id='postcode']    ${zipcode}
    ${phone}=    FakerLibrary.Phone Number
    Input Text    //input[@id='phone']    ${phone}

    ${phone}=    FakerLibrary.Random Number    digits=10
    Input Text    //input[@id='phone']    ${phone}
    ${phone_mobile}=    FakerLibrary.Random Number    digits=10
    Input Text    //input[@id='phone_mobile']    ${phone_mobile}

The customer submits the form
    Click Element    //button[@id='submitAccount']
