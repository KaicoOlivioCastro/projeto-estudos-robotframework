*** Settings ***
Documentation     Arquivo de recursos 

Library           SeleniumLibrary    run_on_failure=Capture Page Screenshot
Library           Collections
Library           String
Library           OperatingSystem
Library           BuiltIn
Library           DateTime
Library           RequestsLibrary

### Pages ###
Resource          ./locators/login_locators.resource
Resource          ./locators/realizar_compra.resource
Resource          ./pages/login_sucesso.robot
Resource          ./pages/realizar_compra.robot         