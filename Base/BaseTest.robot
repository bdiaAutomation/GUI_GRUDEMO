*** Settings ***
Resource  ../Resources/data.robot

*** Variables ***
&{url}   qa=https://grudemo.communaute-capdemat.fr
&{Browser}  chrome=chrome   gecko=firefox

*** Keywords ***
Open Browser and Maximize it
    [Documentation]  Open the browser and Maximize it
    Open Browser  ${url.${env}}  ${Browser.${BROWSER_NAME}}
    Maximize Browser Window

TearDown the Browser
    [Documentation]  Close the browser
    Close Browser

Input Text data
# Override the keyword Input Text
    [Documentation]  Override the keyword Input Text
    [Arguments]  ${selector}  ${textValue}
    Wait Until Element Is Visible  ${selector}  ${EXPLICIT_WAIT_TIMEOUT}
    Input Text  ${selector}  ${textValue}

Click Submit Button 
# Override the keyword Input Text
    [Documentation]  Override the keyword Click Button
    [Arguments]  ${selector}
    Wait Until Element Is Visible  ${selector}  ${EXPLICIT_WAIT_TIMEOUT}
    Click Button  ${selector}

