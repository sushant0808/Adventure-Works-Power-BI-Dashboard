
create view vw_Product_Subcategory as (
	SELECT ProductSubcategoryKey as 'Product Subcategory ID',
		EnglishProductSubcategoryName as 'Product Subcategory Name',
		ProductCategoryKey as 'Product Category ID'
	  FROM [AdventureWorksDW2022].[dbo].[DimProductSubcategory]
)