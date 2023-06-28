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

    SELECT DISTINCT DC.Moeda,
       DC.DataInicial,
       DC.DataFinal,
       ROUND(DI.Fechamento, 3) AS ValorInicial,
       ROUND(DF.Fechamento, 3) AS ValorFinal,
       CASE
           WHEN DF.Fechamento > DI.Fechamento THEN 'Aumento'
           WHEN DF.Fechamento < DI.Fechamento THEN 'Queda'
           ELSE 'Estável'
       END AS Tendencia
FROM (
    SELECT Moeda, MIN(Data) AS DataInicial, MAX(Data) AS DataFinal
    FROM DadosCriptomoeda
    GROUP BY Moeda
) AS DC
JOIN DadosCriptomoeda AS DI ON DI.Moeda = DC.Moeda AND DI.Data = DC.DataInicial
JOIN DadosCriptomoeda AS DF ON DF.Moeda = DC.Moeda AND DF.Data = DC.DataFinal;
