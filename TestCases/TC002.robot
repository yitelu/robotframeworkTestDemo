*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}    firefox
${URL}    http://www.google.com

*** Test Cases ***
Robot test cases
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Input Text  name:q  hello
  Clear Element Text  name:q
  Input Text  xpath://input[@title='Search' or @name='q']  Apple
  Close Browser
