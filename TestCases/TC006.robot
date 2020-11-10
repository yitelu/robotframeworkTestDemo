*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
#${Browser}  firefox
#${URL}  https://www.google.com

*** Test Cases ***
TC_006 Variable Test
    @{List1}  create list  Hello  22  23.23  World  Abcd1234
    ${list_length}  get length  ${List1}
    log to console  ${list_length}

    ${list_data}=  get From list  ${List1}  3
    log to console  ${list_data}



*** Keywords ***
