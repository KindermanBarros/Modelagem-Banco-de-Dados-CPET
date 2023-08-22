-- Tabela para armazenar os modelos de carros
CREATE TABLE Modelos (
    modelo_id INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ano INT NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    valor_diaria DECIMAL(10, 2) NOT NULL
);

-- Tabela para armazenar informações dos clientes
CREATE TABLE Clientes (
    cliente_id INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);

-- Tabela para armazenar informações sobre os aluguéis
CREATE TABLE Alugueis (
    aluguel_id INTEGER PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    modelo_id INTEGER NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    FOREIGN KEY (modelo_id) REFERENCES Modelos(modelo_id)
);