*Settings*
Documentation       Documentaçao do Testes de Login

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session


*Test Cases*
User Login
    ${user}     Factory User Login

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