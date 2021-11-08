*Settings*
Documentation   Açoes de Login/Autenticar do Sistema GetGeeks

*Variables*
${INPUT_EMAIL}      id=email
${INPUT_PASS}       id=password



*Keywords*
Go To Login Page
    Go To       ${BASE_URL}

Fill Credentials 
    [Arguments]     ${user}

    Wait For Elements State     css=.login-form     visible     5
    Fill Text       ${INPUT_EMAIL}        ${user}[email]
    Fill Text       ${INPUT_PASS}     ${user}[password]


Submit Credentials
    Click       css=.submit-button >> text=Entrar

User Should Be Logged In 
    [Arguments]         ${user}     
    ${element}      Set Variable        css=a[href="/profile"]  

    ${expected_fullname}    Set Variable        ${user}[nome] ${user}[lastname]       

    Wait For Elements State     ${element}      visible     5
    Get Text                    ${element}      equal       ${expected_fullname}           



Should Be Type Email 

    Get Property    ${INPUT_EMAIL}    type    equal   email
