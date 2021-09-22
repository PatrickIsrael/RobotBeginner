*Settings*

Library    SeleniumLibrary


*Variables*

${urlBase}    https://training-wheels-protocol.herokuapp.com/

*Keywords*
Nova Sessao
    Open Browser    ${urlBase}    chrome

Encerra Sessao
    Capture Page Screenshot
    Close Browser