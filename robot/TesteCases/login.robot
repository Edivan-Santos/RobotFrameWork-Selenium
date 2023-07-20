*** Settings ***
Documentation        teste automatizado com robot e selenium
Library    SeleniumLibrary

*** Variables ***
${field_login}                //*[@testid="login_AdvancedInput_username"]

${user_login}                 brunoamorim

${field_password}           //*[@testid="login_AdvancedInput_password"]
${user_password}            Pass123123

${button}                  //*[@testid="login_Button_Submit"]

${fielde_verificacao}      //*[@testid="request-sms_SmsCode_code"]
${codigo}                112233

${button_verif}            //*[@testid="request-sms_SmsCode_Submit"]


${button_pix}             //*[@testid="home_PIX_click"]
  

  
*** Test Cases ***

CT01: Abrir IBK do Bankeiro-beta com sucesso!
    Open Browser         https://ibk.beta.bankeiro.com/        Chrome 
    Sleep     5 seconds

    Wait Until Element Is Visible         ${field_login}
    Input Text                            ${field_login}     ${user_login}
    Sleep     5 seconds

    Wait Until Element Is Visible         ${field_password}
    Input Text                            ${field_password}  ${user_password}
   
    Sleep     5 seconds

    Wait Until Element Is Visible         ${button}
    Click Element                         ${button}
    Sleep     5 seconds

    Wait Until Element Is Visible        ${fielde_verificacao}
    Input Text                           ${fielde_verificacao}  ${codigo}
    Sleep     5 seconds

    Wait Until Element Is Visible        ${button_verif}
    Click Element                        ${button_verif}
    Sleep     5 seconds


    # Área pix
    Wait Until Element Is Visible        ${button_pix}
    Sleep     5 seconds
    Click Element        ${button_pix}
 
    Sleep     25 seconds