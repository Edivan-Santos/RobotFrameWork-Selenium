*** Settings ***
Documentation        teste automatizado com robot e selenium
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***

    

CT01: Abrir IBK do inovanti
    Open Browser  https://ibk.stg.bankeiro.inovanti.com.br/ 	Chrome
    
    Wait Until Element Is Enabled        //*[@]
  
   
*** Test Cases ***

Cenário 1: Teste de abrir o site da google
    CT01: Abrir IBK do inovanti
