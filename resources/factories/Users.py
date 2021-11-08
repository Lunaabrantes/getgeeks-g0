from faker import Faker 
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed


def factory_user(): 
    user = {
        "nome": fake.first_name(),
        "lastname": fake.last_name(),
        "email": fake.free_email(),
        "password": "pwd1234",
    }
    return  user


def factory_wrong_email():

    fisrt_name = fake.first_name()

    user = {
         "nome": fake.first_name(),
        "lastname": fake.last_name(),
        "email": fisrt_name.lower() + '&gmail.com',
        "password": "pwd1234",
    }
    return user

def factory_user_login(): 
    user = {
        "nome": "Luna",
        "lastname":"Abrantes",
        "email": "luna-beatriz@hotmail.com",
        "password": "pwd1234",
    }
    return  user