*** Settings ***
Documentation     Biblioteca de recursos para a tela de login com sucesso
Library           SeleniumLibrary
Resource          ../locators/login_locators.resource

*** Keywords ***

que estou na tela de login
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
preencho o campo de usuario
    [Arguments]    ${username}
    Input Text    ${TELA_LOGIN.USARNAME_INPUT}    ${username}

preencho o campo de senha
    [Arguments]    ${password}
    Input Text    ${TELA_LOGIN.PASSWORD_INPUT}    ${password}

clico no botão de login
    Click Button    ${TELA_LOGIN.LOGIN_BUTTON}

o sistema deve me redirecionar para a página inicial
    Wait Until Element Is Visible    ${TELA_LOGIN.LOGO_SAUCEDEMO}    5s
    Element Should Be Visible    ${TELA_LOGIN.LOGO_SAUCEDEMO}

verifico que o título da página é "Products"
    ${title}=    Get Title
    Should Be Equal    ${title}    Swag Labs
    
o sistema deve exibir uma mensagem de erro "Epic sadface: Username and password do not match any user in this service"
    Wait Until Element Is Visible    ${TELA_LOGIN.MENSAGEM_ERRO}    5s
    ${mensagem}=    Get Text    ${TELA_LOGIN.MENSAGEM_ERRO}
    Should Be Equal    ${mensagem}    Epic sadface: Username and password do not match any user in this service        

And adiciono um produto ao carrinho
    Click Button    ${REALIZAR_COMPRAS.BOTAO_PRODUTO}

vou para o carrinho de compras
    Click Element    ${REALIZAR_COMPRAS.ICONE_CARRINHO}

prossigo para o checkout
    Click Button    ${REALIZAR_COMPRAS.BOTAO_CHECKOUT}

preencho o Firs Name
    Input Text    ${REALIZAR_COMPRAS.PRIMEIRO_NOME}    Kaico

preencho o Last Name
    Input Text    ${REALIZAR_COMPRAS.SOBRENOME}    Castro

preencho o Zip Code
    Input Text    ${REALIZAR_COMPRAS.ZIP_CODE}    06075160

clico em Continue
    Click Button    ${REALIZAR_COMPRAS.BOTAO_CONTINUE}

checo o produto escolhido
    Wait Until Element Is Visible    ${REALIZAR_COMPRAS.CHECAR_PRODUTO}    5s
    Element Should Be Visible    ${REALIZAR_COMPRAS.CHECAR_PRODUTO}

clico em Finish
    Click Button    ${REALIZAR_COMPRAS.BOTAO_FINISH}

a compra deve ser finalizada com sucesso
    Wait Until Element Is Visible    ${REALIZAR_COMPRAS.MENSAGEM_COMPRA}    5s

verifico a mensagem de confirmação da compra   
    ${mensagem}=    Get Text    ${REALIZAR_COMPRAS.MENSAGEM_COMPRA}
    Should Be Equal    ${mensagem}    THANK YOU FOR YOUR ORDER

