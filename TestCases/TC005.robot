*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${Browser}  firefox
#${URL}  https://www.google.com

*** Test Cases ***
TC_005 Variable Test
    ${Var1}=  set variable  HelloWorld
    log to console  ${Var1}

*** Keywords ***
