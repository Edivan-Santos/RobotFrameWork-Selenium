*** Settings ***
Documentation    Teste da Página Home automatizada
Library    SeleniumLibrary

*** Variables ***
${campo_usuario}        //*[@testid="login_AdvancedInput_username"]
${nome_usuario}        brunoamorim

*** Test Cases ***
CT1: Inserindo nome,senha e mostrando a senha
    #Abrindo o brawser da página web 
    Open Browser        https://ibk.beta.bankeiro.com/        chrome
    Sleep     5 seconds

    # Pegando inserindo nome de usuário e senha
    Wait Until Element Is Visible        ${campo_usuario}
    Input Text        ${campo_usuario}        ${nome_usuario}
    Sleep     5 seconds
