*** Settings ***

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***

Deve executar o Swipe
    Go To Swipe
    Swipe By Percent                 88.88    18.22    47.22     18.22                duration=1000
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/btnRemove
    Click Element                    id=io.qaninja.android.twp:id/btnRemove