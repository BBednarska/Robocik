*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${url}   https://empik.com/bestsellery

*** Test Cases ***
Test Empik
    open browser  ${url}  Chrome
    sleep  2
    maximize browser window
    click element  css=button[data-ta="cookie-btn-accept-all"]

    @{best}  Get WebElements  css=.ta-product-title
    @{lista}  create list
    FOR  ${element}  IN  @{best}
      log  ${element.text}
    END