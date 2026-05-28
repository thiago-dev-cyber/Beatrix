def adicionar_cliente(conn, id:str, nome_completo:str, cpf:str, email:str, celular:str):
    """Insere um cliente no banco de dados"""
    cursor = conn.cursor()

    sql = """
    INSERT INTO Clientes (
        id,
        nome_completo,
        cpf,
        email,
        celular
    )
    VALUES (?, ?, ?, ?, ?)    
    """

    try:
        
        cursor.execute(
            sql,
            (
                id,
                nome_completo,
                cpf,
                email,
                celular
            )
        )   

        conn.commit()

    except Exception as err:
        print(f"Erro: {err}")
        conn.rollback()


def adicionar_endereco():
    pass