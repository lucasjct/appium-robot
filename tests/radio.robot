*** Settings ***

Resource        ../resources/base.robot


Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***

Deve executar um botão de radio
    Go To Radio Buttom
    # No appium posso montar xpaths (ckiacando na lupa do client), uma vez que todo android possui xml
    ${elements}=        Set Variable        xpath=//android.widget.RadioButton[contains(@text,'Python')]
    Click Element                          ${elements}
    Wait Until Element is Visible          ${elements}
    Element Attribute Should Match         ${elements}      checked    true
