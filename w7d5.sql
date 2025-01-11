-- Implementa una vista denominata Product al fine di creare unʼanagrafica (dimensione) prodotto completa.
-- La vista, se interrogata o utilizzata come sorgente dati, deve esporre il nome prodotto, 
-- il nome della sottocategoria associata e il nome della categoria associata.

create view
Product
As
select
ProductKey
,p.EnglishProductName as NomeProdotto
,d.EnglishProductCategoryName
,s.EnglishProductSubcategoryName as Sottocategoria

from
dimproduct as P
inner join
dimproductsubcategory as s
on
p.ProductSubcategoryKey=s.ProductSubcategoryKey
inner join
dimproductcategory as d
on
d.ProductCategoryKey=d.ProductCategoryKey;

-- Implementa una vista denominata Reseller al fine di creare unʼanagrafica (dimensione) reseller completa. 
-- La vista, se interrogata o utilizzata come sorgente dati, deve esporre il nome del reseller, il nome della città e il nome della regione.

Create view 
Reseller
as
select
ResellerName
,City
,EnglishCountryRegionName

from
dimreseller as R
inner join
dimgeography as G
ON
R.GeographyKey=G.GeographyKey;

-- Crea una vista denominata Sales che deve restituire la data dellʼordine, il codice documento, la riga di corpo del documento, 
-- la quantità venduta, lʼimporto totale e il profitto.

CREATE VIEW 
	sales 
AS 
SELECT 
frs.SalesOrderNumber,
frs.SalesOrderLineNumber,
frs.OrderDate,
frs.ProductKey,
frs.ResellerKey,
frs.OrderQuantity,
frs.UnitPrice,
frs.TotalProductCost,
frs.SalesAmount,
case when TotalProductCost is null then frs.SalesAmount - frs.OrderQuantity *pr.StandardCost
        else SalesAmount - TotalProductCost end as Markup_corretto
FROM 
factresellersales AS frs
inner join 
dimproduct as pr 
on frs.ProductKey=pr.ProductKey
;




