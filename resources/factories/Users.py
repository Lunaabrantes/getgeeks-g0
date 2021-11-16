from faker import Faker 
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed


def factory_user(target):

    data = { 
        "faker": {
            "nome": fake.first_name(),
            "lastname": fake.last_name(),
            "email": fake.free_email(),
            "password": "pwd1234",
        },
        "wrong_email":{
            "nome": fake.first_name(),
            "lastname": fake.last_name(),
            "email": "faker&hotmail.com",
            "password": "pwd1234",
        },
        "login": {
            "nome": "Luna",
            "lastname":"Abrantes",
            "email": "luna-beatriz@hotmail.com",
            "password": "pwd1234",
        },
        "be_geek":{
            "nome": "Kim",
            "lastname":"Dotcom",
            "email": "kim@dotcom.br",
            "password": "pwd1234", 
            "geek_profile":{
                "whats": "11954333311",
                "desc":"Seu computador esta lento tenho solucoes otimas para melhorar seu PC como por exemplo retirada do baidu ",
                "printer_repair":"Sim",
                "work":"Remoto",
                "cost":"100"
            }

        },
        "short_description":{
            "nome": "Danilo",
            "lastname":"Ribeiro",
            "email": "danilo@hotmail.com.br",
            "password": "pwd1234", 
            "geek_profile":{
                "whats": "11954333311",
                "desc":"Formato seu PC",
                "printer_repair":"Não",
                "work":"Remoto",
                "cost":"500"
            }

        },
        "long_description":{
            "nome": "Kim",
            "lastname":"Eziquiel",
            "email": "kim@hotmail.com.br",
            "password": "pwd1234", 
            "geek_profile":{
                "whats": "11954433333",
                "desc":"Sou especialista em concertar Sistemas operacionais, impressoras, telefones, fax, faço formatação de todos os sistemas operacionais e melhor ainda consigo fazer tudo remotamente e em tempo recorde para todos os serviços descritos acima faço rapidamenteeeee",
                "printer_repair":"Não",
                "work":"Remoto",
                "cost":"500"
            }

        },
        "empty_description":{
            "nome": "Jo",
            "lastname":"Ribeiro",
            "email": "Jo@hotmail.com.br",
            "password": "pwd1234", 
            "geek_profile":{
                "whats": "11956787654",
                "desc":"",
                "printer_repair":"Não",
                "work":"Remoto",
                "cost":"50"
            }

        }
        

    }

    return  data[target]







