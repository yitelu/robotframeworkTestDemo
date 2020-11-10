# Section10: Apply Validations

# Validate Text on Element
# Validate Title / Element Enable / Visible

*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  firefox
${URL}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_011
    set selenium timeout  3 seconds
    #change the default timeout from 5 sec to 2 sec

    open browser  ${URL}  ${Browser}
    SeleniumLibrary.Maximize Browser Window

    element text should be  xpath://div[@id='tab-content1']/p  Register now and kick start your career as a Software Testing Pro!
    #validate the exact text in the page

    element should contain  xpath://div[@id='tab-content1']/p  Software Testing Pro!
    #validate partial text

    input text  name:fld_username  hello

    title should be  Login & Sign Up Forms
    #validate the page's title

    element should be enabled  name:fld_username
    #the element of username should be enable
    #or the reverse is "element should be disabled"

    element should be visible  name:fld_username
    #validate if that element should be visible

    sleep  2 seconds

    close all browsers

*** Keywords ***