*Settings*
Documentation       Signup Testes Suites

Resource       ${EXECDIR}/resources/Base.robot

Suite Setup      Signup Without Fill Form
Test Teardown    Finish Session

#Note: Test Setup executara a keyword a cada test case ja o Suite Setup executara apenas uma vez 

*Test Cases*
Name Is Required
    Alert Span Should Be   Cadê o seu nome?
Lastname Is Required
    Alert Span Should Be   E o sobrenome?

Email Is Required
    Alert Span Should Be   O email é importante também!

Password Is Required
    Alert Span Should Be   Agora só falta a senha!

*Keywords*
Signup Without Fill Form

    Start Session
    Go To Signup Form 
    Submit Signup Form 
    
