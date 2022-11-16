*** Settings ***

Resource        ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***

${spinner}=             id=io.qaninja.android.twp:id/spinnerJob
${list_options}=        class=android.widget.ListView        

*** Test Cases ***

Deve selecionar QA
    Go To Spinner
    Select Work        QA

Deve selecionar DevOps
    Go To Spinner
    Select Work        DevOps


Deve selecionar UX
    Go To Spinner
    Select Work        UX

*** Keywords ***
Select Work
# Exemplo de função no Robot
    [Arguments]                            ${target}
    
    Wait Until Element Is Visible          ${spinner}
    Click Element                          ${spinner}
    Wait Until Element Is Visible          ${list_options}
    Click Text                             ${target}