*** Settings ***
Resource                         ../resources/importer.robot

*** Keywords ***

Detail Passangers Identity
    [Arguments]                        ${notes}         ${name}          ${age}          ${passport}
    Input Passangers Note              ${notes}
    Input Passagers Name               ${name}
    Input Passagers Age                ${age}
    Input Passagers Passport           ${passport}