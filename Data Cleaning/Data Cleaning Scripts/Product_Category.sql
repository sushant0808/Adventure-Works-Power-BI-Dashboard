
create view vw_Product_Category as (
	SELECT ProductCategoryKey as 'Product Category ID',
		EnglishProductCategoryName as 'Category Name'
	  FROM [AdventureWorksDW2022].[dbo].[DimProductCategory]
)