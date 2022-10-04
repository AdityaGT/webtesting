*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${enter_email}    xpath://input[@id='Email']
${enter_password}    xpath://input[@name='Password']
${loginpage_login_button}    xpath://input[@value='Log in']
${error_update}    xpath:/html/body/div[4]/div[1]/div[4]/div[2]/div/div[2]/div[1]/div[2]/div[2]/form/div[1]/div