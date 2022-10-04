*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/demoshop_homepage_locators.robot
Resource    ../variables/loginpage_locators.robot
#Resource    ../datafiles/login_information.xlsx
Library    DataDriver    ../datafiles/login_information.xlsx
*** Keywords ***
complete_login
    [Arguments]    ${username}    ${password}    ${error_message}
    Click Element    ${homepage_login_button}
    Input Text    ${enter_email}    ${username}
    Input Text    ${enter_password}    ${password}
    Click Element    ${loginpage_login_button}
    Sleep    1s
    Page Should Contain    ${error_message}
