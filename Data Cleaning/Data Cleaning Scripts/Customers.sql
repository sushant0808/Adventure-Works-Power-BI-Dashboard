
create view vw_Customer as (
	select 
	CustomerKey as 'Customer ID',
	c.GeographyKey as 'Geography ID',
	FirstName as 'First Name',
	LastName as 'Last Name',
	BirthDate as 'Birth Date',
	YEAR(BirthDate) as 'Birth Year',
	MaritalStatus as 'Marital Status',
	case
		when Gender = 'M' then 'Male'
		else 'Female'
	end as 'Gender',
	EmailAddress as 'Email Address',
	YearlyIncome as 'Annual Income',
	TotalChildren as 'Total Children',
	EnglishEducation as 'Education Level',
	EnglishOccupation as 'Occupation',
	case 
		when HouseOwnerFlag = 1 then 'Yes'
		else 'No'
	end as 'Home Owner',
	CONCAT(FirstName,' ',LastName) as 'Full Name',
	case 
		when TotalChildren > 0 then 'Yes'
		else 'No'
	end as 'Is Parent?',
	g.City -- Joined Customer CIty from Geaography Table
	from [AdventureWorksDW2022].[dbo].DimCustomer as c
	left join [AdventureWorksDW2022].[dbo].DimGeography as g
	on c.GeographyKey = g.GeographyKey
)