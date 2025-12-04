*** Settings ***
Documentation     Biblioteca de recursos para realizar compra na loja
Library           SeleniumLibrary

*** Variables ***
${REALIZAR_COMPRAS}
...    BOTAO_PRODUTO=//*[@id="add-to-cart-sauce-labs-backpack"]
...    ICONE_CARRINHO=//*[@id="shopping_cart_container"]/a
...    BOTAO_CHECKOUT=//*[@id="checkout"]
...    PRIMEIRO_NOME=//*[@id="first-name"]
...    SOBRENOME=//*[@id="last-name"]
...    ZIP_CODE=//*[@id="postal-code"]
...    BOTAO_CONTINUE=//*[@id="continue"]
...    CHECAR_PRODUTO=//*[@id="item_4_title_link"]/div
...    BOTAO_FINISH=//*[@id="finish"]
...    MENSAGEM_COMPRA=//*[@id="checkout_complete_container"]/h2