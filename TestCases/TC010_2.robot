# Section8:
# Perform Keyboard Operations

*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  firefox
${URL}  http://www.thetestingworld.com

*** Test Cases ***
TC_010_2
    set selenium timeout  2 seconds
    #change the default timeout from 5 sec to 2 sec

    open browser  ${URL}  ${Browser}
    SeleniumLibrary.Maximize Browser Window

    click link  xpath://a[text()='Login']
    #click the login link

    Press Keys  name:username  hello
    #entering from keyboard

    Press keys  xpath://button[@type='submit']  \\13
    #ascii value of "enter" key on the keyboard is 13

    sleep  3 seconds

    close all browsers

*** Keywords ***