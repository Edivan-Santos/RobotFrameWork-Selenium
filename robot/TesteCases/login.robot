*** Settings ***
Documentation        teste automatizado com robot e selenium
Library    SeleniumLibrary

*** Variables ***

   
*** Test Cases ***

CT01: Abrir IBK do inovanti
    Open Browser  https://ibk.stg.bankeiro.inovanti.com.br/ 	Chrome     
    
    Wait Until Element Is Enabled        //*[@testid="login_AdvancedInput_username"]
    Click Element        //*[@testid="login_AdvancedInput_username"]

    Sleep    1 minutes 
   