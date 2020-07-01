*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Should See Page Title
    Open Browser        http://training-wheels-protocol.herokuapp.com/      chrome
    Title should be     Training Wheels Protocol
    Close Browser