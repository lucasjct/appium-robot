*** Settings ***

Resource    ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session


*** Variables ***

${TOOLBAR}       id=io.qaninja.android.twp:id/toolbarTitle 

*** Test Cases ***
Deve abrir a tela DIALOGS
    Open Menu
    Click Text                       DIALOGS 
    Wait Until Element Is Visible    ${TOOLBAR} 
    Element Text Should Be           ${TOOLBAR}     DIALOGS    


# Nota: a cada mudança de tela, sempre garantir com um checkpoint se a tela desejada está conforme esperado

    
Deve abrir a tela FORM
    Open Menu
    Click Text                       FORMS 
    Wait Until Element Is Visible    ${TOOLBAR} 
    Element Text Should Be           ${TOOLBAR}     FORMS  


Deve acessar a tela de vingadores  
    Open Menu
    Click Text                       AVENGERS 
    Wait Until Element Is Visible    ${TOOLBAR} 
    Element Text Should Be           ${TOOLBAR}     AVENGERS      

