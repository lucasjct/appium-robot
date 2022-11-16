*** Settings ***

Resource        ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

*** Test Cases ***
Deve deslizar os cards
    Go To Deslizar
    Drag Drop          io.qaninja.android.twp:id/drag_handle   3   0
    Sleep    3