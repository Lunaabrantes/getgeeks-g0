*Settings*
Documentation       Explicaçao de Como trabalhar com listas

Library     Collections 


*Test Cases* 
Trabalhando com Listas

    @{nomes}        Create List     Luna Abrantes   Danilo Caires   Jo  Kim Francine 

    Append To List      ${nomes}     Alberto
    Append To List      ${nomes}     Mayara

    FOR  ${a}   IN  @{nomes}

        Log To Console      ${a}

    END


    @{nomes2}     Create List       Luna Abrantes   Danilo Caires   Jo      Kim Francine    Alberto     Mayara

    Lists Should Be equal       ${nomes}        ${nomes2}

