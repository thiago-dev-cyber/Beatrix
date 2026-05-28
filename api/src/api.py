from models.clientes import *
from api.src.database.conexao import DataBase

db = DataBase("schemas/teste.db")

with db.get_connection() as conn:
    criar_cliente(conn, "1", "Peter Parker", "11111111111", "thiagof@tutamail.com", "15996608317")
