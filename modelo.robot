*** Settings ***
Documentation        teste automatizado com robot e selenium
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Abrir Site
    Open Browser  https://robotframework.org/   	Chrome
   

*** Test Cases ***

Cenário 1: Acessando site do robot
    Abrir Site