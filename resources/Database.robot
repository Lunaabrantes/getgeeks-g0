*Settings*
Documentation       DataBase Helpers 

Library     DatabaseLibrary
Library     factories/Users.py

*Keywords*

Connect To Postgres

    Connect To Database     psycopg2      
    ...                     xavtdsjf        
    ...                     xavtdsjf    
    ...                     O04J7nt1mJuiuT6wsrHTUe3bNL-aQTGx
    ...                     fanny.db.elephantsql.com
    ...                     5432


Reset Env
    Execute SQL String      DELETE FROM public.geeks;
    Execute SQL String      DELETE FROM public.users;


Insert User 
    [Arguments]        ${u}
    ${hashed_pass}  Get Hashed Pass     ${u}[password]

    ${q}    Set Variable     INSERT INTO public.users (name, email, password_hash, is_geek) values ('${u}[nome] ${u}[lastname]', '${u}[email]', '${hashed_pass}', false);

    Execute SQL String      ${q}


Users Seed 

    ${user}     Factory User Login
    Insert User   ${user}