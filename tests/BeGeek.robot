*Settings*
Documentation   Validaçöes para se tornar um Geek 

Resource    ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session


*Test Cases*
Be Geek 
    [Tags]          be_geek
    ${user}         Factory User    be_geek

    Do Login         ${user}


    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Geek Form Submit Success

Short Description 
    [Tags]      invalid_descrition
    ${user}         Factory User    short_description

    Do Login   ${user}

    Go To Geek Form
    Fill Geek Form   ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    A descrição deve ter no minimo 80 caracteres

Long Description 
    [Tags]      invalid_descrition
    ${user}         Factory User    long_description

    Do Login   ${user}

    Go To Geek Form
    Fill Geek Form   ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    A descrição deve ter no máximo 255 caracteres

Empty Description
    [Tags]      invalid_descrition
    ${user}         Factory User    empty_description

    Do Login   ${user}

    Go To Geek Form
    Fill Geek Form   ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be    Informe a descrição do seu trabalho






#Desafio 2 Modulo PRO

#1 - Whatsapp em Branco
#2 - Whatsapp somente com DDD
#3 - Whatsapp com 10 digitos 
#4 - Descrição em Branco
#5 - Valor hora em branco
#6 - Valor hora com alphanumericos
#7 - Valor hora com letras
#8 - Valor hora com caracteres  


# Dica 1: Use o modelo de template no Teste 
# Dica 2: O login ficará melhor se for executado uma unica vez. 





