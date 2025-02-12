*** Settings ***
Documentation    Suite documentation
Library    Browser
Metadata    Browser    ${BROWSER}
Metadata    Headless    ${HEADLESS}
Metadata    app_url    ${APP_URL}


*** Variables ***
${BROWSER}    not_set
${HEADLESS}    No
${APP_URL}    localhost:3000


*** Test Cases ***
First
    [Documentation]    Very important documentation
    Log    Hello there
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Page    ${APP_URL}

    Type Text    input[id="todo-input"]    do something
    Click    button[id="add-todo-button"]

    Take Screenshot
