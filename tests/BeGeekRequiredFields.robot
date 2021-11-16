*Settings*
Documentation   Suite destinada a validar os campos obrigatórios do cadastro de um Geek 

Resource       ${EXECDIR}/resources/Base.robot


Suite Setup      Signup Go To Geek Form
Test Teardown    Finish Session

*Test Cases*
Whatsapp Required   
    [Tags]          Attempt_fields     
    [Template]      Whatsapp Variable
    ${EMPTY}
    12
    1194567876
    11956
Cost Required
    [Tags]          Attempt_fields
    [Template]      Cost Variable
    ${EMPTY}
    aaaa
    a456
    $#*()
    a$t4

*Keywords*
Whatsapp Variable  
    [Arguments]     ${whatsapp}

    ${user}     Create Dictionary 
    ...         whats=${whatsapp}
    ...         desc=Sou especialista em concertar Sistemas operacionais, impressoras, telefones, fax, faço formatação de todos os sistemas operacionais e melhor ainda consigo fazer tudo remotamente e em tempo recorde para todos os serviços descritos acima faço rapidamente   
    ...         printer_repair=Não      work=Remoto         cost=200

    Fill Geek Form   ${user}
    Submit Geek Form
    Alert Span Should Be   O Whatsapp deve ter 11 digitos contando com o DDD

Cost Variable
    [Arguments]     ${cost}

    ${user}     Create Dictionary 
    ...         whats=11945564567
    ...         desc=Sou especialista em concertar Sistemas operacionais, impressoras, telefones, fax, faço formatação de todos os sistemas operacionais e melhor ainda consigo fazer tudo remotamente e em tempo recorde para todos os serviços descritos acima faço rapidamente   
    ...         printer_repair=Não      work=Remoto         cost=${cost}

    
    Fill Geek Form   ${user}
    Submit Geek Form
    Alert Span Should Be   Valor hora deve ser numérico

Signup Go To Geek Form
    ${user}     Factory User    login

    Start Session
    Do Login   ${user}
    Go To Geek Form

