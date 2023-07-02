-- CRIAÇÃO DO BANCO DE DADOS
--------------------------------------------------------------------------------------------------------------------

-- Criando a tabela para armazenar os dados do CSV
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

-- Importando os dados do CSV para a tabela
BULK INSERT DadosCriptomoeda
FROM 'C:\Users\Douglas Klem\Desktop\SENAC\SENAC-Resilia-FAD\Módulos\Módulo 5\Projeto em Grupo\Database\CriptoDB.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2, -- Ignorar a primeira linha (cabeçalho) do CSV
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
GO

-- CONSULTAS AO BANCO DE DADOS
--------------------------------------------------------------------------------------------------------------------
SELECT * FROM DadosCriptomoeda -- visualização do database

-- 1. Comportamento dos valores de todas as criptomoedas: houve tendência de queda ou de aumento?
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

-- 2. Valores médios para todas as criptomoedas
SELECT Moeda, ROUND(AVG(Fechamento), 3) AS ValorMedio
FROM DadosCriptomoeda
GROUP BY Moeda;

-- 3. Anos com maiores quedas e valorizações
SELECT
    YEAR(Data) AS Ano,
    CONCAT(CAST(MAX(((Fechamento - Abertura) / Abertura) * 100) AS DECIMAL(18, 2)), '%') AS MaiorValorizacao,
    CONCAT(CAST(MIN(((Fechamento - Abertura) / Abertura) * 100) AS DECIMAL(18, 2)), '%') AS MaiorQueda
FROM DadosCriptomoeda
GROUP BY YEAR(Data)
HAVING COUNT(DISTINCT Moeda) > 1
ORDER BY Ano;

-- 4. Tendência de aumento ou queda dos valores pelo dia da semana
SELECT
    DATENAME(WEEKDAY, Data) AS DiaSemana,
    CAST(AVG(Fechamento) AS DECIMAL(18, 2)) AS ValorMedio,
    CAST(((MAX(Fechamento) - MIN(Fechamento)) / MIN(Fechamento)) * 100 AS VARCHAR(20)) + '%' AS Variacao
FROM DadosCriptomoeda
GROUP BY DATENAME(WEEKDAY, Data)
ORDER BY DATENAME(WEEKDAY, Data);

-- 5. Moedas que se mostraram mais e menos interessantes em relação à valorização pela análise da série histórica
SELECT Moeda, (Fechamento_Final - Fechamento_Inicial) / Fechamento_Inicial * 100 AS Valorizacao
FROM (
    SELECT Moeda, 
           MIN(Fechamento) AS Fechamento_Inicial, 
           MAX(Fechamento) AS Fechamento_Final
    FROM DadosCriptomoeda
    GROUP BY Moeda
) AS Subquery
ORDER BY Valorizacao DESC;

SELECT Moeda, (Fechamento_Final - Fechamento_Inicial) / Fechamento_Inicial * 100 AS Valorizacao
FROM (
    SELECT Moeda, 
           MIN(Fechamento) AS Fechamento_Inicial, 
           MAX(Fechamento) AS Fechamento_Final
    FROM DadosCriptomoeda
    GROUP BY Moeda
) AS Subquery
ORDER BY Valorizacao ASC;

-- 6. Correlação entre os valores para todas as criptomoedas
SELECT
    C1.Moeda AS Moeda1,
    C2.Moeda AS Moeda2,
    (SUM(C1.Fechamento * C2.Fechamento) - (SUM(C1.Fechamento) * SUM(C2.Fechamento)) / COUNT(*)) / 
    (SQRT((SUM(C1.Fechamento * C1.Fechamento) - (SUM(C1.Fechamento) * SUM(C1.Fechamento)) / COUNT(*))) * 
    SQRT((SUM(C2.Fechamento * C2.Fechamento) - (SUM(C2.Fechamento) * SUM(C2.Fechamento)) / COUNT(*)))) AS Correlacao
FROM DadosCriptomoeda C1
JOIN DadosCriptomoeda C2 ON C1.Moeda <> C2.Moeda
GROUP BY C1.Moeda, C2.Moeda;

--------------------------------------------------------------------------------------------------------------------
