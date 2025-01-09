*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary

*** Variables ***

${URL}              https://www.physiotherapie-in-koepenick.de/  #zapisywanie adresu testowanej strony
${BUTTON_TITLE}     Osteopathie
${ACCEPT_BUTTON}    Xpath://a[contains(@class, 'accept-consent-all')]
${TEAM_LINK}        Xpath=(//a[@href="/team"])[2]

*** Keywords ***
Open Web                        #tworzenie komendy do otwierania i maksymalizowania okna przeglądarki
    open browser    ${URL}  Chrome
    maximize browser window

Check If Open and Click ${link}
    Open Page And Accept Cookies
    click element   ${link}

Open Page And Accept Cookies
    Open Web
    click element  ${ACCEPT_BUTTON}   #akceptowanie plików cookies

*** Test Cases ***

Test Open Browser               #otwieranie i maksymalizacja stronę
    Open Web                    #refaktoryzacja kodu
    title should be  Über uns   #potwierdzenie czy strona się otworzyła

Test Click Team                 #sprawdzenie, czy poszczególne elementy są klikalne
    Check If Open and Click ${TEAM_LINK}
    title should be  Team
    capture page screenshot     screen_team.png   #zrzut ekranu do raportu

Test Scroll & Screenshot        #potwierdzenie czy możliwe jest skrollowanie na stronie
    Check If Open and Click ${TEAM_LINK}
    execute javascript  window.scrollBy(0,4250)
    capture page screenshot      screen_me.png    #zrzut ekranu do raportu

Test Find Osteopathie           #potwierdzenie czy na stronie zawarte są odpowiednie wyrażenia
    Open Page And Accept Cookies
    page should contain  ${BUTTON_TITLE}
    [teardown]    close browser  #sprzątanie po teście

