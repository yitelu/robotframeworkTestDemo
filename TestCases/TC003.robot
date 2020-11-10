*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  firefox
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
Robot test cases
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window

  #after each line of code and would wait 2 seconds
  #Set Selenium Speed  2seconds

  #input edit text
  Input Text  name:fld_username  John9876
  Input Text  name:fld_email  john9876@gmail.com
  Input Text  name:fld_password  john@12345678
  Input Text  name:fld_cpassword  john@12345678

  #radio button
  Select Radio Button  add_type  office

  #checkbox
  Select Checkbox  name:terms

  #click the hyperlink with a href link
  Click Link  xpath://a[text()='Read Detail']
  Click Link  xpath://a[@class='close']

  #work on List or dropdown by Index
  Select From List By Index  name:sex  1

  #work on List or dropdown by Value, 58 is Denmark
  Select From List By Index  name:country  58

  #after each line of code and would wait 2 seconds
  Set Selenium Speed  2seconds

  #work on List or dropdown by Label,
  Select From List By Label  name:state  Fyn

  #click submit button
  #Click Button  xpath: //input[@type='submit' and @value='Sign up']

  #Close Browser