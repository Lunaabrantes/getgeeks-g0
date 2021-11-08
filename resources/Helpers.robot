*Settings*
Documentation        Helper para nao criar dependencias de Cenários de Testes



*Keywords*
Add User From Database
    [Arguments]     ${user}

    Connect To Postgres
    Insert User     ${user}
    Disconnect From Database