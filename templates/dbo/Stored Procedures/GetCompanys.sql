CREATE PROCEDURE [dbo].[GetCompanys]
	@name NVARCHAR(50)
AS
	SELECT * 
	FROM dbo.Companies 
	WHERE [Name] = @name
	print 'test'
	print 'newMessage'