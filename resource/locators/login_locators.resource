*** Settings ***
Documentation     Locators presentes na tela de login para realizar login invalido

*** Variables ***
&{TELA_LOGIN}
...    USARNAME_INPUT=//*[@id="user-name"]
...    PASSWORD_INPUT=//*[@id="password"]
...    LOGIN_BUTTON=//*[@id="login-button"]
...    MENSAGEM_ERRO=//*[@id="login_button_container"]/div/form/div[3]/h3
...    LOGO_SAUCEDEMO=//*[@id="header_container"]/div[1]/div[2]/div

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





