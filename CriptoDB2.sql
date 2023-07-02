CREATE TABLE DadosQualitativos(

    Moeda NVARCHAR(100),
    Data DATE,

    
);


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
