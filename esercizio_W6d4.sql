-- Esponi lʼanagrafica dei prodotti indicando per ciascun prodotto 
-- anche la sua sottocategoria DimProduct, DimProductSubcategory)
-- ok
SELECT
ProductKey
,EnglishProductName
,EnglishProductSubcategoryName
FROM 
dimproduct as p
INNER JOIN
dimproductsubcategory as subcat
on
p.ProductSubcategoryKey=subcat.ProductSubcategoryKey;

-- Esponi lʼanagrafica dei prodotti indicando per ciascun prodotto la sua 
-- sottocategoria e la sua categoria 
-- (DimProduct, DimProductSubcategory, DimProductCategory).
-- ok

SELECT
ProductKey
,EnglishProductName
,EnglishProductSubcategoryName
,EnglishProductName
FROM 
dimproduct as prod
INNER JOIN
dimproductsubcategory as subcat
on
prod.ProductSubcategoryKey=subcat.ProductSubcategoryKey
inner join
dimproductcategory as cat
on 
cat.ProductCategoryKey=subcat.ProductCategoryKey;

-- Esponi lʼelenco dei soli prodotti venduti DimProduct, FactResellerSales)
-- ok

select distinct
prod.ProductKey
,EnglishProductName
,color
,FinishedGoodsFlag
from
dimproduct as prod
inner join
factresellersales as sales
on
prod.ProductKey=sales.ProductKey;

-- Esponi lʼelenco dei prodotti non venduti (considera 
-- i soli prodotti finiti cioè quelli per i quali 
-- il campo FinishedGoodsFlag è uguale a 1
-- ok
select distinct
prod.ProductKey
,EnglishProductName
from
dimproduct as prod
left join
factresellersales as sales
on
prod.ProductKey=sales.ProductKey
where prod.FinishedGoodsFlag=1
and
sales.ProductKey is null;

-- Esponi lʼelenco delle transazioni di vendita FactResellerSales)
--  indicando anche il nome del prodotto venduto DimProduct)
-- ok
select
prod.ProductKey
,prod.EnglishProductName
,SalesOrderNumber
,SalesOrderLineNumber
,OrderDate
,UnitPrice
,OrderQuantity
,TotalProductCost
from
dimproduct as prod
right join
factresellersales as sales
on
prod.ProductKey=sales.ProductKey;

-- Esponi lʼelenco delle transazioni 
-- di vendita indicando la categoria di appartenenza di ciascun prodotto venduto.

select
prod.ProductKey
,prod.EnglishProductName
,EnglishProductCategoryName
,SalesOrderNumber
,SalesOrderLineNumber
,OrderDate
,UnitPrice
,OrderQuantity
,TotalProductCost
from
dimproduct as prod
right join
factresellersales as sales
on
prod.ProductKey=sales.ProductKey
INNER JOIN
dimproductsubcategory as subcat
on
subcat.ProductSubcategoryKey=prod.ProductSubcategoryKey
inner join
dimproductcategory as cat
on
cat.ProductCategoryKey=subcat.ProductCategoryKey
;

-- Esplora la tabella DimReseller.
select
*
from 
dimreseller;

 --  Esponi in output lʼelenco dei reseller indicando, per ciascun reseller, anche la sua area geografica
 
SELECT
ResellerKey
,ResellerName
,BusinessType
,City
,StateProvinceName
,EnglishCountryRegionName
from 
dimreseller as res
inner join
dimgeography as geo
on
res.GeographyKey= geo.GeographyKey;

-- Esponi lʼelenco delle transazioni di vendita. 
-- Il result set deve esporre i campi: 
-- SalesOrderNumber, SalesOrderLineNumber, OrderDate, UnitPrice, Quantity, TotalProductCost. 
-- Il result set deve anche indicare il nome del prodotto, 
-- il nome della categoria del prodotto, 
-- il nome del reseller e lʼarea geografica.

SELECT
	SalesOrderNumber
    , SalesOrderLineNumber
    , OrderDate
    , UnitPrice
    , OrderQuantity
    , TotalProductCost
    , prod.ProductKey
    , prod.EnglishProductName
  	, res.ResellerKey
    , ResellerName
    , BusinessType
    , City
    , StateProvinceName
    , EnglishCountryRegionName
FROM
	dimproduct AS prod
RIGHT JOIN
	factresellersales AS sales
ON
	prod.ProductKey = sales.ProductKey
INNER JOIN 
	dimproductsubcategory AS subcat
ON
	prod.ProductSubcategoryKey = subcat.ProductSubcategoryKey
INNER JOIN
	dimproductcategory AS cat
ON
	subcat.ProductCategoryKey = cat.ProductCategoryKey
INNER JOIN 
	dimreseller AS res
    ON
	sales.ResellerKey= res.ResellerKey
LEFT JOIN
	dimgeography AS GEO
ON
	res.GeographyKey = GEO.GeographyKey
;


