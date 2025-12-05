*** Settings ***
Documentation     Locators presentes na tela de login para realizar login invalido

*** Variables ***
&{TELA_LOGIN}
...    URL_LOGIN=https://www.saucedemo.com/
...    USARNAME_INPUT=//*[@id="user-name"]
...    PASSWORD_INPUT=//*[@id="password"]
...    LOGIN_BUTTON=//*[@id="login-button"]
...    MENSAGEM_ERRO=//*[@id="login_button_container"]/div/form/div[3]/h3
...    LOGO_SAUCEDEMO=//*[@id="header_container"]/div[1]/div[2]/div








