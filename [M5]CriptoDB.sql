-- Criar a tabela Criptomoedas
CREATE TABLE Moedas (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100)
);

-- Criar a tabela DadosCriptomoedas com a coluna ID permitindo valores duplicados
CREATE TABLE Dados_Transacoes (
    ID INT,
    Data DATE,
    Abertura FLOAT,
    Alta FLOAT,
    Baixa FLOAT,
    Fechamento FLOAT,
    Volume FLOAT,
    MarketCap FLOAT,
    FOREIGN KEY (ID) REFERENCES Moedas(ID)
);

CREATE TABLE Dados_Transacoes30 (
    ID INT,
    Data DATE,
    Abertura FLOAT,
    Alta FLOAT,
    Baixa FLOAT,
    Fechamento FLOAT,
    Volume FLOAT,
    MarketCap FLOAT,
    FOREIGN KEY (ID) REFERENCES Moedas(ID)
);



BULK INSERT Moedas
FROM 'C:\Users\cassi\OneDrive\Documentos\ResiliaSenac\tb_nomes.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

BULK INSERT Dados_Transacoes
FROM 'C:\Users\cassi\OneDrive\Documentos\ResiliaSenac\CriptoDB.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

BULK INSERT Dados_Transacoes30
FROM 'C:\Users\cassi\OneDrive\Documentos\ResiliaSenac\CriptoDB30.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);






SELECT * FROM Moedas
SELECT * FROM Dados_Transacoes
SELECT * FROM Dados_Transacoes30

