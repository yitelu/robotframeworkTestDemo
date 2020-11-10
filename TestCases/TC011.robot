# Section9: Multi Windows Handling

# Handle Multiple Browser

*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  firefox
${URL}  http://www.thetestingworld.com
${URL2}  http://www.google.com
${window_alias_1}  1B
${window_alias_2}  2B

*** Test Cases ***
TC_011
    set selenium timeout  3 seconds
    #change the default timeout from 5 sec to 2 sec

    open browser  ${URL}  ${Browser}  alias=${window_alias_1}
    SeleniumLibrary.Maximize Browser Window

    open browser  ${URL2}  ${Browser}  alias=${window_alias_2}
    SeleniumLibrary.Maximize Browser Window

    #switch browser might not work!
    SeleniumLibrary.Switch Browser  ${window_alias_1}
    #switch to the 1st browser
    ${url1}=  get location
    #get the url from the 1st browser
    log to console  ${url1}
    #print the url of 1st browser
    click link  xpath://a[text()='Login']

    SeleniumLibrary.Switch Browser  ${window_alias_2}
    #switch to the 2nd browser
    ${url2}=  get location
    #get the url from the 2nd browser
    log to console  ${url2}
    #print the url of 2nd browser
    input text  name:q  Hello

    sleep  3 seconds

    close all browsers

*** Keywords ***