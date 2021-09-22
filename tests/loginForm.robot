*Settings*

Resource    base.robot
#Before
Test Setup    Nova Sessao
#After
Test Teardown    Encerra Sessao

*Test Cases*
Login com sucesso
    #Quando o usuário acessar a tela de tabelas
    Go To             ${urlBase}/login
    #Quando o campo usuário e senha forem preenchido e o botão de login for acionado
    Realizar Login    stark               jarvis!

    #Então a mensagem de sucesso é apresentada corretamente
    Validar mensagem    Olá, Tony Stark. Você acessou a área logada! 

Login com senha inválida
    #Quando o usuário acessar a tela de tabelas
    Go To               ${urlBase}/login
    #Quando o campo usuário for preenchido
    Input Text          css:input[name='username']    stark 
    #E preencher a senha inválida
    Input Text          css:input[name='password']    123!
    #E Clicar no botão de login
    Click Element       class:btn-login
    #Então a mensagem de erro é apresentada corretamente
    Validar mensagem    Senha é invalida!

Login inválido
    #Quando o usuário acessar a tela de tabelas
    Go To               ${urlBase}/login
    #Quando o campo usuário for preenchido
    Input Text          css:input[name='username']                  patrick 
    #E preencher a senha inválida
    Input Text          css:input[name='password']                  jarvis!
    #E Clicar no botão de login
    Click Element       class:btn-login
    #Então a mensagem de erro é apresentada corretamente
    Validar mensagem    O usuário informado não está cadastrado!

*Keywords*
Realizar Login
    [Arguments]      ${usuario}                    ${senha}
 #Quando o campo usuário for preenchido
    Input Text       css:input[name='username']    ${usuario} 
    #E preencher a senha
    Input Text       css:input[name='password']    ${senha}
    #E Clicar no botão de login
    Click Element    class:btn-login

Validar mensagem
    [Arguments]           ${mensagemEsperada}
    #Então a mensagem é apresentada corretamente
    ${mensagemElement}    Get WebElement             id:flash
    Should Contain        ${mensagemElement.text}    ${mensagemEsperada}
