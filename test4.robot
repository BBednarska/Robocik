*** Settings ***
Library  Collections

*** Variables ***
${zmienna}  moja zmienna jest fajna
${lista}  Adam Bartosz cecylia Damian
*** Test Cases ***

Test zmiennej
    log to console  ${zmienna}
    log ${zmienna}

Test listy
   FOR  ${imie}  IN  @{lista}
    log to console
