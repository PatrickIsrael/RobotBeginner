*Settings*

Resource    base.robot
#Before
Test Setup    Nova Sessao
#After
Test Teardown    Encerra Sessao

*Variables*

${locatorThor}            id:thor
${locatorHomenDeFerro}    css:input[value='iron-man']
${locatorPantera}         xpath://*[@id='checkboxes']/input[7]


*Test Cases*
Selecionar um personagem da página (Thor)
    [tags]    ID

    #Quando o usuário acessar a tela de checkboxes
    Go To                          ${urlBase}/checkboxes
    #E Clicar no checkbox informado
    Select Checkbox                ${locatorThor}
    #Então o checkbox é apresentado selecionado
    Checkbox Should Be Selected    ${locatorThor}



Selecionar um personagem da página via ccs selector (Homen de Ferro)
    [tags]    CSS

    #Quando o usuário acessar a tela de checkboxes
    Go To                          ${urlBase}/checkboxes
    #E Clicar no checkbox informado
    Select Checkbox                ${locatorHomenDeFerro} 
    #Então o checkbox é apresentado selecionado
    Checkbox Should Be Selected    ${locatorHomenDeFerro} 

Selecionar um personagem da página via xpath (Homen de Ferro)
    [tags]    XPATH

    #Quando o usuário acessar a tela de checkboxes
    Go To                          ${urlBase}/checkboxes
    #E Clicar no checkbox informado
    Select Checkbox                ${locatorPantera}
    #Então o checkbox é apresentado selecionado
    Checkbox Should Be Selected    ${locatorPantera}