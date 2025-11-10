
Create view vw_Territory as (
	SELECT 
		SalesTerritoryKey as 'Territory ID',
		SalesTerritoryRegion as Region,
		SalesTerritoryCountry as Country,
		SalesTerritoryGroup as Continent
	  FROM [AdventureWorksDW2022].[dbo].[DimSalesTerritory]
	  where SalesTerritoryCountry != 'NA'
)
