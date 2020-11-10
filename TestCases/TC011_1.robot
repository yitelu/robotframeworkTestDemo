# Section9: Multi Windows Handling

# Handle Multiple Tabs

*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  firefox
${URL}  http://www.robotframework.org/


*** Test Cases ***
TC_011
    set selenium timeout  3 seconds
    #change the default timeout from 5 sec to 2 sec

    open browser  ${URL}  ${Browser}
    SeleniumLibrary.Maximize Browser Window

    click element  //a[text()='GitHub']

    sleep  3 seconds

    SeleniumLibrary.Select Window  Robot Framework
    #select the other tab by its tab title name

    sleep  3 seconds

    SeleniumLibrary.Select Window  GitHub - robotframework/robotframework: Generic automation framework for acceptance testing and RPA
    #switch back to the tab of GitHub

    sleep  3 seconds

    close all browsers

*** Keywords ***