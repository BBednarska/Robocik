*** Settings ***
Library  RequestsLibrary
*** Variables ***
${url}  http://127.0.0.1:5000
*** Test Cases ***
Test create new game
    [Documentation]