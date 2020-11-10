# Section8:
# Wait Keyword Commands

#wait until page contains
#wait until page contains element
#wait until element contains
#wait until element visible
#wait until element enable

*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  firefox
${URL}  http://www.thetestingworld.com

*** Test Cases ***
TC_010_3
    set selenium timeout  2 seconds
    #change the default timeout from 5 sec to 2 sec

    open browser  ${URL}  ${Browser}
    SeleniumLibrary.Maximize Browser Window

    wait until page contains  VIDEOS
    #wait until page contains the string words "VIDEOS"

    wait until element contains  xpath://a[text()='Login']  Login
    #wait until the element contains the text "Login"

    #then click the link of Login
    click link  xpath://a[text()='Login']

    sleep  5 seconds

    wait until page contains element  xpath://span[contains(text(),'VIDEOS')]
    #wait until page contains specific element

    click element  //span[contains(text(),'VIDEOS')]
    #wait untile the span contains "VIDEOS" and click the video span (default wait for 5 sec)

    sleep  3 seconds

    close all browsers

*** Keywords ***