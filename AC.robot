*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary

*** Variables ***

${url}  https://pean-admin-center-web.azurewebsites.net/sign-up
*** Keywords ***
Open browser and sign up
    open browser    ${url}  Chrome
    maximize browser window
    sleep  1
    click element  Xpath://*[@id="inspire"]/div/main/div/div/div/div/div/div[4]/a/span[4]
    sleep  1
    click element  Xpath://*[@id="i0116"]
    sleep  1
    input text  Xpath://*[@id="i0116"]  barbara.bednarska@m365x10192431.onmicrosoft.com
    sleep  3
    click button    id:idSIButton9
    sleep  5
    click button    id:idSIButton9
    sleep  2
    click button    id:idSIButton9

*** Test Cases ***

#Test neue Benutzer anlegen
#
#    Open browser and sign up
#    sleep   3
#    click element   Xpath://*[@id="itemUser"]/div[2]/div  #new user
#    sleep   3
#    click element   Xpath://*[@id="formusageLocation"]/div/div/div/div[1]/div/div[3]/div  #country
#    sleep  3
#    press keys   Xpath://*[@id="formusageLocation"]   ENTER
#    sleep  3
#    press keys   Xpath://*[@id="formusageLocation"]   ENTER
#    sleep   3
#    click element   //*[@id="inspire"]/div/main/div[1]/div[2]/div/div/div[4]/div[1]/div/div/div/div/div/button/span[1]
#    press keys  //*[@id="inspire"]/div/main/div[1]/div[2]/div/div/div[4]/div[1]/div/div/div/div/div/button/span[1]  ENTER
#    sleep  3

Test Mailbox Spracheinstellungen
    Open browser and sign up
    sleep  4
    click element   Xpath://*[@id="itemMailbox"]/div[2]/div
    sleep  4
    click element  id:input-49
    sleep  4
    press keys  Xpath:/html/body/div[1]/div/div/main/div/div[2]/div/div/div[1]/div[1]/div/form/div[2]/div[1]/div/div/div/input  SPACE
    sleep  3
    click element  Xpath://*[@id="inspire"]/div/main/div/div[2]/div/div/div[2]/div[1]/form/div/div[1]/div/div/div/div/div[5]/i  #choose mailbox
    sleep  2
    press keys  Xpath:/html/body/div[2]/div/div/div/div[5]/div/div[2]  ENTER
    sleep  4
    click button  Xpath://*[@id="inspire"]/div/main/div/div[2]/div/div/div[2]/div[1]/form/div/div[2]/div/button
    sleep  4
    click button  Xpath://*[@id="inspire"]/div/main/div/div[2]/div/div/div[3]/div[1]/div/form/div[1]/div[1]/div/div[4]/i
    sleep  3
    press keys  Xpath://*[@id="inspire"]/div/main/div/div[2]/div/div/div[3]/div[1]/div/form/div[1]/div[1]/div/div[4]/i  ENTER





