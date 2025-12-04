*** Settings ***
Documentation     Esse arquivo contém cenarios de testes para login válido e inválido.
Resource          ../../resource/pages/login_sucesso.robot
Library           SeleniumLibrary

Test Setup       Open Browser    https://www.saucedemo.com/    chrome
# Test Teardown    Close Browser


*** Test Cases ***
Validar login válido
    [Tags]    login    valido
    Given que estou na tela de login
    And preencho o campo de usuario    standard_user
    And preencho o campo de senha      secret_sauce
    When clico no botão de login
    Then o sistema deve me redirecionar para a página inicial
    And verifico que o título da página é "Products"

Validar login inválido
    [Tags]    login    invalido
    Given que estou na tela de login
    And preencho o campo de usuario    kaico castro 
    And preencho o campo de senha      123456
    When clico no botão de login
    Then o sistema deve exibir uma mensagem de erro "Epic sadface: Username and password do not match any user in this service"

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
