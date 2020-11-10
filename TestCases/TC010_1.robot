# Section8:
# Execute JavaScript at Runtime
# Perform Mouse Operations

*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  firefox
${URL}  http://www.thetestingworld.com

*** Test Cases ***
TC_010_1
    set selenium timeout  2 seconds
    #change the default timeout from 5 sec to 2 sec

    open browser  ${URL}  ${Browser}
    SeleniumLibrary.Maximize Browser Window

    execute javascript  window.scrollTo(0,1000)
    #run any javascript from the Robot via the browser (due to scroll is not part of web page element)
    #window.scrollTo(horizontal, vertical)

    BuiltIn.Sleep  1 seconds

    execute javascript  window.scrollTo(0,-1000)

    open context menu  xpath://span[contains(text(),'VIDEOS')]
    #open the context menu like right click mouse and show the context menu of the element.

    double click element  xpath://a[text()='Login']
    #perform the mouse double click function

    BuiltIn.Sleep  2 seconds

    mouse down  xpath://a[text()='Quick Demo']
    mouse up  xpath://a[text()='Quick Demo']
    #perform the single-mouse click via mouse down and mouse up

    BuiltIn.Sleep  3 seconds

    mouse over  xpath://span[contains(text(),'CERTIFICATIONS')]
    #perform the mouse-over via mouse cursor

    BuiltIn.Sleep  2 seconds

    close all browsers

*** Keywords ***