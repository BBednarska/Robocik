*** Variables ***

${url}  https://www.physiotherapie-in-koepenick.de/
*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary
*** Test Cases ***

Test open browser
    open browser    ${url}  Chrome
    close browser

Test click coockies
    open browser    ${url}  Chrome
    sleep   1
    click element   Xpath:/html/body/div/div[3]/div/div[2]/a[1]

Test click team
    open browser    ${url}  Chrome
    sleep   1
    click element   Xpath:/html/body/div/div[3]/div/div[2]/a[1]
    sleep   1
    click element   Xpath:/html/body/div/div[1]/div[1]/div[2]/div/div[1]/div[2]/div/div/div[2]/div[2]/div/div/a
    sleep   2
    capture page screenshot     screen_team.png

Test scroll
    open browser    ${url}  Chrome
    sleep   1
    click element   Xpath:/html/body/div/div[3]/div/div[2]/a[1]
    sleep   1
    click element   Xpath:/html/body/div/div[1]/div[1]/div[2]/div/div[1]/div[2]/div/div/div[2]/div[2]/div/div/a
    sleep   2
    execute javascript  window.scrollBy(0,3500)
    sleep   2
    capture page screenshot  screen_me.png
