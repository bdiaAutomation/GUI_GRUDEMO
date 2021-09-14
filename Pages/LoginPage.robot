*** Settings ***
Resource   ../Base/BaseTest.robot
Resource  ../Resources/ElementsObject.robot

*** Keywords ***
Login with successful credentials
    Enter username  ${DEFAULT_USERNAME}
    Enter password  ${DEFAULT_PASSWORD}
    Submit Login

Enter username
    [Arguments]  ${user-name}
    BaseTest.Input Text data   ${username}  ${user-name}
    Log  Type the ${user-name}

Enter password
    [Arguments]  ${pwd}
    BaseTest.Input Text data   ${password}  ${pwd}
    Log  Type the ${pwd}

Submit Login
    BaseTest.Click Submit Button   ${loginButton} 
    Log  Click Submit button

Login With bad credentials
    [Arguments]  ${user-name}  ${pwd}  ${error_msg}
    Enter username  ${user-name}
    Enter password  ${pwd}
    Submit Login
    Element Should Contain  ${errorField}  ${error_msg}

Verify page title
    Location Should Be  https://grudemo.communaute-capdemat.fr/index.php?module=Home&action=index
    Title Should Be  CAPDEMAT

    