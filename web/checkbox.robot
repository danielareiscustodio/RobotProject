*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}                  http://training-wheels-protocol.herokuapp.com/  
${check_thor}           id:thor
${check_iron}           css:input[value='iron-man']
${check_pantera}        xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com ID - para rodar no console robot -d ./log checkbox.robot
    Open Browser                    ${url}               chrome
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox should be selected     ${check_thor}
    Close Browser

Marcando opção com css selector - para rodar no console com tag robot -d ./log -i ironman checkbox.robot 
    [tags]                          ironman     
    Open Browser                    ${url}               chrome
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox should be selected     ${check_iron}
    Close Browser

Marcando opção com xpath
    [tags]                          panteranegra
    Open Browser                    ${url}               chrome
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_pantera}
    Checkbox should be selected     ${check_pantera}
    Close Browser