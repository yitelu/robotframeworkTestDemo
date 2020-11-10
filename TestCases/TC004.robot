*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  firefox
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
Robot test cases
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Enter Username Password Email  JohnAkaUser  john123@gmail.com  PW123456

*** Keywords ***
#write keywords in Test Cases with Arguments
Enter Username Password Email
  #input edit text
  [Arguments]  ${username}  ${email}  ${password}
  Input Text  name:fld_username  ${username}
  Input Text  name:fld_email  ${email}
  Input Text  name:fld_password  ${password}
  Input Text  name:fld_cpassword  ${password}
