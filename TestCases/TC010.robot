# Section8:
# Take screenshot
# Close all browsers
# Goto | Go Back | Get Location
# Execute JavaScript at Runtime

*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  firefox
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_010
    set selenium timeout  2 seconds
    #change the default timeout from 5 sec to 2 sec

    open browser  ${URL}  ${Browser}
    SeleniumLibrary.Maximize Browser Window

    input text  name:fld_username  Testing
    input text  name:fld_email  testingworldindia@gmail.com
    input text  name:fld_password  abcd

    capture page screenshot  ./ScreenCapture/TC010.png
    #capture the screenshot and store in the dedicated file directory location.

    open browser  http://www.google.com  ${Browser}
    #open another browser

    ${URL1}=  get location
    log to console  ${URL1}
    #print google.com to console

    go to  http://www.yahoo.com
    #redirect the browser to yahoo.com

    ${URL2}=  get location
    log to console  ${URL2}
    #print yahoo.com to console

    go back
    #go back to google.com like press the back button

    capture page screenshot  ./ScreenCapture/TC010_2.png
    #capture the screenshot and store in the dedicated file directory location.

    close all browsers
    #clsoe all browsers opened by the robot script


*** Keywords ***