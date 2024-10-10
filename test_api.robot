*** Settings ***
Library  RequestsLibrary
*** Variables ***
${url}  http://127.0.0.1:5000
*** Test Cases ***
Test create new game
    [Documentation]  test tworzenia nowej gry
    ${response}  POST  ${url}/game
    should be equal as numbers    ${response.status_code}    201
    ${json_data}    set variable    ${response.json()}
    should be equal     ${json_data["message"]}  New game created
    set suite variable    ${game_id}    ${json_data["game_id"]}
    log  ${game_id}
Test Get Game Status
    [Documentation]  test pobierania ststusu gry
    ${response}  GET    ${url}/game/${game_id}
    should be equal as numbers  ${response.status_code}    200
    ${json_data}    set variable    ${response.json()}
    log  ${json_data}
    should be empty     ${json_data["moves"]}
Make first move
    [Documentation]  Test wykonania pierwszego ruchu
    ${body}  create dictionary  cellIndex=3
    ${response}  POST    ${url}/game/${game_id}/move   json=${body}
    should be equal as numbers  ${response.status_code}  200
    ${json_data}    set variable    ${response.json()}
    log   ${json_data}
    should be equal  ${json_data["game_id"]}  ${game_id}
    should be equal  ${json_data["message"]}  Move made
    should be equal  ${json_data["moves"]}  3X
Make Invalid Move
    [Documentation]   Test wykonania ruchu w tym samym polu
    ${body}  create dictionary  cellIndex=3
    ${response}  POST    ${url}/game/${game_id}/move   json=${body}
    should be equal as numbers  ${response.status_code}  400
    ${json_data}    set variable    ${response.json()}
    log   ${json_data}
