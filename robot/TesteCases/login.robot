*** Settings ***
Documentation        teste automatizado com robot e selenium
Library    SeleniumLibrary

*** Variables ***
${field_login}            //*[@testid="login_AdvancedInput_username"]

${user_login}             brunoamorim

${field_password}        //*[@testid="login_AdvancedInput_password"]
${user_password}           Pass123123

${button}              //*[@testid="login_Button_Submit"]

${fielde_verificacao}            //*[@testid="request-sms_SmsCode_code"]
${codigo}                112233
   
*** Test Cases ***

CT01: Abrir IBK do inovanti
    Open Browser         https://ibk.beta.bankeiro.com/        Chrome     
    
    Wait Until Element Is Visible     ${field_login}
    Input Text                        ${field_login}    ${user_login}

    Wait Until Element Is Visible     ${field_password}
    Input Text                        ${field_password}  ${user_password}

    Wait Until Element Is Visible     ${button}
    Click Element                     ${button}

    Sleep     35 seconds

    Wait Until Element Is Visible        ${fielde_verificacao}
    Input Text       ${fielde_verificacao}     ${codigo}
    Sleep     25 seconds
   