*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${enter_email}    xpath://input[@id='Email']
${enter_password}    xpath://input[@name='Password']
${loginpage_login_button}    xpath://input[@value='Log in']
${error_update}    xpath://div[@class='validation-summary-errors']