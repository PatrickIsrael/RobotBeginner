*Settings*

Resource    base.robot
#Before
Test Setup    Nova Sessao
#After
Test Teardown    Encerra Sessao

*Test Cases*
Selecionar um personagem por texto
    #Quando o usuário acessar a tela de dropdown
    Go To                        ${urlBase}/dropdown
    #Quando seleciono um personagem
    Select From list By Label    class:avenger-list         Tony Stark
    #Então valido a seleção
    ${selected}=                 Get Selected list Value    class:avenger-list 
    Should Be Equal              ${selected}                3

Selecionar pelo valor
    #Quando o usuário acessar a tela de dropdown
    Go To                        ${urlBase}/dropdown
    #Quando seleciono um personagem
    Select From list By Value    id:dropdown                6
    #Então valido a seleção
    ${selected}=                 Get Selected list Label    id:dropdown 
    Should Be Equal              ${selected}                Loki