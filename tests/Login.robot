*Settings*
Documentation       Documentaçao do Testes de Login

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session


*Test Cases*
User Login
    ${user}     Factory User    login

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect Pass 
    [Tags]      i_pass
    ${user}     Create Dictionary     email=luna-beatriz@hotmail.com      password=ab1c23

    Go To Login Page
    Fill Credentials   ${user}
    Submit Credentials
    Modal Content Should Be   Usuário e/ou senha inválidos.

User Not Found
    [Tags]      user_404
    ${user}     Create Dictionary     email=luna@404.net      password=ab1c23

    Go To Login Page
    Fill Credentials   ${user}
    Submit Credentials
    Modal Content Should Be   Usuário e/ou senha inválidos.

Incorrect Email    
    [Tags]      inc_email
    ${user}     Create Dictionary     email=luna#404.net      password=pwd123

    Go To Login Page
    Fill Credentials   ${user}
    Submit Credentials
    Should Be Type Email 

Login Required Fields 
   [Tags]      Attempt_signup      Req_f_Login

   @{expected_alerts}       Create List 
   ...                      E-mail obrigatório
   ...                      Senha obrigatória

   Go To Login Page
   Submit Credentials
   Alert Spans Should Be        ${expected_alerts}

Password Required
   [Tags]      Attempt_signup      Req_f_Login
    ${user}     Create Dictionary     email=luna@gmail.com      password=

   @{expected_alerts}       Create List 
   ...                      Senha obrigatória

   Go To Login Page
   Fill Credentials   ${user}
   Submit Credentials
   Alert Spans Should Be        ${expected_alerts}

Email Required
    [Tags]      Attempt_signup      Req_f_Login
    ${user}     Create Dictionary     email=                    password=pwd123

   @{expected_alerts}       Create List 
   ...                      E-mail obrigatório

   Go To Login Page
   Fill Credentials   ${user}
   Submit Credentials
   Alert Spans Should Be        ${expected_alerts}