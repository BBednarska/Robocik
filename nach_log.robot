*** Variables ***

${url}  https://pean-admin-center-web.azurewebsites.net/tasks/onboarding

*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary

*** Test Cases ***

Test new user
open browser    ${url}  Chrome
