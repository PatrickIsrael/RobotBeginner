*Settings*
Resource    base.robot
#Before
Test Setup    Nova Sessao
#After
Test Teardown    Encerra Sessao
*Variables*
${grupoRadio}             movies
${locatorCapitao}         cap
${locatorHomenDeFerro}    iron-man
${locatorThor}            thor
${locatorVingdores}       the-avengers
${locatorGuardioes}       guardians
${locatorHomenFormiga}    ant-man
${locatorPantera}         black-panther

*Test Cases*

Deve selecionar o radio butoon da página por ID
    #Dado que esteja na página de radios button
    Go To                            ${urlBase}/radios
    #Quando o radio button é selecionado
    Select Radio Button              ${grupoRadio}        ${locatorCapitao}
    #Então o persongem é selecionado
    Radio Button Should Be Set To    ${grupoRadio}        ${locatorCapitao}

Deve selecionar o radio butoon da página por Value
    #Dado que esteja na página de radios button
    Go To                            ${urlBase}/radios
    #Quando o radio button é selecionado
    Select Radio Button              ${grupoRadio}        ${locatorHomenDeFerro}
    #Então o persongem é selecionado
    Radio Button Should Be Set To    ${grupoRadio}        ${locatorHomenDeFerro}