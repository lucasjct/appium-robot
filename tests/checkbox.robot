*** Settings ***

Resource        ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***

Deve abrir a seção de chackbox
    Go To Checkbox
    ${check_ruby}=     Set Variable        xpath=//android.widget.CheckBox[contains(@text,'Ruby')]
    Click Element                          ${check_ruby}
    Wait Until Element Is Visible          id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match	       ${check_ruby}        checked        true