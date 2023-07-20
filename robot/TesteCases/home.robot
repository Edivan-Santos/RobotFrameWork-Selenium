*** Settings ***
Documentation    Teste da Página Home automatizada
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
CT1: Inserindo nome,senha e mostrando a senha
    Open Browser        https://ibk.beta.bankeiro.com/        chrome
     Sleep     5 seconds