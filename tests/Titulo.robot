*Settings*
Resource    base.robot
#Before
Test Setup    Nova Sessao
#After
Test Teardown    Encerra Sessao

*Test Cases*
Deve retornar o título da página
    [tags]    Titulo_Pagina

    #Então o titulo da página é igual a 'Training Wheels Protocol'
    Title Should Be    Training Wheels Protocol
