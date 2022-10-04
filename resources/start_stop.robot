*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/urls.robot
Resource    ../variables/demoshop_homepage_locators.robot

*** Keywords ***
start    
    Open Browser      ${demoshow_loginpage}    chrome
    Set Selenium Implicit Wait    10s
    #Click Element    ${homepage_login_button}
stop
    Close All Browsers