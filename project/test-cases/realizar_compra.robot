*** Settings ***
Documentation     Esse arquivo contém cenarios de testes para login válido e inválido.
Resource          ../../resource/pages/realizar_compra.robot
Resource          ../../resource/pages/login_sucesso.robot
Library           SeleniumLibrary

Test Setup       Open Browser    ${TELA_LOGIN.URL_LOGIN}   chrome 
# Test Teardown    Close Browser

*** Test Cases ***
Realizar uma compra completa no site da saucedemo    
    [Tags]    compras    completo
    Given que estou na tela de login
    And preencho o campo de usuario    standard_user
    And preencho o campo de senha      secret_sauce
    When clico no botão de login
    Then o sistema deve me redirecionar para a página inicial
    And adiciono um produto ao carrinho
    And vou para o carrinho de compras
    And prossigo para o checkout
    And preencho o Firs Name
    And preencho o Last Name
    And preencho o Zip Code
    And clico em Continue
    And checo o produto escolhido
    When clico em Finish
    Then a compra deve ser finalizada com sucesso
    And verifico a mensagem de confirmação da compra