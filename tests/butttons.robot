*** Settings ***

Resource        ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Deve realizar um clique curto
    [tags]                       short
    Go To Botoes
    Click Element                id=io.qaninja.android.twp:id/ivItemIcon
    Wait Until Page Contains     Botão clique simples
    Click Element                id=io.qaninja.android.twp:id/short_click
    Wait Until Page Contains     Isso é um clique simples



Deve realizar um clique longo
    [tags]                       long 
    Go To Botoes
    Click Element                id=io.qaninja.android.twp:id/ivItemIcon
    Wait Until Page Contains     Botão clique longo
    Click Element                id=io.qaninja.android.twp:id/long_click 
    Wait Until Page Contains     CLIQUE LONGO OK