*** Settings ***
Documentation        teste automatizado com robot e selenium
Library    SeleniumLibrary

*** Variables ***
${field_login}            //*[@testid="login_AdvancedInput_username"]

${user_login}             brunoamorim

${field_password}        //*[@testid="login_AdvancedInput_password"]
${user_password}           Pass123123

${button}              //*[@testid="login_Button_Submit"]
   
*** Test Cases ***

CT01: Abrir IBK do inovanti
    Open Browser     https://ibk.beta.bankeiro.com/ 	Chrome     
    
    Wait Until Element Is Visible     ${field_login}
    Input Text                        ${field_login}    ${user_login}

    Wait Until Element Is Visible     ${field_password}
    Input Text                        ${field_password}  ${user_password}

    Wait Until Element Is Visible     ${button}
    Click Element                     ${button}

    Sleep     45 seconds
   