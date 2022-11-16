*** Settings ***

Resource        base.robot

Documentation        Helper auxilia a organizar o projeto e segmentar conforme o escopo dos testes.
*** Variables ***

${START}              COMEÇAR
${MENU_HAMBURGUER}    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAVBAR}             id=io.qaninja.android.twp:id/tvNavTitle

*** Keywords ***

Get Started
    Wait Until Page Contains         ${START}
    Click Text                       ${START} 

Open Menu
    Wait Until Element Is Visible    ${MENU_HAMBURGUER}
    Click Element                    ${MENU_HAMBURGUER}
    Wait Until Element Is Visible    ${NAVBAR}


Go To login
    Open Menu
    Click Text    FORMS
    Wait Until Page Contains     FORMS

    Click Text    LOGIN
    Wait Until Page Contains     Fala QA, vamos testar o login?


Go To Radio Buttom
    Open Menu
    Click Text    INPUTS
    Wait Until Page Contains     INPUTS
    Click Text    BOTÕES DE RADIO
    Wait Until Page Contains     Escolha sua linguagem preferida

Go To Checkbox
    Open Menu
    Click Text    INPUTS
    Wait Until Page Contains     INPUTS
    Click Text    CHECKBOX
    Wait Until Page Contains     Marque as techs que usam Appium

Go To Botoes
    Open Menu
    Click Text    BOTÕES
    Wait Until Page Contains     BOTÕES
    Click Text    BOTÕES
    Wait Until Page Contains     CLIQUE SIMPLES

Go To Spinner
    Open Menu
    Click Text    FORMS
    Wait Until Page Contains     FORMS

    Click Text    CADASTRO
    Wait Until Page Contains    CADASTRO   


Go To Swipe
    Open Menu
    Click Text    AVENGERS
    Wait Until Page Contains     AVENGERS

    Click Text    LISTA
    Wait Until Page Contains    LISTA   



Go To Deslizar
    Open Menu
    Click Text    AVENGERS
    Wait Until Page Contains     AVENGERS

    Click Text    LISTA
    Wait Until Page Contains    LISTA   