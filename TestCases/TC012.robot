# Section10: Apply Validations

# Page contains & page should not contains
# Page should contains elements
# Validate checkbox

*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  firefox
${URL}  http://www.thetestingworld.com/


*** Test Cases ***
TC_011
    set selenium timeout  3 seconds
    #change the default timeout from 5 sec to 2 sec

    open browser  ${URL}  ${Browser}
    SeleniumLibrary.Maximize Browser Window

    page should contain  VIDEOS
    #page should contain the string of VIDEO, if no found and test would fail
    # there's opposite of "page should not contain" ...
    click element  xpath://a[text()='Login']

    page should contain textfield  name:username
    #check if there's a textfield of login username
    input text  name:username  test@test.com

    sleep  1 seconds
    SeleniumLibrary.Checkbox Should Not Be Selected  name:remember

    sleep  2 seconds

    select checkbox  name:remember
    SeleniumLibrary.Checkbox Should Be Selected  name:remember
    #check if the checkbox is selected or not selected


    sleep  2 seconds

    close all browsers

*** Keywords ***