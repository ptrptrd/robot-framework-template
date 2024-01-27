*** Settings ***
Documentation       Hello World Library implemented in Robot


*** Keywords ***
Hello From Robot
    [Documentation]    Log hello line with chosen name
    ...
    ...    | =Arguments= | =Description=    |
    ...    | name    | Name to log in hello line, by default World |
    [Arguments]
    ...    ${name}=World
    Log    Hello, ${name}!
