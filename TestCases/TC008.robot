*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
#${Browser}  firefox
#${URL}  https://www.google.com

*** Test Cases ***
TC_008 Test keywords variable
    ${Key_var}=  set variable  log to console
    run keyword  ${Key_var}  hello@gmail.com

    #run keyword if the condition to check the variable keyword's value
    ${var}=  set variable  YES
    run keyword if  '${var}'=='YES'  log to console  Value Found
    run keyword if  '${var}'=='NO'  log to console  Value Not Found

    #run the keyword condition
    ${myvar}=  set variable  NO
    run keyword if  '${myvar}'=='YES'  run keyword  ${Key_var}  2nd Value Found
    run keyword if  '${myvar}'=='NO'  run keyword  ${Key_var}  2nd Value Not Found

*** Keywords ***