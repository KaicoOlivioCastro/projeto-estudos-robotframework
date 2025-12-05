*** Settings ***
Documentation     Biblioteca de recursos para a tela de login com sucesso
Resource      ../main.resource

*** Keywords ***
Abrir o navegador
    Open Browser   ${TELA_LOGIN.URL_LOGIN}   chrome    
    ...            options=add_experimental_option("detach", True)
    Maximize Browser Window
Fechar o navegador
    Close Browser

adiciono um produto ao carrinho
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
