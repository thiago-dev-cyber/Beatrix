import sqlite3

class DataBase:
    """Gerencia a conexão com o banco de dados."""
    def __init__(self, path):
        self._path = path


    def iniciar_conexao(self):
        """Fornece uma conexão com o banco de dados SQLITE3"""
        return sqlite3.connect(self._path)

