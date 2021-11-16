*Settings*
Documentation       Signup Testes Suites

Resource       ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session


*Test Cases*
Register New User 

    ${user}     factory user    faker
    
    #Set Suite Variable  ${user}

    Go To Signup Form 
    Fill Signup Form   ${user}
    Submit Signup Form
    User Should Be Registered

Duplicate User 
    [Tags]      Attempt_signup

    ${user}     Factory User    faker

    Add User From Database      ${user}

    Go To Signup Form 
    Fill Signup Form   ${user}
    Submit Signup Form 
    Modal Content Should Be   Já temos um usuário com o e-mail informado.


Wrong Email 
    [Tags]      Attempt_signup

    ${user}     Factory user    wrong_email

    Go To Signup Form 
    Fill Signup Form   ${user}
    Submit Signup Form
    Alert Span Should Be        O email está estranho

Required Fields 
    [Tags]      Attempt_signup      Req_f

   @{expected_alerts}       Create List 
   ...                      Cadê o seu nome?
   ...                      E o sobrenome?
   ...                      O email é importante também!
   ...                      Agora só falta a senha!

   Go To Signup Form 
   Submit Signup Form 
   Alert Spans Should Be        ${expected_alerts}
   


Short Password
    [Tags]          Attempt_signup      short_pass
    [Template]      Signup With Short Pass
    1
    12
    123
    1234
    12345
    a1
    a23
    aa45
    bv56
    34bb
    56jku
    4567
    bhytr

*Keywords*
Signup With Short Pass
   [Arguments]     ${short_pass}

    ${user}     Create Dictionary 
    ...         nome=Luna               lastname=Abrantes
    ...         email=luna@gmail.com    password=${short_pass}


    Go To Signup Form 
    Fill Signup Form   ${user}
    Submit Signup Form
    Alert Span Should Be   Informe uma senha com pelo menos 6 caracteres



