*** Settings ***
Documentation    Automated test for shopping cart
Suite Setup      Open Shop Webpage
Library  SeleniumLibrary

*** Variables ***
${CART_ITEMS_AMOUNT}    //span[@id='numItemsInCart']
${PRODUCT_VIEW}         //a[contains(text(),'colourful')]
${ADD_TO_CART_BUTTON}   //a[@id='button Cart']

*** Keywords ***
Prepare Env
    Set Screenshot Directory    screenshots
Open Shop Webpage
    Open Browser    htpp://localhost/   chrome
    Maximize Browser Window
Chceck If Shopping Cart Has ${amount} Products
    ${expected_tekst}   Set Variable If    '${amount}>'0'
    ...                 item(s) in cart
    ...                 items in cart
    Wait Untill Element Contains
    ...                 ${CART_ITEMS_AMOUNT}
    ...                 ${amount}   ${expected_tekst}
    ...                 timeout=  10s
Go To Product View
    click element       ${PRODUCT_VIEW}
Add Product to Shopping Card
    click element       ${ADD_TO_CART_BUTTON}
*** Test Cases ***
Adding Products To Shopping Cart Should Increse Products Amount
    Open Shop Webpage
    Chceck If Shopping Cart Has 0 Products
    Go To Product View
    Add Product to Shopping Card
    Chceck If Shopping Cart Has 1 Products
    [teardown]      Close Browser