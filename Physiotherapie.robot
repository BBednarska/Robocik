*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary

*** Variables ***

${URL}              https://www.physiotherapie-in-koepenick.de/  #zapisuję adres testowanej strony
${PAGE_TITLE}       Osteopathie
${ACCEPT_BUTTON}    Xpath://a[contains(@class, 'accept-consent-all')]
${TEAM_LINK}        Xpath=(//a[@href="/team"])[2]

*** Keywords ***
Open Web                        #tworzę komendę do otwierania i maksymalizowania okna przeglądarki
    open browser    ${URL}  Chrome
    maximize browser window
Open Page And Accept Cookies
    Open Web
    click element  ${ACCEPT_BUTTON}   #akceptowanie plikw cookies

*** Test Cases ***

Test Open Browser               #otwieram i maksymalizuję stronę
    Open Web                     #refaktoryzacja kodu
    title should be  Über uns   #potwierdzenie czy strona się otworzyła

Test Click Team                 #sprawdzam, czy poszczególne elementy są klikalne
    Open Page And Accept Cookies
    click element   ${TEAM_LINK}
    title should be  Team
    capture page screenshot     screen_team.png   #robię zrzut ekranu do raportu

Test Scroll & Screenshot  #sprawdzam, czy możliwe jest skrollowanie na stronie
    OpenPageAndAcceptCookies
    click element   ${TEAM_LINK}
    execute javascript  window.scrollBy(0,4250)


    capture page screenshot  screen_me.png  #robię zrzut ekranu do raportu

Test Find Osteopathie  #sprawdzam, czy na stronie zawarte są odpowiednie wyrażenia
    OpenPageAndAcceptCookies
    page should contain  ${PAGE_TITLE}


