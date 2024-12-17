
-- punto 02
Select*
from
dimproduct;

-- punto 03 
Select
ProductKey
,ProductAlternateKey
,EnglishProductName as nome_prodotto
,Color
,StandardCost
,FinishedGoodsFlag as completato
from
dimproduct;

-- punto 04 
Select
ProductKey
,ProductAlternateKey
,EnglishProductName as nome_prodotto
,Color
,StandardCost
,FinishedGoodsFlag as completato
from
dimproduct
where FinishedGoodsFlag = '1';

-- punto 05
select
ProductAlternateKey
,ProductKey
,EnglishProductName
,StandardCost
,ListPrice
from
dimproduct
where ProductAlternateKey like 'FR%' 
or
ProductAlternateKey like'BK%';

-- punto 1.2
select
ProductAlternateKey
,ProductKey
,EnglishProductName
,StandardCost
,ListPrice
,ListPrice-StandardCost AS MARKUP
from
dimproduct
where ProductAlternateKey like 'FR%' 
or
ProductAlternateKey like'BK%';

-- punto 2.2
select
ProductAlternateKey
,ProductKey
,EnglishProductName
,StandardCost
,ListPrice
,ListPrice-StandardCost AS MARKUP
from
dimproduct
where ListPrice between 1000 and 2000 
and FinishedGoodsFlag = 1;

-- punto 3.2
select
*
from
dimemployee;

-- punto 4.2
select
EmployeeKey
,FirstName
,LastName
,Title
,EmailAddress
,SalesPersonFlag 
,DepartmentName

from
dimemployee
where SalesPersonFlag =1;

-- punto 5.2
select
SalesOrderNumber
,SalesOrderLineNumber
,OrderDate
,ProductKey
,ResellerKey
,OrderQuantity
,UnitPrice
from
factresellersales
where ProductKey in (597,598,477,214)
and OrderDate >= 2020-01-01
;
    

