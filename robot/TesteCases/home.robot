*** Settings ***
Documentation    Teste da Página Home automatizada
Library    SeleniumLibrary

*** Variables ***
${campo_usuario}        //*[@testid="login_AdvancedInput_username"]
${nome_usuario}        brunoamorim

${campo_senha}        //*[@testid="login_AdvancedInput_password"]
${senha_usuario}        Pass123123

*** Test Cases ***
CT1: Inserindo nome,senha e mostrando a senha
    #Abrindo o brawser da página web 
    Open Browser        https://ibk.beta.bankeiro.com/        chrome
    Sleep     5 seconds

    # Pegando campo do nome do usuário, e inserindo o nome
    Wait Until Element Is Visible        ${campo_usuario}
    Input Text        ${campo_usuario}        ${nome_usuario}
    Sleep     5 seconds

    #Pegando o camspo de senha e inserindo a senha 
    Wait Until Element Is Visible        ${campo_senha} 
    Input Text        ${campo_senha}       ${senha_usuario}
    Sleep     5 seconds
