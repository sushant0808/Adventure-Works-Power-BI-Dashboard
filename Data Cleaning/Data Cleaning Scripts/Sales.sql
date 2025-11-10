
create view vw_Sales as (
	SELECT 
		OrderDate as 'Order Date',
		DueDate as 'Due Date',
		ShipDate as 'Ship Date',
		SalesOrderNumber as 'Order Number',
		ProductKey as 'Product ID',
		CustomerKey as 'Customer ID',
		SalesTerritoryKey as 'Territory ID',
		SalesOrderLineNumber as 'Order Line Item',
		OrderQuantity as 'Order Quantity',
		ProductStandardCost as 'Product Cost',
		SalesAmount as 'Retail Price'
	  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
)


