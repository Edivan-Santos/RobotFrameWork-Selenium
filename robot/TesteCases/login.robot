*** Settings ***
Documentation        teste automatizado com robot e selenium
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***

    

CT01: Abrir IBK do inovanti
    Open Browser  https://ibk.stg.bankeiro.inovanti.com.br/ 	Chrome         keep_open=True
    
    Wait Until Element Is Enabled        //*[@testid="login_AdvancedInput_username"]
    Click Element        //*[@testid="login_AdvancedInput_username"]
  
   
*** Test Cases ***

Cenário 1: Teste de abrir o site da google
    CT01: Abrir IBK do inovanti
     Sleep    1 minutes