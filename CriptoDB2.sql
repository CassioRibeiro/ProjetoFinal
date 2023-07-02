CREATE TABLE DadosQualitativos(

	Moeda NVARCHAR(100),
    Data DATE,

    
);
ALTER TABLE DadosQualitativos
DROP COLUMN Abertura, Alta, Baixa, Fechamento, Volume, MarketCap;
DROP TABLE DadosQualitativos

BULK INSERT DadosQualitativos
FROM 'C:\Users\diego\Downloads\CriptoDB.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);

SELECT * FROM DadosQualitativos;



CREATE TABLE DadosQuantitativos (
   
    Abertura FLOAT,
    Baixa FLOAT,
    Alta FLOAT,
    Fechamento FLOAT,
    Volume FLOAT,
    MarketCap FLOAT
);


BULK INSERT DadosQuantitativos
FROM 'C:\Users\diego\Downloads\CriptoDB.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);

SELECT * FROM DadosQuantitativos