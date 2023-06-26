-- Criar a tabela para armazenar os dados do CSV
CREATE TABLE DadosCriptomoeda (
    Moeda NVARCHAR(100),
    Data DATE,
    Abertura FLOAT,
    Alta FLOAT,
    Baixa FLOAT,
    Fechamento FLOAT,
    Volume FLOAT,
    MarketCap FLOAT
);
GO

-- Importar os dados do CSV para a tabela
BULK INSERT DadosCriptomoeda
FROM 'C:\Users\Douglas Klem\Desktop\SENAC\SENAC-Resilia-FAD\Módulos\Módulo 5\Projeto em Grupo\Database\CriptoDB.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2, -- Ignorar a primeira linha (cabeçalho) do CSV
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
GO

SELECT * FROM DadosCriptomoeda