*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
#${Browser}  firefox
#${URL}  https://www.google.com

*** Test Cases ***
TC_007 Test FOR loop in range
    @{List1}  create list  Hello  22  23.23  World  Abcd1234

    #print from 1~9 in the FOR loop
    FOR  ${i}  IN RANGE  1  10
         log to console  ${i}

    END

    #print everything in the List1 list
    FOR  ${i}  IN  @{List1}
         log to console  ${i}
    END

*** Keywords ***