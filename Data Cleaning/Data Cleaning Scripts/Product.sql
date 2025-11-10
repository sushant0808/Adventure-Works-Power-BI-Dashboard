
create view vw_Product as (
	SELECT 
		ProductKey as 'Product ID',
		ProductSubcategoryKey as 'Product Subcategory ID',
		ProductAlternateKey as 'Product SKU',
		EnglishProductName as 'Product Name',
		ModelName as 'Model Name',
		EnglishDescription as 'Product Description',
		Color as 'Product Color',
		Style as 'Product Style',
		StandardCost as 'Product Cost',
		ListPrice as 'Product Price'
	  FROM [AdventureWorksDW2022].[dbo].[DimProduct]
)