*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resources/data.robot
Resource  ../../../Base/BaseTest.robot
Resource  ../../../Pages/LoginPage.robot

Test Setup  BaseTest.Open Browser and Maximize it
# Test Teardown  BaseTest.TearDown the Browser

# Test Template  LoginPage.Login With bad credentials



# *** Test Cases ***                                  USERNAME        PASSWORD            ERROR_MSG
# Verify Login Fail - Blank username and password     ${EMPTY}        ${EMPTY}            Epic sadface: Username is required
# Verify Login Fail - Wrong username                  standard_us     secret_sauce        Epic sadface: Username and password do not match any user in this service
   

*** Test Cases *** 
Verify sucessfull login
    LoginPage.Login with successful credentials
    
     

