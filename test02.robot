*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}   https://Google.com
${filename}   screenshot
${counter}   1
*** Keywords ***
Take Screenshot
    ${filename}  set variable  screenshot-${counter}.png
    capture page screenshot  ${filename}
    ${counter}  convert to integer  ${counter}
    ${counter}  set variable  ${counter +1}
    set suite variable  ${counter}

*** Test Cases ***
Test open browser
    open browser  https://google.com  Chrome
    sleep  2
    maximize browser window
    click element  id:L2AGLb
    sleep  2
    input text  id:APjFqb  Merito
    Take Screenshot
    sleep  2
    press keys  name:q   ENTER
    sleep  2
    element attribute value should be  id:APjFqb   value  Merito
    Take Screenshot
    sleep  2
    execute javascript  window.scrollBy(0,900)
    sleep  5





