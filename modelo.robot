*** Settings ***
Documentation        teste automatizado com robot e selenium
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Abrir site da google
    Open Browser  https://www.google.com.br/  	Chrome
  

Abrir site da globo
     Open Browser  https://redeglobo.globo.com/  	Chrome

*** Test Cases ***

Cenário 1: Teste de abrir o site da google
    Abrir site da google
   
cenário 2: Teste de abrir o site da globo
     Open Browser  https://redeglobo.globo.com/  	Chrome