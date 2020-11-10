# Section7: waits and timeouts
# Set Selenium Speed & Sleep
# Set & Gat Selenium Timeout
# Implicitly Wait


*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  firefox
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_009 Validate Login and Logout
    ${speed}=  get selenium speed
    log to console  ${speed}
    #the default selenium speed is 0

    open browser  ${URL}  ${Browser}
    SeleniumLibrary.Maximize Browser Window

    ${tm}=  get selenium timeout
    log to console  ${tm}
    #get the default timeout for Selenium
    #default timeout is 5

    set selenium timeout  2 seconds
    #change the default timeout from 5 sec to 2 sec

    SeleniumLibrary.Wait Until Page Contains  Testing
    #default would wait for 2 sec before timeout
    #check if the page contains "Testing" words

    sleep  2 seconds
    #the sleep method only works for this specific step only

    set selenium speed  2 seconds
    #If set the selenium speed to 2 and all speed in test would be change to the selenium speed of 2

    ${default_T}=  get selenium implicit wait
    log to console  ${default_T}
    #get the default selenium implicit wait value
    #default implicit wait is 0

    set selenium implicit wait  7 seconds
    #make the selenium implicit wait if the "element with locator name not found"

    input text  name:fld_username  Testing
    input text  name:fld_email  testingworldindia@gmail.com
    input text  name:fld_password  abcd

    ${speed}=  get selenium speed
    log to console  ${speed}
    #got the value of 2 in speed

*** Keywords ***