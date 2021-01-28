CREATE FUNCTION [dbo].[GetPhonesByPrice]
(
	@price int
)
RETURNS @returntable TABLE
(
	Id int,
	[Name] nvarchar(50),
	Price int,
	[Desc] nvarchar(50),
	CompanyId int
)

AS
BEGIN
	INSERT @returntable
	SELECT * From dbo.Phones where Price < @price
	RETURN
END