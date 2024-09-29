*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  file:///C:/Users/user/Downloads/webTicTacToe-master/webTicTacToe-master/index.html

*** Test Cases ***
#Test New Game Button
  #  [Documentation]  Test otwiera aplikację webową i klika przycisk New Game
   # open browser    ${url}  Edge
    #sleep   2
#    maximize browser window
#    click element   ID:new-game
#    sleep   2
#    capture page screenshot  screen01.png
#    close browser
#Test Click Cell and Verify
#    [Documentation]  Test otwiera nową grę i klika w pole
#    open browser    ${url}  Edge
#    sleep   2
#    maximize browser window
#    click element   ID:new-game
#    sleep   2
#    click element   xpath://*[@id="game-board"]/div[2]/div[2]
#    sleep   2
#    ${cell_text}    Get Text    xpath://*[@id="game-board"]/div[2]/div[2]
#    log     ${cell_text}
#    should be equal    ${cell_text}  X
Test Click double
    [Documentation]  Test otwiera nową grę i klika dwa razy w pole
    open browser    ${url}  Edge
    sleep   2
    maximize browser window
    click element   ID:new-game
    sleep   2
    click element   xpath://*[@id="game-board"]/div[2]/div[2]
    sleep   2
    ${cell_text}    Get Text    xpath://*[@id="game-board"]/div[2]/div[2]
    log     ${cell_text}
    should be equal    ${cell_text}  X
    click element   xpath://*[@id="game-board"]/div[2]/div[2]
    sleep   1
    alert should be present
    sleep   1
    ${cell_text}  Get Text  xpath://*[@id="game-board"]/div[2]/div[2]
    log     ${cell_text}
    should be equal    ${cell_text}  X
