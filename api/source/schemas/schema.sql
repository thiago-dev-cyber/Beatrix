-- Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    id TEXT PRIMARY KEY,
    nome_completo TEXT NOT NULL,
    cpf TEXT NOT NULL,
    email TEXT,
    celular TEXT
);

-- Endereço Cliente
CREATE TABLE IF NOT EXISTS EnderecoClientes (
    id TEXT PRIMARY KEY,
    cliente_id TEXT NOT NULL,
    cep TEXT,
    rua TEXT,
    bairro TEXT,
    estado TEXT,
    numero TEXT,
    complemento TEXT,

    FOREIGN KEY(cliente_id)
        REFERENCES Clientes(id)
);

-- Tecnicos
CREATE TABLE IF NOT EXISTS Tecnicos (
    id TEXT PRIMARY KEY,
    nome_completo TEXT NOT NULL,
    cpf TEXT NOT NULL,
    email TEXT,
    celular TEXT
);

-- Equipamentos
CREATE TABLE IF NOT EXISTS Equipamento (
    id TEXT PRIMARY KEY,
    cliente_id TEXT NOT NULL,
    tipo TEXT,
    marca TEXT,
    modelo TEXT,
    n_serial TEXT,

    FOREIGN KEY(cliente_id)
        REFERENCES Clientes(id)
);


-- Processadores
CREATE TABLE IF NOT EXISTS Processador (
    id TEXT PRIMARY KEY,
    equipamento_id TEXT NOT NULL,
    marca TEXT,
    modelo TEXT,
    observacao TEXT,

    FOREIGN KEY(equipamento_id)
        REFERENCES Equipamento(id)
);

-- Memorias
CREATE TABLE IF NOT EXISTS Memoria (
    id TEXT PRIMARY KEY,
    equipamento_id TEXT NOT NULL,
    marca TEXT,
    tipo TEXT,
    capacidade_gb INT,
    quantidade INT,
    observacao TEXT,

    FOREIGN KEY(equipamento_id)
        REFERENCES Equipamento(id)
);

-- Drives
CREATE TABLE IF NOT EXISTS Armazenamento (
    id TEXT PRIMARY KEY,
    equipamento_id TEXT NOT NULL,
    marca TEXT,
    tipo TEXT,
    capacidade_gb INT,
    quantidade INT,
    observacao TEXT,

    FOREIGN KEY(equipamento_id)
        REFERENCES Equipamento(id)
);

-- OS 
CREATE TABLE IF NOT EXISTS OrdemDeServico (
    id TEXT PRIMARY KEY,
    cliente_id TEXT,
    tecnico_id TEXT,
    equipamento_id TEXT,

    FOREIGN KEY (cliente_id)
        REFERENCES Clientes(id)
    
    FOREIGN KEY (tecnico_id)
        REFERENCES Tecnicos(id)

    FOREIGN KEY (equipamento_id)
        REFERENCES Equipamento(id)
)