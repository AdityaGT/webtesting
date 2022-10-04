*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/urls.robot
Resource    ../resources/start_stop.robot
#Resource    ../variables/demoshop_homepage_locators.robot
Resource    ../resources/demoshop_login.robot
Library     DataDriver   ../datafiles/login_information.xlsx

Test Setup    start    #in start_stop file
Test Template   complete_login     
Test Teardown    stop    #in start_stop file
*** Test Cases ***
compleate_login    with    ${username}    ${password}    ${error_message}

*** Keywords ***
complete_login
    [Arguments]    ${username}    ${password}    ${error_message}
    Input Text    ${enter_email}    ${username}
    Input Text    ${enter_password}    ${password}
    Click Element    ${loginpage_login_button}
    Sleep    1s
    #Element Should Contain     ${error_update}    ${error_message}
    Page Should Contain    ${error_message}

    
