*Settings*

Resource    base.robot
#Before
Test Setup    Nova Sessao
#After
Test Teardown    Encerra Sessao

*Test Cases*
Selecionar um personagem por texto
    #Quando o usuário acessar a tela de tabelas
    Go To                       ${urlBase}/tables
    #Então valido a linha do Robert Downey Jr
    Table Row Should Contain    id:actors            1    $ 10.000.000

Selecionar um personagem por elemento
    #Quando o usuário acessar a tela de tabelas
    Go To             ${urlBase}/tables
    ${linha}          Get WebElement       xpath:.//tr[contains(., '@robertdowneyjr')]
    #Então valido a linha do Robert Downey Jr
    Should Contain    ${linha.text}        Vingadores
    Should Contain    ${linha.text}        Homem de Ferro
    Log               ${linha.text} 