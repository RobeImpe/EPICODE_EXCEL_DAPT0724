-- Scrivi una query per verificare che il campo ProductKey nella tabella DimProduct sia una chiave primaria. 
-- Quali considerazioni/ragionamenti è necessario che tu faccia?

-- primo esempio
SHOW INDEXES FROM dimproduct;

-- secondo esempio
SELECT COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'dimproduct'
  AND CONSTRAINT_NAME = 'PRIMARY'
  AND TABLE_SCHEMA = 'AdventureWorksDW';
  
  select
  ProductKey
  from
  dimproduct
  group by
  ProductKey
  having
  count(*)>1;
  
  
  
  -- Scrivi una query per verificare che la combinazione dei campi SalesOrderNumber e SalesOrderLineNumber sia una PK.
 
	-- primo esempio
       SHOW INDEXES FROM factresellersales;
  
  -- secondo esempio
	  SELECT COLUMN_NAME
	  FROM information_schema.KEY_COLUMN_USAGE
	  WHERE TABLE_NAME = 'factresellersales'
      AND CONSTRAINT_NAME = 'PRIMARY'
      AND TABLE_SCHEMA = 'AdventureWorksDW';
      
      -- esercizio lezione
      select
      SalesOrderNumber
      ,SalesOrderLineNumber
      from
      factresellersales
      group by 
       SalesOrderNumber
      ,SalesOrderLineNumber
      having
      count(*)>1;
      

-- Conta il numero transazioni SalesOrderLineNumber) realizzate ogni giorno a partire dal 1 Gennaio 2020.
     -- ricerca colonna all'interno del database
SELECT TABLE_NAME, COLUMN_NAME
FROM information_schema.COLUMNS
WHERE COLUMN_NAME = 'SalesOrderLineNumber'
  AND TABLE_SCHEMA = 'AdventureWorksDW';

    -- conteggio linee
select
SalesOrderLineNumber
,count(SalesOrderLineNumber)
from
factresellersales
;

   -- risoluzione esercizio
SELECT 
   OrderDate AS Data, 
    COUNT(SalesOrderLineNumber) AS n°ordini
FROM 
  factresellersales
WHERE 
    OrderDate >= '2020-01-01'
GROUP BY 
   OrderDate
;

-- Calcola il fatturato totale FactResellerSales.SalesAmount), la quantità totale venduta FactResellerSales.OrderQuantity) 
-- e il prezzo medio di vendita FactResellerSales.UnitPrice) per prodotto DimProduct) 
-- a partire dal 1 Gennaio 2020. Il result set deve esporre pertanto il nome del prodotto, il fatturato totale, 
-- la quantità totale venduta e il prezzo medio di vendita. I campi in output devono essere parlanti!

 
    SELECT
EnglishProductCategoryName as NomeCategoria,
sum(SalesAmount) as fatturatototale, 
sum(OrderQuantity) as quantitatotale

FROM
	factresellersales f
    
INNER JOIN
	dimproduct p
ON
	f.ProductKey = p.ProductKey
INNER JOIN
	dimproductsubcategory s
ON
	p.ProductSubcategorykey = s.ProductSubcategoryKey
INNER JOIN
	dimproductcategory c
ON
	s.ProductCategoryKey = c.ProductCategoryKey
    WHERE 
    OrderDate >= '2020-01-01'
GROUP BY
	c.EnglishProductCategoryName;
    
    
   -- Calcola il fatturato totale per area città DimGeography.City) realizzato a partire dal 1 Gennaio 2020. 
   -- Il result set deve esporre lʼelenco delle città con fatturato realizzato superiore a 60K.
   
   SELECT
   GeographyKey
   ,DG.SalesTerritoryKey
   ,City as Città
   ,F.SalesAmount AS FATTURATO
   ,OrderDate
   FROM
   dimgeography as DG
   inner join
   factresellersales AS F
   ON 
   DG.SalesTerritoryKey=F.SalesTerritoryKey
   WHERE 
   SalesAmount> 6000
 AND 
 OrderDate>= '2020-01-01' 
 
   ;
   
   
   
   